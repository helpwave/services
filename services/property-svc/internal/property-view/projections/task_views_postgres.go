package projections

import (
	"context"
	"errors"
	"fmt"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"
	zlog "github.com/rs/zerolog/log"
	"hwdb"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	"property-svc/internal/property-view/aggregate"
	eventsV1 "property-svc/internal/property-view/events/v1"
	"property-svc/internal/property-view/models"
	"property-svc/repos/task_views_repo"
)

type Projection struct {
	*custom.CustomProjection
	db            *pgxpool.Pool
	taskViewsRepo *task_views_repo.Queries
}

func NewProjection(es *esdb.Client, serviceName string) *Projection {
	subscriptionGroupName := fmt.Sprintf("%s-patient-postgres-projection", serviceName)
	p := &Projection{
		CustomProjection: custom.NewCustomProjection(es, subscriptionGroupName, &[]string{fmt.Sprintf("%s-", aggregate.PropertyViewRuleAggregateType)}),
		db:               hwdb.GetDB(),
		taskViewsRepo:    task_views_repo.New(hwdb.GetDB())}
	p.initEventListeners()
	return p
}
func (p *Projection) initEventListeners() {
	p.RegisterEventListener(eventsV1.PropertyRuleCreated, p.onPropertyRuleCreated)
	p.RegisterEventListener(eventsV1.PropertyRuleListsUpdated, p.onPropertyRuleListsUpdated)
}

func (p *Projection) onPropertyRuleCreated(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload eventsV1.PropertyRuleCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionSkip
	}

	if payload.RuleId == uuid.Nil {
		return fmt.Errorf("ruleID missing"), esdb.NackActionSkip
	}

	matchers, ok := payload.Matchers.(models.TaskPropertyMatchers)
	if !ok {
		return fmt.Errorf("wrong type, expected TaskPropertyMatcher, got %T", payload.Matchers), esdb.NackActionSkip
	}

	tx, err := p.db.Begin(ctx)
	if err != nil {
		log.Error().Err(err).Msg("failed to begin transaction")
		return err, esdb.NackActionRetry
	}
	defer func() {
		err := tx.Rollback(ctx)
		if !errors.Is(err, pgx.ErrTxClosed) {
			log.Error().Err(err).Msg("rollback failed")
		}
	}()

	query := p.taskViewsRepo.WithTx(tx)

	err = query.CreateTaskRule(ctx, task_views_repo.CreateTaskRuleParams{
		RuleID: payload.RuleId,
		WardID: matchers.WardID,
		TaskID: matchers.TaskID,
	})
	if err != nil {
		log.Error().Err(err).Msg("could not create task rule")
		return err, esdb.NackActionRetry
	}
	return nil, esdb.NackActionUnknown
}

func (p *Projection) onPropertyRuleListsUpdated(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	// TODO
}
