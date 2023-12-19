package hwes

import (
	"errors"
	"fmt"
	"github.com/google/uuid"
)

type When interface {
	When(evt Event) error
}

type when func(evt Event) error

type Apply interface {
	Apply(event Event) error
}

type Load interface {
	Load(events []Event) error
}

type Aggregate interface {
	When
	AggregateRoot
}

type AggregateRoot interface {
	GetID() uuid.UUID
	GetStreamID() string
	GetType() AggregateType
	GetVersion() int64

	GetAppliedEvents() []Event
	GetUncommittedEvents() []Event
	ClearUncommittedEvents()
	RaiseEvent(event Event) error

	Load
	Apply
}

type AggregateType string

type AggregateBase struct {
	id      uuid.UUID
	atype   AggregateType
	version int64
	when    when

	appliedEvents     []Event
	uncommittedEvents []Event
}

func NewAggregateBase(atype AggregateType, id uuid.UUID, when when) *AggregateBase {
	if when == nil {
		return nil
	}

	return &AggregateBase{
		id:      id,
		version: -1, // -1 indicates a new stream for EventStoreDB
		atype:   atype,
		when:    when,

		appliedEvents:     make([]Event, 0),
		uncommittedEvents: make([]Event, 0),
	}
}

func (a *AggregateBase) GetID() uuid.UUID {
	return a.id
}

func (a *AggregateBase) GetStreamID() string {
	return fmt.Sprintf("%s-%s", a.atype, a.id)
}

func (a *AggregateBase) GetType() AggregateType {
	return a.atype
}

func (a *AggregateBase) GetVersion() int64 {
	return a.version
}

func (a *AggregateBase) GetAppliedEvents() []Event {
	return a.appliedEvents
}

func (a *AggregateBase) GetUncommittedEvents() []Event {
	return a.uncommittedEvents
}

func (a *AggregateBase) ClearUncommittedEvents() {
	a.uncommittedEvents = make([]Event, 0)
}

func (a *AggregateBase) Load(events []Event) error {
	for _, event := range events {
		if event.GetAggregateID() != a.GetID() {
			return errors.New("invalid aggregate for event")
		}

		if err := a.when(event); err != nil {
			return err
		}

		a.appliedEvents = append(a.appliedEvents, event)
		a.version++
	}
	return nil
}

func (a *AggregateBase) Apply(event Event) error {
	if event.GetAggregateID() != a.GetID() {
		return errors.New("invalid aggregate for event")
	}

	event.SetAggregateType(a.GetType()) // TODO: Is this really necessary?

	if err := a.when(event); err != nil {
		return err
	}

	a.version++
	event.SetVersion(a.GetVersion())
	a.uncommittedEvents = append(a.uncommittedEvents, event)
	return nil
}

func (a *AggregateBase) RaiseEvent(event Event) error {
	if event.GetAggregateID() != a.GetID() {
		return errors.New("invalid aggregate for event")
	}

	if event.GetVersion() < a.GetVersion() {
		return errors.New("invalid version")
	}

	event.SetAggregateType(a.GetType()) // TODO: Is this really necessary?

	if err := a.when(event); err != nil {
		return err
	}

	a.appliedEvents = append(a.appliedEvents, event)
	a.version = event.GetVersion()
	return nil
}
