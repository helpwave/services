package hwes

import (
	"common"
	"context"
	"encoding/json"
	"fmt"
	"github.com/EventStore/EventStore-Client-Go/esdb"
	"github.com/google/uuid"
	"github.com/rs/zerolog"
	"strings"
	"telemetry"
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
	UserID        *uuid.UUID
}

type metadata struct {
	// CommitterId represents some sort of optional identity that is directly responsible for this event
	CommitterID string `json:"committer_id"`
}

func NewEvent(aggregate Aggregate, eventType string) Event {
	return Event{
		EventID:       uuid.New(),
		EventType:     eventType,
		AggregateID:   aggregate.GetID(),
		AggregateType: aggregate.GetType(),
		Timestamp:     time.Now().UTC(),
		UserID:        nil,
	}
}

// NewEventWithUser will call hwes.NewEvent() and injects the UserID afterward into the event
func NewEventWithUser(ctx context.Context, aggregate Aggregate, eventType string) (Event, error) {
	event, err := InjectUserIDInEventFromContext(ctx, NewEvent(aggregate, eventType))
	if err != nil {
		return Event{}, err
	}
	return event, nil
}

// NewEventWithData will call hwes.NewEvent() with the passed aggregate and eventType
// to marshall the data to json via hwes.Event.SetJsonData().
func NewEventWithData(aggregate Aggregate, eventType string, data interface{}) (Event, error) {
	event := NewEvent(aggregate, eventType)
	if err := event.SetJsonData(&data); err != nil {
		return Event{}, err
	}
	return event, nil
}

// NewEventWithUserAndData will call hwes.NewEventWithData() and injects the UserID afterward into the event
func NewEventWithUserAndData(ctx context.Context, aggregate Aggregate, eventType string, data interface{}) (Event, error) {
	event, err := NewEventWithData(aggregate, eventType, data)
	if err != nil {
		return Event{}, err
	}

	event, err = InjectUserIDInEventFromContext(ctx, event)
	if err != nil {
		return Event{}, err
	}

	return event, err
}

// InjectUserIDInEventFromContext injects the UserID from the passed context via common.GetUserID().
// If no UserID was injected, prior to this function call, an error will be returned.
// Make sure to inject the UserID via a Middleware in the API layer.
func InjectUserIDInEventFromContext(ctx context.Context, event Event) (Event, error) {
	ctx, span, _ := telemetry.StartSpan(ctx, "hwes.EventWithUserID")
	defer span.End()

	userID, err := common.GetUserID(ctx)
	if err != nil {
		return Event{}, err
	}
	event.UserID = &userID

	// Just to make sure we are actually dealing with a valid UUID
	if _, err := uuid.Parse(event.UserID.String()); err != nil {
		return Event{}, err
	}

	telemetry.SetSpanStr(ctx, "userID", event.UserID.String())
	return event, nil
}

// resolveAggregateIDAndTypeFromStreamID extracts the aggregateType and aggregateID of a given streamID
// See aggregate.GetTypeID
//
// Example:
//
// StreamID:		task-d9027be3-d00f-4eec-b50e-5f489df20433
// AggregateType: 	task
// AggregateID: 	d9027be3-d00f-4eec-b50e-5f489df20433
func resolveAggregateIDAndTypeFromStreamID(streamID string) (aggregateType AggregateType, aggregateID uuid.UUID, err error) {
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

	return
}

// NewEventFromRecordedEvent is a helper function for EventStore.
// This function transforms esdb.RecordedEvent to hwes.Event.
// We expect that the StreamID of the aggregate is in the format of "[aggregateType]-[aggregateID]".
func NewEventFromRecordedEvent(esdbEvent *esdb.RecordedEvent) (Event, error) {
	id, err := uuid.Parse(esdbEvent.EventID.String())
	if err != nil {
		return Event{}, err
	}

	aggregateType, aggregateID, err := resolveAggregateIDAndTypeFromStreamID(esdbEvent.StreamID)
	if err != nil {
		return Event{}, err
	}

	md := metadata{}
	if err := json.Unmarshal(esdbEvent.UserMetadata, &md); err != nil {
		return Event{}, err
	}

	event := Event{
		EventID:       id,
		EventType:     esdbEvent.EventType,
		AggregateID:   aggregateID,
		AggregateType: aggregateType,
		Data:          esdbEvent.Data,
		Timestamp:     esdbEvent.CreatedDate,
		Version:       esdbEvent.EventNumber,
	}

	eventCommitterID, err := uuid.Parse(md.CommitterID)
	if err == nil {
		event.UserID = &eventCommitterID
	}

	return event, nil
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

func (e *Event) ToEventData() (esdb.EventData, error) {
	md := metadata{}
	if e.UserID != nil {
		md.CommitterID = e.UserID.String()
	}

	mdBytes, err := json.Marshal(md)
	if err != nil {
		return esdb.EventData{}, err
	}

	return esdb.EventData{
		EventType:   e.EventType,
		ContentType: esdb.JsonContentType,
		Data:        e.Data,
		Metadata:    mdBytes,
	}, nil
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

// GetZerologDict to enrich some logs
//
// Example:
//
// zerolog.Ctx(ctx).Debug().Dict("event", event.GetZerologDict()).Msg("process event")
func (e *Event) GetZerologDict() *zerolog.Event {
	dict := zerolog.Dict().
		Str("eventId", e.EventID.String()).
		Str("eventType", e.EventType).
		Uint64("eventVersion", e.Version)

	if e.UserID != nil {
		dict.Str("userID", e.UserID.String())
	}

	return dict
}
