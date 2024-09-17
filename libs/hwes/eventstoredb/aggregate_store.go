package eventstoredb

import (
	"context"
	"errors"
	"fmt"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	zlog "github.com/rs/zerolog/log"
	"hwes"
	"hwutil"
	"io"
	"math"
)

type AggregateStore struct {
	es *esdb.Client
}

// getExpectedRevision is for our strategy pattern to resolve the expected version
// before a commit to EventStore between the aggregate and EventStore.
type getExpectedRevision = func(ctx context.Context, aggregate hwes.Aggregate) (esdb.ExpectedRevision, error)

func NewAggregateStore(es *esdb.Client) *AggregateStore {
	return &AggregateStore{es: es}
}

// getExpectedRevisionByPreviousRead implements a strategy for our getExpectedRevision strategy pattern.
// This function resolves the version by returning the version of the last applied event of our aggregate.
func (a *AggregateStore) getExpectedRevisionByPreviousRead(ctx context.Context, aggregate hwes.Aggregate) (esdb.ExpectedRevision, error) {
	if len(aggregate.GetAppliedEvents()) <= 0 {
		return nil, errors.New("aggregate has no applied events. Consider to persist and load the aggregate first")
	}
	lastAppliedEvent := aggregate.GetAppliedEvents()[len(aggregate.GetAppliedEvents())-1]
	eventNumber := uint64(lastAppliedEvent.GetVersion())
	return esdb.Revision(eventNumber), nil
}

func (a *AggregateStore) doSave(ctx context.Context, aggregate hwes.Aggregate, getExpectedRevision getExpectedRevision) (uint64, error) {
	if len(aggregate.GetUncommittedEvents()) == 0 {
		return aggregate.GetVersion(), nil
	}

	eventsData, err := hwutil.MapWithErr(aggregate.GetUncommittedEvents(), func(event hwes.Event) (esdb.EventData, error) {
		return event.ToEventData()
	})
	if err != nil {
		return 0, fmt.Errorf("AggregateStore.doSave: could not convert one uncomitted event to event data: %w", err)
	}

	// If AppliedEvents are empty, we imply that this entity was not loaded from an event store and therefore non-existing.
	if len(aggregate.GetAppliedEvents()) == 0 {
		// Create aggregate stream
		expectedRevision := esdb.NoStream{}

		r, err := a.es.AppendToStream(
			ctx,
			aggregate.GetTypeID(),
			esdb.AppendToStreamOptions{ExpectedRevision: expectedRevision},
			eventsData...,
		)
		if err != nil {
			return 0, fmt.Errorf("AggregateStore.doSave: could not append event to stream: %w", err)
		}

		return r.NextExpectedVersion, nil
	}

	// We resolve the expectedRevision by the passed strategy of the caller
	expectedRevision, err := getExpectedRevision(ctx, aggregate)
	if err != nil {
		return 0, fmt.Errorf("AggregateStore.doSave: could not resolve expected revision: %w", err)
	}

	appendOpts := esdb.AppendToStreamOptions{ExpectedRevision: expectedRevision}
	r, err := a.es.AppendToStream(
		ctx,
		aggregate.GetTypeID(),
		appendOpts,
		eventsData...,
	)
	if err != nil {
		return 0, fmt.Errorf("AggregateStore.doSave: could not append event to stream: %w", err)
	}

	aggregate.ClearUncommittedEvents()
	return r.NextExpectedVersion, nil
}

// Implements AggregateStore interface

func (a *AggregateStore) Load(ctx context.Context, aggregate hwes.Aggregate) error {
	stream, err := a.es.ReadStream(ctx, aggregate.GetTypeID(), esdb.ReadStreamOptions{}, math.MaxUint64) // MaxUint64 for "all" events
	if err != nil {
		return fmt.Errorf("AggregateStore.Load: could not open stream: %w", err)
	}
	defer stream.Close()

	for {
		esdbEvent, err := stream.Recv()
		if errors.Is(err, io.EOF) {
			// exit condition for for-loop
			break
		} else if err != nil {
			return fmt.Errorf("AggregateStore.Load: could not read from stream: %w", err)
		}

		event, err := hwes.NewEventFromRecordedEvent(esdbEvent.Event)
		if err != nil {
			return fmt.Errorf("AggregateStore.Load: %w", err)
		}

		if err := aggregate.Progress(event); err != nil {
			return fmt.Errorf("AggregateStore.Load: Progress failed: %w", err)
		}
	}

	return nil
}

func (a *AggregateStore) Save(ctx context.Context, aggregate hwes.Aggregate) (uint64, error) {
	// We can switch out the getExpectedRevision strategy for testing optimistic concurrency.
	// It is not intended to switch the strategy in production.
	// To ensure consistency and correctly applied events during another read,
	// getExpectedRevisionByPreviousRead is the prefered method for production use.
	return a.doSave(ctx, aggregate, a.getExpectedRevisionByPreviousRead)
}

func (a *AggregateStore) Exists(ctx context.Context, aggregate hwes.Aggregate) (bool, error) {
	log := zlog.Ctx(ctx)
	readOpts := esdb.ReadStreamOptions{Direction: esdb.Backwards, From: esdb.Revision(1)}
	stream, err := a.es.ReadStream(ctx, aggregate.GetTypeID(), readOpts, 1)
	if err != nil {
		var esErr *esdb.Error
		if !errors.As(err, &esErr) {
			log.Warn().Err(err).Msg("non esdb.Error returned")
			return false, fmt.Errorf("AggregateStore.Exists: ReadStream failed with unexpected error type: %w", err)
		}
		if esErr.IsErrorCode(esdb.ErrorCodeResourceNotFound) {
			return false, nil
		} else {
			return false, fmt.Errorf("AggregateStore.Exists: ReadStream failed: %w", err)
		}
	}
	defer stream.Close()

	_, err = stream.Recv()
	if err != nil {
		var esErr *esdb.Error
		if !errors.As(err, &esErr) {
			log.Warn().Err(err).Msg("non esdb.Error returned")
			return false, fmt.Errorf("AggregateStore.Exists: Recv failed with unexpected error type: %w", err)
		}
		if esErr.IsErrorCode(esdb.ErrorCodeResourceNotFound) {
			return false, nil
		} else {
			return false, fmt.Errorf("AggregateStore.Exists: Recv failed: %w", err)
		}
	}

	return true, nil
}
