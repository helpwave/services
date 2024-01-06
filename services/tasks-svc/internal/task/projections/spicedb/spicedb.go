package spicedb

import (
	"common"
	"context"
	"github.com/EventStore/EventStore-Client-Go/esdb"
	"github.com/authzed/authzed-go/v1"
	"github.com/google/uuid"
	"hwauthz"
	hwspicedb "hwauthz/spicedb"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	eventsV1 "tasks-svc/internal/task/events/v1"
)

type spiceDBProjection struct {
	Cp    *custom.CustomProjection
	authz hwauthz.AuthZ
}

func NewSpiceDBProjection(es *esdb.Client, sdb *authzed.Client) *spiceDBProjection {
	cp := custom.NewCustomProjection(es)
	return &spiceDBProjection{Cp: cp, authz: hwspicedb.NewSpiceDBAuthZ(sdb)}
}

func (p *spiceDBProjection) When(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	switch evt.EventType {
	case eventsV1.TaskCreated:
		return p.onTaskCreated(ctx, evt)
	case eventsV1.TaskUnassigned:
		return p.onTaskUnassignedEvent(ctx, evt)
	default:
		return nil, esdb.Nack_Unknown
	}
}

func (p *spiceDBProjection) onTaskCreated(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
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

func (p *spiceDBProjection) onTaskUnassignedEvent(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
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
