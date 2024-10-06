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
	// identifier of this event
	EventID uuid.UUID
	// constant which can be used to route this event to its handler(s)
	EventType string
	// identifier of the aggregate that this event has an effect on
	AggregateID uuid.UUID
	// type of the aggregate that this event has an effect on
	AggregateType AggregateType
	// payload of the event, must be json
	Data []byte
	// time of event creation
	Timestamp time.Time
	// event's number in its stream
	Version uint64
	// user responsible for this event
	CommitterUserID *uuid.UUID
	// w3c trace context
	TraceParent string
}

type metadata struct {
	// CommitterUserID represents an optional UUID that identifies the user that is directly responsible for this event
	CommitterUserID string `json:"committer_user_id"`
	// w3c trace context
	TraceParent string `json:"trace_parent"`
	// The Timestamp represents the time when the event was created. Using the built-in eventstoreDB timestamp is discouraged.
	Timestamp time.Time `json:"timestamp"`
}

// EventOption used to apply configurations in hwes.NewEvent()
type EventOption func(*Event) error

// WithContext applies SetCommitterFromCtx after construction
func WithContext(ctx context.Context) EventOption {
	return func(event *Event) error {
		event.SetTracingContextFromCtx(ctx)
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

	// TODO: We have to default to empty eventData as the eventstoredb-ui does not allow querying events without data
	var empty struct{}
	if err := evt.SetJsonData(empty); err != nil {
		return Event{}, fmt.Errorf("NewEvent: could not set empty data: %w", err)
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
		return Event{}, fmt.Errorf("NewEventFromRecordedEvent: event id is not a uuid: %w", err)
	}

	aggregateID, aggregateType, err := resolveAggregateIDAndTypeFromStreamID(esdbEvent.StreamID)
	if err != nil {
		return Event{}, fmt.Errorf("NewEventFromRecordedEvent: could not resove AggregateID and type: %w", err)
	}

	md := metadata{}
	if err := json.Unmarshal(esdbEvent.UserMetadata, &md); err != nil {
		return Event{}, fmt.Errorf("NewEventFromRecordedEvent: UserMetadata is not json: %w", err)
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
		TraceParent:     md.TraceParent,
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
		TraceParent: e.TraceParent,
		Timestamp:   e.Timestamp,
	}
	if e.CommitterUserID != nil {
		md.CommitterUserID = e.CommitterUserID.String()
	}

	mdBytes, err := json.Marshal(md)
	if err != nil {
		return esdb.EventData{}, fmt.Errorf("ToEventData: failed to encode md as json: %w", err)
	}

	return esdb.EventData{
		EventID:     e.EventID,
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
		return fmt.Errorf("SetJsonData: %w", err)
	}
	e.Data = dataBytes
	return nil
}

func (e *Event) GetJsonData(data interface{}) error {
	if jsonable, ok := data.(hwutil.JSONAble); ok {
		return jsonable.FromJSON(e.Data)
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
		return nil // don't set a user, if no user is available
	}

	e.CommitterUserID = &userID

	// Just to make sure we are actually dealing with a valid UUID
	if _, err := uuid.Parse(e.CommitterUserID.String()); err != nil {
		return fmt.Errorf("SetCommitterFromCtx: cant parse comitter uid: %w", err)
	}

	telemetry.SetSpanStr(ctx, "committerUserID", e.CommitterUserID.String())
	return nil
}

// SetTracingContextFromCtx propagates the currently active span in the context
func (e *Event) SetTracingContextFromCtx(ctx context.Context) {
	ctx, span, _ := telemetry.StartSpan(ctx, "SetTracingContextFromCtx")
	e.TraceParent = telemetry.TraceParent(ctx)
	span.End()
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
		Uint64("eventVersion", e.Version).
		Str("traceParent", e.TraceParent)

	if e.CommitterUserID != nil {
		dict.Str("committerUserID", e.CommitterUserID.String())
	}

	return dict
}
