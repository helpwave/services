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

func (a *AggregateStore) ExpectToBeEmpty(t *testing.T) bool {
	return assert.Empty(t, a.streams)
}

func (a *AggregateStore) ExpectStream(t *testing.T, expectedStream string, expectedFn func([]hwes.Event) bool) bool {
	stream, ok := a.streams[expectedStream]
	if !ok {
		t.Errorf("stream %v does not exist on aggregate store", expectedStream)
		return false
	}

	res := expectedFn(stream)
	return assert.Truef(t, res, "stream %v does not meet requirements", expectedStream)
}

func (a *AggregateStore) ExpectFirstStream(t *testing.T, expectedFn func(streamName string, events []hwes.Event) bool) bool {
	for name, stream := range a.streams {
		return assert.True(t, expectedFn(name, stream), "first stream does not meet requirements")
	}
	return assert.NotEmpty(t, a.streams)
}
