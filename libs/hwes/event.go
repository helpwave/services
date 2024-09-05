package hwes

import (
	"common"
	"context"
	"encoding/json"
	"fmt"
	"hwutil"
	"strings"
	"telemetry"
	"time"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	"github.com/rs/zerolog"
)

type Event struct {
	EventID         uuid.UUID
	EventType       string
	AggregateID     uuid.UUID
	AggregateType   AggregateType
	Data            []byte
	Timestamp       time.Time
	Version         uint64
	CommitterUserID *uuid.UUID
}

type metadata struct {
	// CommitterUserID represents an optional UUID that identifies the user that is directly responsible for this event
	CommitterUserID string `json:"committer_user_id"`
	// The Timestamp represents the time when the event was created. Using the built-in eventstoreDB timestamp is discouraged.
	Timestamp time.Time `json:"timestamp"`
}

// EventOption used to apply configurations in hwes.NewEvent()
type EventOption func(*Event) error

// WithContext applies SetCommitterFromCtx after construction
func WithContext(ctx context.Context) EventOption {
	return func(event *Event) error {
		return event.SetCommitterFromCtx(ctx)
	}
}

// WithData applies SetJsonData after construction
func WithData(data interface{}) EventOption {
	return func(event *Event) error {
		return event.SetJsonData(data)
	}
}

func NewEvent(aggregate Aggregate, eventType string, opts ...EventOption) (Event, error) {
	evt := Event{
		EventID:         uuid.New(),
		EventType:       eventType,
		AggregateID:     aggregate.GetID(),
		AggregateType:   aggregate.GetType(),
		Timestamp:       time.Now().UTC(),
		CommitterUserID: nil,
	}

	for _, opt := range opts {
		if err := opt(&evt); err != nil {
			return Event{}, err
		}
	}

	return evt, nil
}

// resolveAggregateIDAndTypeFromStreamID extracts the aggregateID and aggregateType of a given streamID
// See aggregate.GetTypeID
//
// Example:
//
// StreamID:		task-d9027be3-d00f-4eec-b50e-5f489df20433
// AggregateID: 	d9027be3-d00f-4eec-b50e-5f489df20433
// AggregateType: 	task
func resolveAggregateIDAndTypeFromStreamID(streamID string) (aggregateID uuid.UUID, aggregateType AggregateType, err error) {
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

	aggregateID, aggregateType, err := resolveAggregateIDAndTypeFromStreamID(esdbEvent.StreamID)
	if err != nil {
		return Event{}, err
	}

	md := metadata{}
	if err := json.Unmarshal(esdbEvent.UserMetadata, &md); err != nil {
		return Event{}, err
	}

	event := Event{
		EventID:         id,
		EventType:       esdbEvent.EventType,
		AggregateID:     aggregateID,
		AggregateType:   aggregateType,
		Data:            esdbEvent.Data,
		Timestamp:       md.Timestamp,
		Version:         esdbEvent.EventNumber,
		CommitterUserID: nil,
	}

	eventCommitterUserID, err := uuid.Parse(md.CommitterUserID)
	if err == nil {
		event.CommitterUserID = &eventCommitterUserID
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
	md := metadata{
		Timestamp: e.Timestamp,
	}
	if e.CommitterUserID != nil {
		md.CommitterUserID = e.CommitterUserID.String()
	}

	mdBytes, err := json.Marshal(md)
	if err != nil {
		return esdb.EventData{}, err
	}

	return esdb.EventData{
		EventType:   e.EventType,
		ContentType: esdb.ContentTypeJson,
		Data:        e.Data,
		Metadata:    mdBytes,
	}, nil
}

func (e *Event) SetData(data []byte) *Event {
	e.Data = data
	return e
}

func (e *Event) SetJsonData(data interface{}) error {
	var dataBytes []byte
	var err error

	if jsonable, ok := data.(hwutil.JSONAble); ok {
		dataBytes, err = jsonable.ToJSON()
	} else {
		dataBytes, err = json.Marshal(data)
	}

	if err != nil {
		return err
	}
	e.Data = dataBytes
	return nil
}

func (e *Event) GetJsonData(data interface{}) error {
	if jsonable, ok := data.(hwutil.JSONAble); ok {
		err := jsonable.FromJSON(e.Data)
		return err
	}
	return json.Unmarshal(e.Data, data)
}

// SetCommitterFromCtx injects the UserID from the passed context via common.GetUserID().
// If no UserID was injected, prior to this function call, an error will be returned.
// Make sure to inject the UserID via a Middleware in the API layer.
func (e *Event) SetCommitterFromCtx(ctx context.Context) error {
	ctx, span, _ := telemetry.StartSpan(ctx, "hwes.Event.SetCommitterFromCtx")
	defer span.End()

	userID, err := common.GetUserID(ctx)
	if err != nil {
		return err
	}
	e.CommitterUserID = &userID

	// Just to make sure we are actually dealing with a valid UUID
	if _, err := uuid.Parse(e.CommitterUserID.String()); err != nil {
		return err
	}

	telemetry.SetSpanStr(ctx, "committerUserID", e.CommitterUserID.String())
	return nil
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

	if e.CommitterUserID != nil {
		dict.Str("committerUserID", e.CommitterUserID.String())
	}

	return dict
}
