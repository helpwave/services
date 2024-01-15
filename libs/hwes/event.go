package hwes

import (
	"encoding/json"
	"fmt"
	"github.com/EventStore/EventStore-Client-Go/esdb"
	"github.com/google/uuid"
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
	Version       uint64
}

func NewEventBase(aggregate Aggregate, eventType string) Event {
	return Event{
		EventID:       uuid.New(),
		EventType:     eventType,
		AggregateID:   aggregate.GetID(),
		AggregateType: aggregate.GetType(),
		Timestamp:     time.Now().UTC(),
	}
}

func NewEventBaseWithData(aggregate Aggregate, eventType string, data interface{}) (Event, error) {
	eventBase := NewEventBase(aggregate, eventType)
	if err := eventBase.SetJsonData(&data); err != nil {
		return Event{}, err
	}
	return eventBase, nil
}

// ResolveAggregateIDAndTypeFromStreamID extracts the aggregateType and aggregateID of a given streamID
// See aggregate.GetStreamID
//
// # Example
//
// StreamID:		task-d9027be3-d00f-4eec-b50e-5f489df20433
// AggregateType: 	task
// AggregateID: 	d9027be3-d00f-4eec-b50e-5f489df20433
func ResolveAggregateIDAndTypeFromStreamID(streamID string) (aggregateType AggregateType, aggregateID uuid.UUID, err error) {
	streamIDParts := strings.SplitN(streamID, "-", 2)

	var aggregateTypeStr, aggregateIDStr string

	if len(streamIDParts) == 2 {
		aggregateTypeStr = streamIDParts[0]
		aggregateIDStr = streamIDParts[1]
	} else {
		err = fmt.Errorf("cannot resolve aggregateType and aggregateID from streamID '%s'", streamID)
		return
	}

	aggregateType = AggregateType(aggregateTypeStr)
	if aggregateType == "" {
		err = fmt.Errorf("resolved empty aggregateType from streamID '%s'", streamID)
		return
	}

	aggregateID, err = uuid.Parse(aggregateIDStr)
	if err != nil {
		return
	}

	return
}

// NewEventFromRecordedEvent is a helper function for EventStore.
// This function transforms esdb.RecordedEvent to hwes.Event.
// We expect that the StreamID of the aggregate is in the format of "[aggregateType]-[aggregateID]".
func NewEventFromRecordedEvent(event *esdb.RecordedEvent) (Event, error) {
	id, err := uuid.Parse(event.EventID.String())
	if err != nil {
		return Event{}, err
	}

	aggregateType, aggregateID, err := ResolveAggregateIDAndTypeFromStreamID(event.StreamID)
	if err != nil {
		return Event{}, err
	}

	return Event{
		EventID:       id,
		EventType:     event.EventType,
		AggregateID:   aggregateID,
		AggregateType: aggregateType,
		Data:          event.Data,
		Timestamp:     event.CreatedDate,
		Version:       event.EventNumber,
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

func (e *Event) SetVersion(version uint64) *Event {
	e.Version = version
	return e
}

func (e *Event) GetVersion() uint64 {
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
