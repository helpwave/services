package postgresprojection

import (
	"context"
	"fmt"
	"hwdb"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	"hwutil"
	"slices"

	"property-svc/internal/property-view/errs"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"

	"property-svc/internal/property-view/aggregate"
	eventsV1 "property-svc/internal/property-view/events/v1"
	"property-svc/internal/property-view/models"
	"property-svc/repos/patient-views-repo"
	"property-svc/repos/task-views-repo"
	"property-svc/repos/views-repo"
)

type Projection struct {
	*custom.CustomProjection
	db               hwdb.DBTX
	taskViewsRepo    *taskviewsrepo.Queries
	patientViewsRepo *patientviewsrepo.Queries
	viewsRepo        *viewsrepo.Queries
}

func NewProjection(es custom.EventStoreClient, serviceName string) *Projection {
	subscriptionGroupName := serviceName + "-property-rules-postgres-projection"
	p := &Projection{
		CustomProjection: custom.NewCustomProjection(
			es,
			subscriptionGroupName,
			&[]string{aggregate.PropertyViewRuleAggregateType + "-"},
		),
		db:            hwdb.GetDB(),
		taskViewsRepo: taskviewsrepo.New(hwdb.GetDB()),
		viewsRepo:     viewsrepo.New(hwdb.GetDB()),
	}
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	p.RegisterEventListener(eventsV1.PropertyRuleCreated, p.onPropertyRuleCreated)
	p.RegisterEventListener(eventsV1.PropertyRuleListsUpdated, p.onPropertyRuleListsUpdated)
}

type UnexpectedMatchersTypeError struct {
	typ interface{}
}

func (e UnexpectedMatchersTypeError) Error() string {
	return fmt.Sprintf("unexpected matchers type, got %T", e.typ)
}

