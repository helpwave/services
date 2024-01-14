package hwes

import (
	"fmt"
	"github.com/google/uuid"
	"github.com/rs/zerolog/log"
)

type eventHandler func(evt Event) error

type AggregateType string

// Aggregate reflects a concept of Domain-Driven-Design.
// This interface describes the contracts that are used
// by an AggregateStore to persists this aggregate in an
// event-sourcing manner
type Aggregate interface {
	GetID() uuid.UUID
	GetStreamID() string
	GetType() AggregateType
	GetVersion() uint64

	RegisterEventListener(eventType string, eventHandler eventHandler) *AggregateBase
	HandleEvent(event Event) error

	GetAppliedEvents() []Event
	GetUncommittedEvents() []Event
	ClearUncommittedEvents()
	Load(events []Event) error
	Apply(event Event) error
	Progress(event Event) error
}

type AggregateBase struct {
	id      uuid.UUID
	atype   AggregateType
	version uint64

	eventHandlers map[string]eventHandler

	appliedEvents     []Event
	uncommittedEvents []Event
}

// NewAggregateBase must be called by a concrete aggregate during its initialization
// The caller provides the type and id of the aggregate
//
// Example:
//
//	func NewTaskAggregate(id uuid.UUID) *TaskAggregate {
//		aggregate := &TaskAggregate{Task: models.NewTask()}
//		aggregate.AggregateBase = hwes.NewAggregateBase(TaskAggregateType, id)
//		aggregate.Task.ID = id
//
//		aggregate.RegisterEventListener(eventsV1.TaskCreated, a.onTaskCreated)
//
//		return aggregate
//	}
func NewAggregateBase(atype AggregateType, id uuid.UUID) *AggregateBase {
	return &AggregateBase{
		id:      id,
		version: 0,
		atype:   atype,

		eventHandlers: make(map[string]eventHandler, 0),

		appliedEvents:     make([]Event, 0),
		uncommittedEvents: make([]Event, 0),
	}
}

// Implements aggregate interface

func (a *AggregateBase) GetID() uuid.UUID {
	return a.id
}

func (a *AggregateBase) GetStreamID() string {
	return fmt.Sprintf("%s-%s", a.atype, a.id)
}

func (a *AggregateBase) GetType() AggregateType {
	return a.atype
}

func (a *AggregateBase) GetVersion() uint64 {
	return a.version
}

// RegisterEventListener registers the callback function for a specific event type
// If you call RegisterEventListener multiple times for the same eventType, the last eventHandler gets registered.
func (a *AggregateBase) RegisterEventListener(eventType string, eventHandler eventHandler) *AggregateBase {
	_, found := a.eventHandlers[eventType]
	if found {
		log.Warn().
			Str("eventType", eventType).
			Msg("override existing event handler")
	}

	a.eventHandlers[eventType] = eventHandler
	return a
}

// HandleEvent finds and calls the registered event handler
// based on the type of the passed event.
// The executed event handler can modify the in-memory data of the aggregate.
func (a *AggregateBase) HandleEvent(event Event) error {
	log.Debug().
		Str("aggregateID", event.GetAggregateID().String()).
		Str("aggregateType", string(event.GetAggregateType())).
		Str("eventType", event.EventType).
		Uint64("version", event.GetVersion()).
		Msg("handle event")

	eventHandler, found := a.eventHandlers[event.EventType]
	if !found {
		return fmt.Errorf("event type '%s' is invalid", event.EventType)
	}

	if err := eventHandler(event); err != nil {
		return fmt.Errorf("event handler for type '%s' failed: %w", event.EventType, err)
	}

	return nil
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

// Load applies events to an aggregate by utilizing the registered event listeners
// Currently not in use. Could be helpful for testing.
func (a *AggregateBase) Load(events []Event) error {
	for _, event := range events {
		if event.GetAggregateID() != a.GetID() {
			return fmt.Errorf("event applied to aggregate '%s' but was targeted at aggregate '%s'", a.GetID(), event.GetAggregateID())
		}

		if err := a.HandleEvent(event); err != nil {
			return err
		}

		a.appliedEvents = append(a.appliedEvents, event)
		a.version++
	}
	return nil
}

// Apply applies events to an aggregate by utilizing the registered event listeners
// and appends it as an uncommitted event to be later persisted by an aggregate store.
// Apply -> You apply a *new* event to the aggregate that could be persisted
func (a *AggregateBase) Apply(event Event) error {
	if event.GetAggregateID() != a.GetID() {
		return fmt.Errorf("event applied to aggregate '%s' but was targeted at aggregate '%s'", a.GetID(), event.GetAggregateID())
	}

	if err := a.HandleEvent(event); err != nil {
		return err
	}

	a.version++
	event.SetVersion(a.GetVersion())
	a.uncommittedEvents = append(a.uncommittedEvents, event)
	return nil
}

// Progress should be called after all events are loaded though an aggregate store.
// The passed event gets applied to an aggregate by utilizing the registered event listeners.
// Progress -> You progress the state of an aggregate
func (a *AggregateBase) Progress(event Event) error {
	if event.GetAggregateID() != a.GetID() {
		return fmt.Errorf("event applied to aggregate '%s' but was targeted at aggregate '%s'", a.GetID(), event.GetAggregateID())
	}

	if event.GetVersion() < a.GetVersion() {
		return fmt.Errorf("event version of %d is lower then aggregate version of %d", event.GetVersion(), a.GetVersion())
	}

	if err := a.HandleEvent(event); err != nil {
		return err
	}

	a.version = event.GetVersion()
	a.appliedEvents = append(a.appliedEvents, event)
	return nil
}
