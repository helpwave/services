package task_spicedb

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

func (p *Projection) onTaskCreated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.TaskCreatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	taskID, err := uuid.Parse(payload.ID)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	patientID, err := uuid.Parse(payload.PatientID)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	task := perm.Task(taskID)
	patient := patientPerm.Patient(patientID)

	relationship := hwauthz.NewRelationship(patient, perm.TaskPatient, task)

	_, err = p.authz.Create(relationship).Commit(ctx)
	if err != nil {
		return fmt.Errorf("onTaskCreated: could not write spicedb relationship: %w", err),
			hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onTaskDeleted(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	if err := p.authz.DeleteObject(ctx, perm.Task(evt.AggregateID)); err != nil {
		return fmt.Errorf("could not delete task from spicedb: %w", err), hwutil.PtrTo(esdb.NackActionRetry)
	}
	return nil, nil
}
