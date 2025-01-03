package property_rules_postgres

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
	"property-svc/repos/patient_views_repo"
	"property-svc/repos/task_views_repo"
	"property-svc/repos/views_repo"
)

type Projection struct {
	*custom.CustomProjection
	db               hwdb.DBTX
	taskViewsRepo    *task_views_repo.Queries
	patientViewsRepo *patient_views_repo.Queries
	viewsRepo        *views_repo.Queries
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
		taskViewsRepo: task_views_repo.New(hwdb.GetDB()),
		viewsRepo:     views_repo.New(hwdb.GetDB()),
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

func (p *Projection) onPropertyRuleCreated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload eventsV1.PropertyRuleCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	if payload.RuleID == uuid.Nil {
		return errs.ErrMissingRuleID, hwutil.PtrTo(esdb.NackActionSkip)
	}

	tx, rollback, err := hwdb.BeginTx(p.db, ctx)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}
	defer rollback()

	// Create Rule
	viewsQuery := p.viewsRepo.WithTx(tx)

	err = viewsQuery.CreateRule(ctx, payload.RuleID)
	if err != nil {
		log.Error().Err(err).Msg("could not create view rule")
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	// Decide on matchers
	switch matchers := payload.Matchers.(type) {
	case models.TaskPropertyMatchers:
		taskViewsQuery := p.taskViewsRepo.WithTx(tx)
		err = taskViewsQuery.CreateTaskRule(ctx, task_views_repo.CreateTaskRuleParams{
			RuleID: payload.RuleID,
			WardID: matchers.WardID,
			TaskID: matchers.TaskID,
		})
		if err != nil {
			log.Error().Err(err).Msg("could not create task rule")
			return fmt.Errorf("could not create patient rule: %w", err), hwutil.PtrTo(esdb.NackActionRetry)
		}
	case models.PatientPropertyMatchers:
		patientViewsQuery := p.patientViewsRepo.WithTx(tx)
		err = patientViewsQuery.CreatePatientRule(ctx, patient_views_repo.CreatePatientRuleParams{
			RuleID:    payload.RuleID,
			WardID:    matchers.WardID,
			PatientID: matchers.PatientID,
		})
		if err != nil {
			log.Error().Err(err).Msg("could not create patient rule")
			return fmt.Errorf("could not create patient rule: %w", err), hwutil.PtrTo(esdb.NackActionRetry)
		}
	default:
		return UnexpectedMatchersTypeError{typ: payload.Matchers}, hwutil.PtrTo(esdb.NackActionSkip)
	}

	// handle (dont)alwaysInclude logic
	mapper := func(dontAlwaysInclude bool) func(uuid.UUID) views_repo.AddToAlwaysIncludeParams {
		return func(propertyId uuid.UUID) views_repo.AddToAlwaysIncludeParams {
			return views_repo.AddToAlwaysIncludeParams{
				RuleID:            payload.RuleID,
				PropertyID:        propertyId,
				DontAlwaysInclude: dontAlwaysInclude,
			}
		}
	}

	_, err = viewsQuery.AddToAlwaysInclude(ctx, hwutil.Map(payload.AlwaysInclude, mapper(false)))
	if err != nil {
		log.Error().Err(err).Msg("could not insert always include list")
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	_, err = viewsQuery.AddToAlwaysInclude(ctx, hwutil.Map(payload.DontAlwaysInclude, mapper(true)))
	if err != nil {
		log.Error().Err(err).Msg("could not insert dont always include list")
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	err = tx.Commit(ctx)
	if err != nil {
		log.Error().Err(err).Msg("could not commit")
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}
	return nil, nil
}

func (p *Projection) onPropertyRuleListsUpdated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload eventsV1.PropertyRuleListsUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionSkip)
	}

	tx, rollback, err := hwdb.BeginTx(p.db, ctx)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
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

	mapper := func(dontAlwaysInclude bool) func(uuid.UUID) views_repo.AddToAlwaysIncludeParams {
		return func(propertyId uuid.UUID) views_repo.AddToAlwaysIncludeParams {
			return views_repo.AddToAlwaysIncludeParams{
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
	err = viewsQuery.DeleteFromAlwaysInclude(ctx, views_repo.DeleteFromAlwaysIncludeParams{
		RuleID: payload.RuleID,
		PropertyIds: hwutil.Map(toAppend, func(p views_repo.AddToAlwaysIncludeParams) uuid.UUID {
			return p.PropertyID
		}),
	})
	if err != nil {
		log.Error().Err(err).Msg("failed to clean up before appending to dont always include list")
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	// now, add the new items
	_, err = viewsQuery.AddToAlwaysInclude(ctx, toAppend)
	if err != nil {
		log.Error().Err(err).Msg("failed to append to lists")
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	// finally, remove things from the lists
	// we can not merge this with above queries, as we might have to remove things we just added
	err = viewsQuery.DeleteFromAlwaysInclude(ctx, views_repo.DeleteFromAlwaysIncludeParams{
		RuleID:      payload.RuleID,
		PropertyIds: append(payload.RemoveFromAlwaysInclude, payload.RemoveFromDontAlwaysInclude...),
	})
	if err != nil {
		log.Error().Err(err).Msg("failed to delete from always include list")
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	err = tx.Commit(ctx)
	if err != nil {
		log.Error().Err(err).Msg("could not commit")
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}
