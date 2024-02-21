package echo

import (
	"context"
	"github.com/EventStore/EventStore-Client-Go/esdb"
	zlog "github.com/rs/zerolog/log"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	taskEventsV1 "tasks-svc/internal/task/events/v1"
)

type Projection struct {
	*custom.CustomProjection
}

func NewProjection(es *esdb.Client) *Projection {
	p := &Projection{custom.NewCustomProjection(es)}
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	p.RegisterEventListener(taskEventsV1.TaskCreated, p.onTaskCreated)
}

func (p *Projection) onTaskCreated(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.TaskCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.Nack_Retry
	}

	log.Info().Str("taskID", payload.ID).Msg("task created, emitted from echo projection")
	// This empty projection is an example and fully indented to be empty and will get overridden soon
	return nil, esdb.Nack_Unknown
}
