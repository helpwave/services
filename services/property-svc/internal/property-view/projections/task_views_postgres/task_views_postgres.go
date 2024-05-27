package task_views_postgres

import (
	"context"
	"errors"
	"fmt"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	zlog "github.com/rs/zerolog/log"
	"hwdb"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	"hwutil"
	"property-svc/internal/property-view/aggregate"
	eventsV1 "property-svc/internal/property-view/events/v1"
	"property-svc/internal/property-view/models"
	"property-svc/repos/task_views_repo"
	"property-svc/repos/views_repo"
	"slices"
)

type Projection struct {
	*custom.CustomProjection
	db            hwdb.DBTX
	taskViewsRepo *task_views_repo.Queries
	viewsRepo     *views_repo.Queries
}

func NewProjection(es custom.EventStoreClient, serviceName string) *Projection {
	subscriptionGroupName := fmt.Sprintf("%s-task-views-postgres-projection", serviceName)
	p := &Projection{
		CustomProjection: custom.NewCustomProjection(es, subscriptionGroupName, &[]string{fmt.Sprintf("%s-", aggregate.PropertyViewRuleAggregateType)}),
		db:               hwdb.GetDB(),
		taskViewsRepo:    task_views_repo.New(hwdb.GetDB()),
		viewsRepo:        views_repo.New(hwdb.GetDB()),
	}
	p.initEventListeners()
	return p
}
func (p *Projection) initEventListeners() {
	p.RegisterEventListener(eventsV1.PropertyRuleCreated, p.onPropertyRuleCreated)
	p.RegisterEventListener(eventsV1.PropertyRuleListsUpdated, p.onPropertyRuleListsUpdated)
}

func (p *Projection) onPropertyRuleCreated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload eventsV1.PropertyRuleCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	log.Debug().Any("payload", payload).Msg("payload")

	if payload.RuleId == uuid.Nil {
		return fmt.Errorf("ruleID missing"), hwutil.PtrTo(esdb.NackActionSkip)
	}

	// TODO: add more matchers

	matchers, ok := payload.Matchers.(models.TaskPropertyMatchers)
	if !ok {
		return fmt.Errorf("wrong type, expected TaskPropertyMatcher, got %T", payload.Matchers), hwutil.PtrTo(esdb.NackActionSkip)
	}

	tx, err := p.db.Begin(ctx)
	if err != nil {
		log.Error().Err(err).Msg("failed to begin transaction")
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}
	defer func() {
		err := tx.Rollback(ctx)
		if !errors.Is(err, pgx.ErrTxClosed) {
			log.Error().Err(err).Msg("rollback failed")
		}
	}()

	taskViewsQuery := p.taskViewsRepo.WithTx(tx)
	viewsQuery := p.viewsRepo.WithTx(tx)

	err = viewsQuery.CreateRule(ctx, payload.RuleId)
	if err != nil {
		log.Error().Err(err).Msg("could not create view rule")
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	err = taskViewsQuery.CreateTaskRule(ctx, task_views_repo.CreateTaskRuleParams{
		RuleID: payload.RuleId,
		WardID: matchers.WardID,
		TaskID: matchers.TaskID,
	})
	if err != nil {
		log.Error().Err(err).Msg("could not create task rule")
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	mapper := func(dontAlwaysInclude bool) func(uuid.UUID) views_repo.AddToAlwaysIncludeParams {
		return func(propertyId uuid.UUID) views_repo.AddToAlwaysIncludeParams {
			return views_repo.AddToAlwaysIncludeParams{
				RuleID:            payload.RuleId,
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

	tx, err := p.db.Begin(ctx)
	if err != nil {
		log.Error().Err(err).Msg("failed to begin transaction")
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}
	defer func() {
		err := tx.Rollback(ctx)
		if !errors.Is(err, pgx.ErrTxClosed) {
			log.Error().Err(err).Msg("rollback failed")
		}
	}()

	viewsQuery := p.viewsRepo.WithTx(tx)

	removeFromAlwaysInclude := hwutil.SliceToSet(payload.RemoveFromAlwaysInclude)
	removeFromDontAlwaysInclude := hwutil.SliceToSet(payload.RemoveFromDontAlwaysInclude)

	appendToAlwaysIncludeFiltered := hwutil.Filter(payload.AppendToAlwaysInclude, func(id uuid.UUID) bool {
		// the intent of being in the "don't list" is stronger
		// if an id is in both lists, it gets removed from the "always list"
		_, inRemove := removeFromAlwaysInclude[id]
		_, inRemoveFromDont := removeFromDontAlwaysInclude[id]

		return !inRemove && inRemoveFromDont
	})

	mapper := func(dontAlwaysInclude bool) func(uuid.UUID) views_repo.AddToAlwaysIncludeParams {
		return func(propertyId uuid.UUID) views_repo.AddToAlwaysIncludeParams {
			return views_repo.AddToAlwaysIncludeParams{
				RuleID:            payload.RuleId,
				PropertyID:        propertyId,
				DontAlwaysInclude: dontAlwaysInclude,
			}
		}
	}

	appendToAlwaysInclude := hwutil.Map(appendToAlwaysIncludeFiltered, mapper(false))
	appendToDontAlwaysInclude := hwutil.Map(payload.AppendToDontAlwaysInclude, mapper(true))
	toAppend := slices.Concat(appendToAlwaysInclude, appendToDontAlwaysInclude)

	// before we can add new items, we have to make sure they don't already exist, or the whole copy operation will be canceled
	err = viewsQuery.DeleteFromAlwaysInclude(ctx, views_repo.DeleteFromAlwaysIncludeParams{
		RuleID: payload.RuleId,
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
		RuleID:      payload.RuleId,
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
