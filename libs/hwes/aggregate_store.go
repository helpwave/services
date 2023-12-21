package hwes

import (
	"context"
	"errors"
	"github.com/EventStore/EventStore-Client-Go/esdb"
	"hwutil"
	"io"
	"math"
)

type AggregateStore interface {
	Load(ctx context.Context, aggregate Aggregate) error
	Save(ctx context.Context, aggregate Aggregate) error
	Exists(ctx context.Context, aggregate Aggregate) (bool, error)
}

type aggregateStore struct {
	es *esdb.Client
}

func NewAggregateStore(es *esdb.Client) *aggregateStore {
	return &aggregateStore{es: es}
}

func (a *aggregateStore) Load(ctx context.Context, aggregate Aggregate) error {
	stream, err := a.es.ReadStream(ctx, aggregate.GetStreamID(), esdb.ReadStreamOptions{}, math.MaxUint64) // MaxUint64 for "all" events
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

		event, err := NewEventFromRecordedEvent(esdbEvent.Event)
		if err != nil {
			return err
		}

		if err := aggregate.RaiseEvent(event); err != nil {
			return err
		}
	}

	return nil
}

func (a *aggregateStore) Save(ctx context.Context, aggregate Aggregate) error {
	if len(aggregate.GetUncommittedEvents()) == 0 {
		return nil
	}

	eventsData := hwutil.Map(aggregate.GetUncommittedEvents(), func(event Event) esdb.EventData {
		return event.ToEventData()
	})

	var expectedRevsion esdb.ExpectedRevision
	if aggregate.GetVersion() == 0 {
		expectedRevsion = esdb.NoStream{}

		_, err := a.es.AppendToStream(
			ctx,
			aggregate.GetStreamID(),
			esdb.AppendToStreamOptions{ExpectedRevision: expectedRevsion},
			eventsData...,
		)
		if err != nil {
			return err
		}

		return nil
	}

	readOpts := esdb.ReadStreamOptions{Direction: esdb.Backwards, From: esdb.End{}}
	stream, err := a.es.ReadStream(
		ctx,
		aggregate.GetStreamID(),
		readOpts,
		1,
	)
	if err != nil {
		return err
	}
	defer stream.Close()

	lastEvent, err := stream.Recv()
	if err != nil {
		return err
	}

	expectedRevsion = esdb.Revision(lastEvent.OriginalEvent().EventNumber)

	appendOpts := esdb.AppendToStreamOptions{ExpectedRevision: expectedRevsion}
	_, err = a.es.AppendToStream(
		ctx,
		aggregate.GetStreamID(),
		appendOpts,
		eventsData...,
	)
	if err != nil {
		return err
	}

	aggregate.ClearUncommittedEvents()
	return nil
}

func (a *aggregateStore) Exists(ctx context.Context, aggregate Aggregate) (bool, error) {
	readOpts := esdb.ReadStreamOptions{Direction: esdb.Backwards, From: esdb.Revision(1)}
	stream, err := a.es.ReadStream(ctx, aggregate.GetStreamID(), readOpts, 1)
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
