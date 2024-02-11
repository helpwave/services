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
	Base *custom.CustomProjection
}

func NewProjection(es *esdb.Client) *Projection {
	p := &Projection{}
	p.Base = custom.NewCustomProjection(es)
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	p.Base.
		RegisterEventListener(taskEventsV1.TaskCreated, p.onTaskCreated)
}

func (p *Projection) onTaskCreated(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.TaskCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err, esdb.Nack_Retry
	}

	log.Info().Str("taskID", payload.ID).Msg("task created, emitted from echo projection")
	return nil, esdb.Nack_Unknown
}
