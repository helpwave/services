package eventstoredb

import (
	"common"
	"context"
	"errors"
	"fmt"
	"hwutil"
	"io"
	"math"
	"telemetry"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	zlog "github.com/rs/zerolog/log"
	"hwes"
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
func (as *AggregateStore) getExpectedRevisionByPreviousRead(
	_ context.Context,
	a hwes.Aggregate,
) (esdb.ExpectedRevision, error) {
	if len(a.GetAppliedEvents()) == 0 {
		return nil, errors.New("aggregate has no applied events. Consider to persist and load the aggregate first")
	}
	lastAppliedEvent := a.GetAppliedEvents()[len(a.GetAppliedEvents())-1]
	eventNumber := lastAppliedEvent.GetVersion()
	return esdb.Revision(eventNumber), nil
}

func (as *AggregateStore) doSave(
	ctx context.Context,
	a hwes.Aggregate,
	getExpectedRevision getExpectedRevision,
) (common.ConsistencyToken, error) {
	ctx, span, log := telemetry.StartSpan(ctx, "AggregateStore.doSave")
	defer span.End()

	uncommittedEvents := a.GetUncommittedEvents()

	// do nothing, if nothing to commit
	if len(uncommittedEvents) == 0 {
		return common.ConsistencyToken(a.GetVersion()), nil
	}

	eventsData, err := hwutil.MapWithErr(uncommittedEvents, func(event hwes.Event) (esdb.EventData, error) {
		return event.ToEventData()
	})
	if err != nil {
		return 0,
			fmt.Errorf("AggregateStore.doSave: could not convert one uncommitted event to event data: %w", err)
	}

	var expectedRevision esdb.ExpectedRevision

	// If AppliedEvents are empty, we imply that this entity was not loaded from an event store and therefore non-existing.
	if len(a.GetAppliedEvents()) == 0 {
		// Create a stream
		expectedRevision = esdb.NoStream{}
	} else {
		// We resolve the expectedRevision by the passed strategy of the caller
		expectedRevision, err = getExpectedRevision(ctx, a)
		if err != nil {
			return 0, fmt.Errorf("AggregateStore.doSave: could not resolve expected revision: %w", err)
		}
	}

	r, err := as.es.AppendToStream(
		ctx,
		a.GetTypeID(),
		esdb.AppendToStreamOptions{ExpectedRevision: expectedRevision},
		eventsData...,
	)
	if err != nil {
		return 0, fmt.Errorf("AggregateStore.doSave: could not append event to stream: %w", err)
	}

	log.Debug().
		Uint64("nextExpectedVersion", r.NextExpectedVersion).
		Interface("events", eventsData).
		Msg("saved events to stream")

	a.ClearUncommittedEvents()
	return common.ConsistencyToken(r.NextExpectedVersion), nil
}

// Implements AggregateStore interface

func (as *AggregateStore) Load(ctx context.Context, aggregate hwes.Aggregate) error {
	stream, err := as.es.ReadStream(
		ctx,
		aggregate.GetTypeID(),
		esdb.ReadStreamOptions{},
		math.MaxUint64, // MaxUint64 for "all" events
	)
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

	if aggregate.IsDeleted() {
		return errors.New("AggregateStore.Load: aggregate has been marked as deleted")
	}

	return nil
}

func (as *AggregateStore) Save(ctx context.Context, aggregate hwes.Aggregate) (common.ConsistencyToken, error) {
	// We can switch out the getExpectedRevision strategy for testing optimistic concurrency.
	// It is not intended to switch the strategy in production.
	// To ensure consistency and correctly applied events during another read,
	// getExpectedRevisionByPreviousRead is the preferred method for production use.
	return as.doSave(ctx, aggregate, as.getExpectedRevisionByPreviousRead)
}

func (as *AggregateStore) Exists(ctx context.Context, aggregate hwes.Aggregate) (bool, error) {
	log := zlog.Ctx(ctx)
	readOpts := esdb.ReadStreamOptions{Direction: esdb.Backwards, From: esdb.Revision(1)}
	stream, err := as.es.ReadStream(ctx, aggregate.GetTypeID(), readOpts, 1)
	if err != nil {
		var esErr *esdb.Error
		if !errors.As(err, &esErr) {
			log.Warn().Err(err).Msg("non esdb.Error returned")
			return false,
				fmt.Errorf("AggregateStore.Exists: ReadStream failed with unexpected error type: %w", err)
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
