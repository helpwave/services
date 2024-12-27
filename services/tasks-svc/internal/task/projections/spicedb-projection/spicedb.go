package spicedbprojection

import (
	"context"
	"fmt"
	"hwauthz"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	"hwutil"

	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"

	patientPerm "tasks-svc/internal/patient/perm"
	taskEventsV1 "tasks-svc/internal/task/events/v1"
	"tasks-svc/internal/task/perm"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"

	"tasks-svc/internal/task/aggregate"
)

type Projection struct {
	*custom.CustomProjection
	authz hwauthz.AuthZ
}

func NewSpiceDBProjection(es *esdb.Client, authz hwauthz.AuthZ, serviceName string) *Projection {
	subscriptionGroupName := serviceName + "-task-spicedb-projection"
	p := &Projection{
		CustomProjection: custom.NewCustomProjection(
			es,
			subscriptionGroupName,
			&[]string{aggregate.TaskAggregateType + "-"},
		),
		authz: authz,
	}
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	p.RegisterEventListener(taskEventsV1.TaskCreated, p.onTaskCreated)
	p.RegisterEventListener(taskEventsV1.TaskDeleted, p.onTaskDeleted)
}

func (p *Projection) onTaskCreated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.TaskCreatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	taskID, err := uuid.Parse(payload.ID)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	patientID, err := uuid.Parse(payload.PatientID)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	task := perm.Task(taskID)
	patient := patientPerm.Patient(patientID)

	relationship := hwauthz.NewRelationship(patient, perm.TaskPatient, task)

	_, err = p.authz.Create(relationship).Commit(ctx)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry),
			fmt.Errorf("onTaskCreated: could not write spicedb relationship: %w", err)
	}

	return nil, nil
}

func (p *Projection) onTaskDeleted(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	if err := p.authz.DeleteObject(ctx, perm.Task(evt.AggregateID)); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry),
			fmt.Errorf("could not delete task from spicedb: %w", err)
	}
	return nil, nil
}
