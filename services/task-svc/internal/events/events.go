package events

import (
	"context"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"hwes"
	"task-svc/internal/feature"
)

const (
	BedCreated            = "BED_CREATED_v1"
	BedUpdated            = "BED_UPDATED_v1"
	BedMovedToAnotherRoom = "BED_MOVED_TO_ANOTHER_ROOM_v1"
	BedDeleted            = "BED_DELETED_v1"
	TaskAssigned          = "TASK_ASSIGNED_v1"
	TaskSelfAssigned      = "TASK_SELF_ASSIGNED_v1"
)

type BedCreatedEvent struct {
	Id   string `json:"id"`
	Name string `json:"name"`
}

type BedUpdatedEvent struct {
	Name string `json:"name"`
}

type BedMovedToAnotherRoomEvent struct {
	RoomId string `json:"room_id"`
}

type TaskAssignedEvent struct {
	UserId string `json:"user_id"`
}

type TaskSelfAssignedEvent struct {
	UserId string `json:"user_id"`
}

func NewBedCreatedEvent(bedId uuid.UUID, name string) (hwes.Event, error) {
	eventData := BedCreatedEvent{
		Id:   bedId.String(),
		Name: name,
	}
	event := hwes.NewBaseEvent(BedCreated)
	if err := event.SetJsonData(eventData); err != nil {
		return hwes.Event{}, err
	}
	return event, nil
}

func NewBedUpdatedEvent(name string) (hwes.Event, error) {
	eventData := BedUpdatedEvent{
		Name: name,
	}
	event := hwes.NewBaseEvent(BedUpdated)
	if err := event.SetJsonData(eventData); err != nil {
		return hwes.Event{}, err
	}
	return event, nil
}

func NewBedMovedToAnotherRoomEvent(roomId string) (hwes.Event, error) {
	eventData := BedMovedToAnotherRoomEvent{
		RoomId: roomId,
	}
	event := hwes.NewBaseEvent(BedMovedToAnotherRoom)
	if err := event.SetJsonData(eventData); err != nil {
		return hwes.Event{}, err
	}
	return event, nil
}

func NewBedDeletedEvent() (hwes.Event, error) {
	event := hwes.NewBaseEvent(BedDeleted)
	return event, nil
}

func NewTaskAssignedEvent(userId string) (hwes.Event, error) {
	eventData := TaskAssignedEvent{
		UserId: userId,
	}
	event := hwes.NewBaseEvent(TaskAssigned)
	if err := event.SetJsonData(eventData); err != nil {
		return hwes.Event{}, err
	}
	return event, nil
}

func NewTaskSelfAssignedEvent(userId string) (hwes.Event, error) {
	eventData := TaskSelfAssignedEvent{
		UserId: userId,
	}
	event := hwes.NewBaseEvent(TaskSelfAssigned)
	if err := event.SetJsonData(eventData); err != nil {
		return hwes.Event{}, err
	}
	return event, nil
}

func DispatchBedCreatedEvent(ctx context.Context, bedId uuid.UUID, bedName string) error {
	if !feature.IsEventSourcingEnabled() {
		return nil
	}

	log := zlog.Ctx(ctx)
	event, err := NewBedCreatedEvent(bedId, bedName)
	if err != nil {
		log.Error().
			Err(err).
			Str("event", BedCreated).
			Msg("could not create event")
		return err
	}

	err = hwes.AppendEvents(ctx, bedId.String(), event)
	if err != nil {
		log.Error().
			Err(err).
			Str("event", event.Type).
			Msg("could not dispatch event")
	}
	return err
}

func DispatchBedUpdatedEvent(ctx context.Context, bedId uuid.UUID, bedName string) error {
	if !feature.IsEventSourcingEnabled() {
		return nil
	}

	log := zlog.Ctx(ctx)
	event, err := NewBedUpdatedEvent(bedName)
	if err != nil {
		log.Error().
			Err(err).
			Str("event", BedUpdated).
			Msg("could not create event")
		return err
	}

	err = hwes.AppendEvents(ctx, bedId.String(), event)
	if err != nil {
		log.Error().
			Err(err).
			Str("event", event.Type).
			Msg("could not dispatch event")
	}
	return err
}

func DispatchBedMovedToAnotherRoomEvent(ctx context.Context, bedId uuid.UUID, roomId string) error {
	if !feature.IsEventSourcingEnabled() {
		return nil
	}

	log := zlog.Ctx(ctx)
	event, err := NewBedMovedToAnotherRoomEvent(roomId)
	if err != nil {
		log.Error().
			Err(err).
			Str("event", BedMovedToAnotherRoom).
			Msg("could not create event")
		return err
	}

	err = hwes.AppendEvents(ctx, bedId.String(), event)
	if err != nil {
		log.Error().
			Err(err).
			Str("event", event.Type).
			Msg("could not dispatch event")
	}
	return err
}

func DispatchBedDeletedEvent(ctx context.Context, bedId uuid.UUID) error {
	if !feature.IsEventSourcingEnabled() {
		return nil
	}

	log := zlog.Ctx(ctx)
	event, err := NewBedDeletedEvent()
	if err != nil {
		log.Error().
			Err(err).
			Str("event", BedDeleted).
			Msg("could not create event")
		return err
	}

	err = hwes.AppendEvents(ctx, bedId.String(), event)
	if err != nil {
		log.Error().
			Err(err).
			Str("event", event.Type).
			Msg("could not dispatch event")
	}

	// TODO: Should we tombstone this stream here?
	// return hwes.TombstoneStream(ctx, bedId.String())

	return err
}

func DispatchTaskAssignedEvent(ctx context.Context, taskId, userId uuid.UUID) error {
	if !feature.IsEventSourcingEnabled() {
		return nil
	}

	log := zlog.Ctx(ctx)
	event, err := NewTaskAssignedEvent(userId.String())
	if err != nil {
		log.Error().
			Err(err).
			Str("event", TaskAssigned).
			Msg("could not create event")
		return err
	}

	err = hwes.AppendEvents(ctx, taskId.String(), event)
	if err != nil {
		log.Error().
			Err(err).
			Str("event", event.Type).
			Msg("could not dispatch event")
	}
	return err
}

func DispatchTaskSelfAssignedEvent(ctx context.Context, taskId, userId uuid.UUID) error {
	if !feature.IsEventSourcingEnabled() {
		return nil
	}

	log := zlog.Ctx(ctx)
	event, err := NewTaskSelfAssignedEvent(userId.String())
	if err != nil {
		log.Error().
			Err(err).
			Str("event", TaskSelfAssigned).
			Msg("could not create event")
		return err
	}

	err = hwes.AppendEvents(ctx, taskId.String(), event)
	if err != nil {
		log.Error().
			Err(err).
			Str("event", event.Type).
			Msg("could not dispatch event")
	}
	return err
}
