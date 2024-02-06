package test

import (
	"context"
	"hwes"
)

type aggregateStore struct {
	streams map[string][]hwes.Event
}

// NewAggregateStore returns an in-memory Aggregate store
// Very handy for testing
func NewAggregateStore() *aggregateStore {
	return &aggregateStore{streams: make(map[string][]hwes.Event)}
}

func (a *aggregateStore) Load(ctx context.Context, aggregate hwes.Aggregate) error {
	events := a.streams[aggregate.GetTypeID()]

	for _, event := range events {
		if err := aggregate.Progress(event); err != nil {
			return err
		}
	}

	return nil
}

func (a *aggregateStore) Save(ctx context.Context, aggregate hwes.Aggregate) error {
	if len(aggregate.GetUncommittedEvents()) == 0 {
		return nil
	}

	a.streams[aggregate.GetTypeID()] = append(a.streams[aggregate.GetTypeID()], aggregate.GetUncommittedEvents()...)

	aggregate.ClearUncommittedEvents()
	return nil
}

func (a *aggregateStore) Exists(ctx context.Context, aggregate hwes.Aggregate) (bool, error) {
	_, exists := a.streams[aggregate.GetTypeID()]
	return exists, nil
}
