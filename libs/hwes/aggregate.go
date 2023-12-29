package hwes

import (
	"errors"
	"fmt"
	"github.com/google/uuid"
	"github.com/rs/zerolog/log"
)

// When is a per aggregate defined function that
// executes event handlers based on evt.EventType
//
// Example:
//
//	func (a *TaskAggregate) When(evt hwes.Event) error {
//		switch evt.EventType {
//		case eventsV1.TaskCreated:
//			return a.onTaskCreated(evt)
//		case eventsV1.TaskUnassigned:
//			return a.onTaskUnassigned(evt)
//		default:
//			return fmt.Errorf("event type '%s' is invalid", evt.EventType)
//		}
//	}
type When interface {
	When(evt Event) error
}

type when func(evt Event) error

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
	Load(events []Event) error
	Apply(event Event) error
	RaiseEvent(event Event) error
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

// NewAggregateBase gets called by an aggregate specific implementation
// that provides details about the aggregate type, id and "When"-Implementation
//
// Example:
//
//	func NewTaskAggregate(id uuid.UUID) *TaskAggregate {
//		aggregate := &TaskAggregate{Task: models.NewTask()}
//		aggregate.AggregateBase = hwes.NewAggregateBase(TaskAggregateType, id, aggregate.When)
//		aggregate.Task.ID = id
//		return aggregate
//	}
func NewAggregateBase(atype AggregateType, id uuid.UUID, when when) *AggregateBase {
	if when == nil {
		return nil
	}

	whenWithLogger := func(event Event) error {
		log.Debug().
			Str("aggregateID", event.GetAggregateID().String()).
			Str("aggregateType", string(event.GetAggregateType())).
			Str("eventType", event.EventType).
			Int64("version", event.GetVersion()).
			Msg("raise event")
		return when(event)
	}

	return &AggregateBase{
		id:      id,
		version: -1, // -1 indicates a new stream for EventStoreDB
		atype:   atype,
		when:    whenWithLogger,

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

// Load applies events to an aggregate by utilizing the "When"-Function
// Currently not in use. Could be helpful for testing.
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

// Apply applies events to an aggregate by utilizing the "When"-Function
// and appends it as an uncommitted one to be later persisted by an aggregate store.
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

// RaiseEvent should be called after all events are loaded though an aggregate store.
// The passed event gets applied to an aggregate by utilizing the "When"-Function.
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
