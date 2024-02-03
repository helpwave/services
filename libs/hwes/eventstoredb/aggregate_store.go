package eventstoredb

import (
	"context"
	"errors"
	"github.com/EventStore/EventStore-Client-Go/esdb"
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

// getExpectedRevisionByReadTEST implements a strategy for our getExpectedRevision strategy pattern.
// This function resolves the version by returning the version of the last event in
// the event stream of EventStore of our aggregate.
// NOT FOR PRODUCTION
//
// nolint:unused
func (a *AggregateStore) getExpectedRevisionByReadTEST(ctx context.Context, aggregate hwes.Aggregate) (esdb.ExpectedRevision, error) {
	readOpts := esdb.ReadStreamOptions{Direction: esdb.Backwards, From: esdb.End{}}
	stream, err := a.es.ReadStream(
		ctx,
		aggregate.GetTypeID(),
		readOpts,
		1,
	)
	if err != nil {
		return nil, err
	}
	defer stream.Close()

	lastEvent, err := stream.Recv()
	if err != nil {
		return nil, err
	}

	return esdb.Revision(lastEvent.OriginalEvent().EventNumber), nil
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

func (a *AggregateStore) doSave(ctx context.Context, aggregate hwes.Aggregate, getExpectedRevision getExpectedRevision) error {
	if len(aggregate.GetUncommittedEvents()) == 0 {
		return nil
	}

	eventsData := hwutil.Map(aggregate.GetUncommittedEvents(), func(event hwes.Event) esdb.EventData {
		return event.ToEventData()
	})

	// If AppliedEvents are empty, we imply that this entity was not loaded from an event store and therefore non-existing.
	if len(aggregate.GetAppliedEvents()) == 0 {
		// Create aggregate stream
		expectedRevision := esdb.NoStream{}

		_, err := a.es.AppendToStream(
			ctx,
			aggregate.GetTypeID(),
			esdb.AppendToStreamOptions{ExpectedRevision: expectedRevision},
			eventsData...,
		)
		if err != nil {
			return err
		}

		return nil
	}

	// We resolve the expectedRevision by the passed strategy of the caller
	expectedRevision, err := getExpectedRevision(ctx, aggregate)
	if err != nil {
		return err
	}

	appendOpts := esdb.AppendToStreamOptions{ExpectedRevision: expectedRevision}
	_, err = a.es.AppendToStream(
		ctx,
		aggregate.GetTypeID(),
		appendOpts,
		eventsData...,
	)
	if err != nil {
		return err
	}

	aggregate.ClearUncommittedEvents()
	return nil
}

// Implements AggregateStore interface

func (a *AggregateStore) Load(ctx context.Context, aggregate hwes.Aggregate) error {
	stream, err := a.es.ReadStream(ctx, aggregate.GetTypeID(), esdb.ReadStreamOptions{}, math.MaxUint64) // MaxUint64 for "all" events
	if err != nil {
		return err
	}
	defer stream.Close()

	for {
		esdbEvent, err := stream.Recv()
		if errors.Is(err, io.EOF) {
			// exit condition for for-loop
			break
		} else if err != nil {
			return err
		}

		event, err := hwes.NewEventFromRecordedEvent(esdbEvent.Event)
		if err != nil {
			return err
		}

		if err := aggregate.Progress(event); err != nil {
			return err
		}
	}

	return nil
}

func (a *AggregateStore) Save(ctx context.Context, aggregate hwes.Aggregate) error {
	// We can switch out the getExpectedRevision strategy for testing optimistic concurrency.
	// It is not intended to switch the strategy in production.
	// To ensure consistency and correctly applied events during another read,
	// getExpectedRevisionByPreviousRead is the prefered method for production use.
	return a.doSave(ctx, aggregate, a.getExpectedRevisionByPreviousRead)
}

func (a *AggregateStore) Exists(ctx context.Context, aggregate hwes.Aggregate) (bool, error) {
	readOpts := esdb.ReadStreamOptions{Direction: esdb.Backwards, From: esdb.Revision(1)}
	stream, err := a.es.ReadStream(ctx, aggregate.GetTypeID(), readOpts, 1)
	if err != nil {
		if errors.Is(err, esdb.ErrStreamNotFound) {
			return false, nil
		} else {
			return false, err
		}
	}
	defer stream.Close()

	_, err = stream.Recv()
	if err != nil {
		if errors.Is(err, esdb.ErrStreamNotFound) {
			return false, nil
		} else {
			return false, err
		}
	}

	return true, nil
}
