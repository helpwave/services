package spicedb

import (
	"context"
	"errors"
	"fmt"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	"hwauthz"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	"hwutil"
	"tasks-svc/internal/task/aggregate"
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
		CustomProjection: custom.NewCustomProjection(es, subscriptionGroupName, &[]string{fmt.Sprintf("%s-", aggregate.TaskAggregateType)}),
		authz:            authz,
	}
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	p.RegisterEventListener(taskEventsV1.TaskCreated, p.onTaskCreated)
	p.RegisterEventListener(taskEventsV1.TaskAssigned, p.onTaskAssigned)
	p.RegisterEventListener(taskEventsV1.TaskUnassigned, p.onTaskUnassigned)
}

func (p *Projection) onTaskCreated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	var payload eventsV1.TaskCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	committerID := evt.CommitterUserID
	if committerID == nil {
		return errors.New("no committerID found"), hwutil.PtrTo(esdb.NackActionRetry)
	}

	taskID, err := uuid.Parse(payload.ID)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	patientID, err := uuid.Parse(payload.PatientID)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	if _, err := p.authz.Write(ctx,
		hwauthz.NewRelation("task", taskID.String(), "assignee", "user", committerID.String()),
		hwauthz.NewRelation("task", taskID.String(), "patient", "patient", patientID.String()),
	); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onTaskAssigned(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	var payload eventsV1.TaskAssignedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	userID, err := uuid.Parse(payload.UserID)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	if _, err := p.authz.Write(ctx,
		hwauthz.NewRelation("task", evt.AggregateID.String(), "assignee", "user", userID.String()),
	); err != nil {
		return nil, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onTaskUnassigned(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	var payload eventsV1.TaskUnassignedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	userID, err := uuid.Parse(payload.UserID)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	if _, err = p.authz.Delete(ctx,
		hwauthz.NewRelation("task", evt.AggregateID.String(), "assignee", "user", userID.String()),
	); err != nil {
		return nil, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}
