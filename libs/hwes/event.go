package hwes

import (
	"encoding/json"
	"github.com/EventStore/EventStore-Client-Go/esdb"
	"github.com/google/uuid"
	"github.com/rs/zerolog"
	"strings"
	"time"
)

type Event struct {
	EventID       uuid.UUID
	EventType     string
	AggregateID   uuid.UUID
	AggregateType AggregateType
	Data          []byte
	Timestamp     time.Time
	Version       int64 // TODO: uint64?
}

func NewBaseEvent(aggregate Aggregate, eventType string) Event {
	return Event{
		EventID:       uuid.New(),
		EventType:     eventType,
		AggregateID:   aggregate.GetID(),
		AggregateType: aggregate.GetType(),
		Timestamp:     time.Now().UTC(),
	}
}

func NewBaseEventWithPayload(aggregate Aggregate, eventType string, payload interface{}) (Event, error) {
	baseEvent := NewBaseEvent(aggregate, eventType)
	if err := baseEvent.SetJsonData(&payload); err != nil {
		return Event{}, err
	}
	return baseEvent, nil
}

func resolveAggregateIDFromStreamID(streamID string) (uuid.UUID, error) {
	streamIDParts := strings.SplitN(streamID, "-", 2)

	aggregateIDStr := streamID
	if len(streamIDParts) == 2 {
		aggregateIDStr = streamIDParts[1]
	}

	return uuid.Parse(aggregateIDStr)
}

func NewEventFromRecordedEvent(event *esdb.RecordedEvent) (Event, error) {
	id, err := uuid.Parse(event.EventID.String())
	if err != nil {
		return Event{}, err
	}

	aggregateID, err := resolveAggregateIDFromStreamID(event.StreamID)
	if err != nil {
		return Event{}, err
	}

	return Event{
		EventID:     id,
		EventType:   event.EventType,
		AggregateID: aggregateID,
		Data:        event.Data,
		Timestamp:   event.CreatedDate,
		Version:     int64(event.EventNumber),
	}, nil
}

func (e *Event) GetAggregateID() uuid.UUID {
	return e.AggregateID
}

func (e *Event) SetAggregateType(atype AggregateType) *Event {
	e.AggregateType = atype
	return e
}

func (e *Event) GetAggregateType() AggregateType {
	return e.AggregateType
}

func (e *Event) SetVersion(version int64) *Event {
	e.Version = version
	return e
}

func (e *Event) GetVersion() int64 {
	return e.Version
}

func (e *Event) ToEventData() esdb.EventData {
	return esdb.EventData{
		EventType:   e.EventType,
		ContentType: esdb.JsonContentType,
		Data:        e.Data,
	}
}

func (e *Event) SetData(data []byte) *Event {
	e.Data = data
	return e
}

func (e *Event) SetJsonData(data interface{}) error {
	dataBytes, err := json.Marshal(data)
	if err != nil {
		return err
	}
	e.Data = dataBytes
	return nil
}

func (e *Event) GetJsonData(data interface{}) error {
	return json.Unmarshal(e.Data, data)
}

func (e *Event) Log(l *zerolog.Event) *zerolog.Event {
	return l.
		Str("eventId", e.EventID.String()).
		Str("eventType", e.EventType).
		Int64("version", e.Version)
}