func (p *Projection) onPropertyRuleCreated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload eventsV1.PropertyRuleCreatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	if payload.RuleID == uuid.Nil {
		return hwutil.PtrTo(esdb.NackActionSkip), errs.ErrMissingRuleID
	}

	tx, rollback, err := hwdb.BeginTx(p.db, ctx)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}
	defer rollback()

	// Create Rule
	viewsQuery := p.viewsRepo.WithTx(tx)

	err = viewsQuery.CreateRule(ctx, payload.RuleID)
	if err != nil {
		log.Error().Err(err).Msg("could not create view rule")
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	// Decide on matchers
	switch matchers := payload.Matchers.(type) {
	case models.TaskPropertyMatchers:
		taskViewsQuery := p.taskViewsRepo.WithTx(tx)
		err = taskViewsQuery.CreateTaskRule(ctx, taskviewsrepo.CreateTaskRuleParams{
			RuleID: payload.RuleID,
			WardID: matchers.WardID,
			TaskID: matchers.TaskID,
		})
		if err != nil {
			log.Error().Err(err).Msg("could not create task rule")
			return hwutil.PtrTo(esdb.NackActionRetry), fmt.Errorf("could not create patient rule: %w", err)
		}
	case models.PatientPropertyMatchers:
		patientViewsQuery := p.patientViewsRepo.WithTx(tx)
		err = patientViewsQuery.CreatePatientRule(ctx, patientviewsrepo.CreatePatientRuleParams{
			RuleID:    payload.RuleID,
			WardID:    matchers.WardID,
			PatientID: matchers.PatientID,
		})
		if err != nil {
			log.Error().Err(err).Msg("could not create patient rule")
			return hwutil.PtrTo(esdb.NackActionRetry), fmt.Errorf("could not create patient rule: %w", err)
		}
	default:
		return hwutil.PtrTo(esdb.NackActionSkip), UnexpectedMatchersTypeError{typ: payload.Matchers}
	}

	// handle (dont)alwaysInclude logic
	mapper := func(dontAlwaysInclude bool) func(uuid.UUID) viewsrepo.AddToAlwaysIncludeParams {
		return func(propertyId uuid.UUID) viewsrepo.AddToAlwaysIncludeParams {
			return viewsrepo.AddToAlwaysIncludeParams{
				RuleID:            payload.RuleID,
				PropertyID:        propertyId,
				DontAlwaysInclude: dontAlwaysInclude,
			}
		}
	}

	_, err = viewsQuery.AddToAlwaysInclude(ctx, hwutil.Map(payload.AlwaysInclude, mapper(false)))
	if err != nil {
		log.Error().Err(err).Msg("could not insert always include list")
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	_, err = viewsQuery.AddToAlwaysInclude(ctx, hwutil.Map(payload.DontAlwaysInclude, mapper(true)))
	if err != nil {
		log.Error().Err(err).Msg("could not insert dont always include list")
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	err = tx.Commit(ctx)
	if err != nil {
		log.Error().Err(err).Msg("could not commit")
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}
	return nil, nil
}

func (p *Projection) onPropertyRuleListsUpdated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload eventsV1.PropertyRuleListsUpdatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionSkip), err
	}

	tx, rollback, err := hwdb.BeginTx(p.db, ctx)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}
	defer rollback()

	viewsQuery := p.viewsRepo.WithTx(tx)

	removeFromAlwaysInclude := hwutil.SliceToSet(payload.RemoveFromAlwaysInclude)
	removeFromDontAlwaysInclude := hwutil.SliceToSet(payload.RemoveFromDontAlwaysInclude)

	appendToAlwaysIncludeFiltered := hwutil.Filter(payload.AppendToAlwaysInclude, func(_ int, id uuid.UUID) bool {
		// the intent of being in the "don't list" is stronger
		// if an id is in both lists, it gets removed from the "always list"
		_, inRemove := removeFromAlwaysInclude[id]
		_, inRemoveFromDont := removeFromDontAlwaysInclude[id]

		return !inRemove && inRemoveFromDont
	})

	mapper := func(dontAlwaysInclude bool) func(uuid.UUID) viewsrepo.AddToAlwaysIncludeParams {
		return func(propertyId uuid.UUID) viewsrepo.AddToAlwaysIncludeParams {
			return viewsrepo.AddToAlwaysIncludeParams{
				RuleID:            payload.RuleID,
				PropertyID:        propertyId,
				DontAlwaysInclude: dontAlwaysInclude,
			}
		}
	}

	appendToAlwaysInclude := hwutil.Map(appendToAlwaysIncludeFiltered, mapper(false))
	appendToDontAlwaysInclude := hwutil.Map(payload.AppendToDontAlwaysInclude, mapper(true))
	toAppend := slices.Concat(appendToAlwaysInclude, appendToDontAlwaysInclude)

	// before we can add new items, we have to make sure they don't already exist, or the whole copy operation will be
	// canceled
	err = viewsQuery.DeleteFromAlwaysInclude(ctx, viewsrepo.DeleteFromAlwaysIncludeParams{
		RuleID: payload.RuleID,
		PropertyIds: hwutil.Map(toAppend, func(p viewsrepo.AddToAlwaysIncludeParams) uuid.UUID {
			return p.PropertyID
		}),
	})
	if err != nil {
		log.Error().Err(err).Msg("failed to clean up before appending to dont always include list")
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	// now, add the new items
	_, err = viewsQuery.AddToAlwaysInclude(ctx, toAppend)
	if err != nil {
		log.Error().Err(err).Msg("failed to append to lists")
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	// finally, remove things from the lists
	// we can not merge this with above queries, as we might have to remove things we just added
	err = viewsQuery.DeleteFromAlwaysInclude(ctx, viewsrepo.DeleteFromAlwaysIncludeParams{
		RuleID:      payload.RuleID,
		PropertyIds: append(payload.RemoveFromAlwaysInclude, payload.RemoveFromDontAlwaysInclude...),
	})
	if err != nil {
		log.Error().Err(err).Msg("failed to delete from always include list")
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	err = tx.Commit(ctx)
	if err != nil {
		log.Error().Err(err).Msg("could not commit")
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}
