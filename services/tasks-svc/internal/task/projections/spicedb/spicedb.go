package spicedb

import (
	"common"
	"context"
	"fmt"
	"github.com/EventStore/EventStore-Client-Go/esdb"
	"github.com/google/uuid"
	"hwauthz"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	eventsV1 "tasks-svc/internal/task/events/v1"
	taskEventsV1 "tasks-svc/internal/task/events/v1"
)

type Projection struct {
	*custom.CustomProjection
	authz hwauthz.AuthZ
}

func NewSpiceDBProjection(es *esdb.Client, authz hwauthz.AuthZ, serviceName string) *Projection {
	subscriptionGroupName := fmt.Sprintf("%s-spicedb-projection", serviceName)
	p := &Projection{
		CustomProjection: custom.NewCustomProjection(es, subscriptionGroupName),
		authz:            authz,
	}
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	p.RegisterEventListener(taskEventsV1.TaskCreated, p.onTaskCreated)
	p.RegisterEventListener(taskEventsV1.TaskUnassigned, p.onTaskUnassigned)
}

func (p *Projection) onTaskCreated(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	var payload eventsV1.TaskCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err, esdb.Nack_Retry
	}

	taskID, err := uuid.Parse(payload.ID)
	if err != nil {
		return err, esdb.Nack_Park
	}

	patientID, err := uuid.Parse(payload.PatientID)
	if err != nil {
		return err, esdb.Nack_Park
	}

	userID, err := uuid.Parse("18159713-5d4e-4ad5-94ad-fbb6bb147984")
	if err != nil {
		return err, esdb.Nack_Park
	}

	if _, err = p.authz.Write(ctx,
		hwauthz.NewRelation("task", taskID.String(), "assignee", "user", userID.String()),
		hwauthz.NewRelation("task", taskID.String(), "patient", "patient", patientID.String()),
	); err != nil {
		// Retry on failure
		return nil, esdb.Nack_Retry
	}

	return nil, esdb.Nack_Unknown
}

func (p *Projection) onTaskUnassigned(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	var payload eventsV1.TaskUnassignedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err, esdb.Nack_Retry
	}

	taskID := evt.AggregateID

	userID, err := common.GetUserID(ctx)
	if err != nil {
		return err, esdb.Nack_Park
	}

	if _, err = p.authz.Write(ctx,
		hwauthz.NewRelation("task", taskID.String(), "assignee", "user", userID.String()),
	); err != nil {
		// Retry on failure
		return nil, esdb.Nack_Retry
	}

	return nil, esdb.Nack_Unknown
}
