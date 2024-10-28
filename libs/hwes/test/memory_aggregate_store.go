package test

import (
	"common"
	"context"
	"math"
	"testing"

	"github.com/stretchr/testify/assert"
	"hwes"
)

type AggregateStore struct {
	streams map[string][]hwes.Event
}

// NewAggregateStore returns an in-memory Aggregate store
// Very handy for testing
func NewAggregateStore() *AggregateStore {
	return &AggregateStore{streams: make(map[string][]hwes.Event)}
}

func (a *AggregateStore) LoadN(_ context.Context, aggregate hwes.Aggregate, n uint64) error {
	events := a.streams[aggregate.GetTypeID()]

	skipUpTo := uint64(0)
	aE := aggregate.GetAppliedEvents()
	if len(aE) != 0 {
		skipUpTo = aE[len(aE)-1].Version + 1
	}

	for i, event := range events {
		if uint64(i) < skipUpTo { //nolint:gosec
			continue
		}

		if uint64(i) >= n { //nolint:gosec
			break
		}
		if err := aggregate.Progress(event); err != nil {
			return err
		}
	}

	return nil
}

func (a *AggregateStore) Load(ctx context.Context, aggregate hwes.Aggregate) error {
	return a.LoadN(ctx, aggregate, math.MaxUint64)
}

func (a *AggregateStore) Save(ctx context.Context, aggregate hwes.Aggregate) (common.ConsistencyToken, error) {
	uncommittedEventsLen := len(aggregate.GetUncommittedEvents())
	if uncommittedEventsLen == 0 {
		return common.ConsistencyToken(aggregate.GetVersion()), nil
	}

	a.streams[aggregate.GetTypeID()] = append(a.streams[aggregate.GetTypeID()], aggregate.GetUncommittedEvents()...)

	aggregate.ClearUncommittedEvents()
	return common.ConsistencyToken(aggregate.GetVersion() + uint64(uncommittedEventsLen)), nil
}

func (a *AggregateStore) Exists(ctx context.Context, aggregate hwes.Aggregate) (bool, error) {
	_, exists := a.streams[aggregate.GetTypeID()]
	return exists, nil
}

func (a *AggregateStore) ExpectToBeEmpty(t *testing.T) bool {
	t.Helper()
	return assert.Empty(t, a.streams)
}

func (a *AggregateStore) ExpectStream(t *testing.T, expectedStream string, expectedFn func([]hwes.Event) bool) bool {
	t.Helper()
	stream, ok := a.streams[expectedStream]
	if !ok {
		t.Errorf("stream %v does not exist on aggregate store", expectedStream)
		return false
	}

	res := expectedFn(stream)
	return assert.Truef(t, res, "stream %v does not meet requirements", expectedStream)
}

// ExpectAnyStream returns true, if at least one stream fulfills the expector function
func (a *AggregateStore) ExpectAnyStream(
	t *testing.T,
	expectedFn func(streamName string, events []hwes.Event) bool,
) bool {
	t.Helper()

	for name, stream := range a.streams {
		if expectedFn(name, stream) {
			return true
		}
	}
	t.Error("no stream fulfills expector function")
	return false
}

func (a *AggregateStore) SetStreams(streams map[string][]hwes.Event) {
	a.streams = streams
}
