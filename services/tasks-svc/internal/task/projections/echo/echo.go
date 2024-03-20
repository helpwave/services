package echo

import (
	"context"
	"fmt"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	zlog "github.com/rs/zerolog/log"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	taskEventsV1 "tasks-svc/internal/task/events/v1"
)

type Projection struct {
	*custom.CustomProjection
}

func NewProjection(es *esdb.Client, serviceName string) *Projection {
	subscriptionGroupName := fmt.Sprintf("%s-echo-projection", serviceName)
	p := &Projection{custom.NewCustomProjection(es, subscriptionGroupName)}
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	p.RegisterEventListener(taskEventsV1.TaskCreated, p.onTaskCreated)
}

func (p *Projection) onTaskCreated(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.TaskCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionRetry
	}

	log.Info().Str("taskID", payload.ID).Msg("task created, emitted from echo projection")
	// This empty projection is an example and fully indented to be empty and will get overridden soon
	return nil, esdb.NackActionUnknown
}
