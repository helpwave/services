package test

import (
	"context"
	"github.com/stretchr/testify/assert"
	"hwes"
	"testing"
)

type AggregateStore struct {
	streams map[string][]hwes.Event
}

// NewAggregateStore returns an in-memory Aggregate store
// Very handy for testing
func NewAggregateStore() *AggregateStore {
	return &AggregateStore{streams: make(map[string][]hwes.Event)}
}

func (a *AggregateStore) Load(ctx context.Context, aggregate hwes.Aggregate) error {
	events := a.streams[aggregate.GetTypeID()]

	for _, event := range events {
		if err := aggregate.Progress(event); err != nil {
			return err
		}
	}

	return nil
}

func (a *AggregateStore) Save(ctx context.Context, aggregate hwes.Aggregate) error {
	if len(aggregate.GetUncommittedEvents()) == 0 {
		return nil
	}

	a.streams[aggregate.GetTypeID()] = append(a.streams[aggregate.GetTypeID()], aggregate.GetUncommittedEvents()...)

	aggregate.ClearUncommittedEvents()
	return nil
}

func (a *AggregateStore) Exists(ctx context.Context, aggregate hwes.Aggregate) (bool, error) {
	_, exists := a.streams[aggregate.GetTypeID()]
	return exists, nil
}

func (a *AggregateStore) ExpectToBeEmpty(t *testing.T) {
	assert.Empty(t, a.streams)
}
