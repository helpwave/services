package projections

import (
	"context"
	"errors"
	"fmt"
	"github.com/EventStore/EventStore-Client-Go/esdb"
	"hwes"
	eventsV1 "tasks-svc/internal/task/events/v1"
)

func CustomWhen(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	switch evt.EventType {
	case eventsV1.TaskCreated:
		return onTaskCreated(ctx, evt)
	default:
		return nil, esdb.Nack_Unknown
	}
}

func onTaskCreated(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	var payload eventsV1.TaskCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err, esdb.Nack_Retry
	}

	fmt.Printf("Task with ID '%s' was created!\n", evt.AggregateID)

	return errors.New("asd"), esdb.Nack_Park
}
