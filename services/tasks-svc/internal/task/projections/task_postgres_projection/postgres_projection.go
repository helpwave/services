package task_postgres_projection

import (
	"context"
	"fmt"
	pb "gen/proto/services/tasks_svc/v1"
	"github.com/EventStore/EventStore-Client-Go/esdb"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"hwdb"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	"hwutil"
	taskEventsV1 "tasks-svc/internal/task/events/v1"
	"tasks-svc/repos/task_repo"
)

type Projection struct {
	*custom.CustomProjection
}

func NewProjection(es *esdb.Client, serviceName string) *Projection {
	subscriptionGroupName := fmt.Sprintf("%s-postgres-projection", serviceName)
	p := &Projection{custom.NewCustomProjection(es, subscriptionGroupName)}
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	p.RegisterEventListener(taskEventsV1.TaskCreated, p.onTaskCreated)
	p.RegisterEventListener(taskEventsV1.TaskNameUpdated, p.onTaskNameUpdated)
	p.RegisterEventListener(taskEventsV1.TaskDescriptionUpdated, p.onTaskDescriptionUpdated)
	p.RegisterEventListener(taskEventsV1.TaskAssigned, p.onTaskAssigned)
	p.RegisterEventListener(taskEventsV1.TaskUnassigned, p.onTaskUnassigned)
	p.RegisterEventListener(taskEventsV1.TaskPublished, p.onTaskPublished)
	p.RegisterEventListener(taskEventsV1.SubtaskCreated, p.onSubtaskCreated)
	p.RegisterEventListener(taskEventsV1.SubtaskNameUpdated, p.onSubtaskNameUpdated)
	p.RegisterEventListener(taskEventsV1.SubtaskCompleted, p.onSubtaskCompleted)
	p.RegisterEventListener(taskEventsV1.SubtaskUncompleted, p.onSubtaskUncompleted)
	p.RegisterEventListener(taskEventsV1.SubtaskDeleted, p.onSubtaskDeleted)
}

func (p *Projection) onTaskCreated(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	log := zlog.Ctx(ctx)
	taskRepo := task_repo.New(hwdb.GetDB())

	var payload taskEventsV1.TaskCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.Nack_Retry
	}

	taskID, err := uuid.Parse(payload.ID)
	if err != nil {
		return err, esdb.Nack_Retry
	}

	patientID, err := uuid.Parse(payload.PatientID)
	if err != nil {
		return err, esdb.Nack_Retry
	}

	value, found := pb.TaskStatus_value[payload.Status]
	if !found {
		return fmt.Errorf("invalid taskStatus: %s", payload.Status), esdb.Nack_Retry
	}
	status := (pb.TaskStatus)(value)

	// Add to db
	if err := taskRepo.CreateTask(ctx, task_repo.CreateTaskParams{
		ID:             taskID,
		Name:           payload.Name,
		PatientID:      patientID,
		Status:         int32(status),
		OrganizationID: uuid.New(), // TODO: Remove?
	}); err != nil {
		return err, esdb.Nack_Retry
	}

	return nil, esdb.Nack_Unknown
}

func (p *Projection) onTaskNameUpdated(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	log := zlog.Ctx(ctx)
	taskRepo := task_repo.New(hwdb.GetDB())

	var payload taskEventsV1.TaskNameUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.Nack_Retry
	}

	if err := taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{ID: evt.AggregateID, Name: &payload.Name}); err != nil {
		return err, esdb.Nack_Retry
	}

	return nil, esdb.Nack_Unknown
}

func (p *Projection) onTaskDescriptionUpdated(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	log := zlog.Ctx(ctx)
	taskRepo := task_repo.New(hwdb.GetDB())

	var payload taskEventsV1.TaskDescriptionUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.Nack_Retry
	}

	if err := taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{ID: evt.AggregateID, Description: &payload.Description}); err != nil {
		return err, esdb.Nack_Retry
	}

	return nil, esdb.Nack_Unknown
}

func (p *Projection) onTaskAssigned(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	log := zlog.Ctx(ctx)
	taskRepo := task_repo.New(hwdb.GetDB())

	var userIDStr string

	switch evt.EventType {
	case taskEventsV1.TaskAssigned:
		var payload taskEventsV1.TaskAssignedEvent
		if err := evt.GetJsonData(&payload); err != nil {
			log.Error().Err(err).Msg("unmarshal failed")
			return err, esdb.Nack_Retry
		}
		userIDStr = payload.UserID
	case taskEventsV1.TaskSelfAssigned:
		var payload taskEventsV1.TaskSelfAssignedEvent
		if err := evt.GetJsonData(&payload); err != nil {
			log.Error().Err(err).Msg("unmarshal failed")
			return err, esdb.Nack_Retry
		}
		userIDStr = payload.UserID
	}

	userID, err := hwutil.ParseNullUUID(&userIDStr)
	if err != nil {
		return err, esdb.Nack_Retry
	}

	if err := taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{ID: evt.AggregateID, AssignedUserID: userID}); err != nil {
		return err, esdb.Nack_Retry
	}

	return nil, esdb.Nack_Unknown
}

func (p *Projection) onTaskUnassigned(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	log := zlog.Ctx(ctx)
	taskRepo := task_repo.New(hwdb.GetDB())

	var payload taskEventsV1.TaskUnassignedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.Nack_Retry
	}

	// TODO: Why not working?
	if err := taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{ID: evt.AggregateID, AssignedUserID: uuid.NullUUID{UUID: uuid.Nil, Valid: false}}); err != nil {
		return err, esdb.Nack_Retry
	}

	return nil, esdb.Nack_Unknown
}

func (p *Projection) onTaskPublished(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	taskRepo := task_repo.New(hwdb.GetDB())

	val := true
	if err := taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{ID: evt.AggregateID, Public: &val}); err != nil {
		return err, esdb.Nack_Retry
	}

	return nil, esdb.Nack_Unknown
}

func (p *Projection) onSubtaskCreated(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	log := zlog.Ctx(ctx)
	taskRepo := task_repo.New(hwdb.GetDB())

	var payload taskEventsV1.SubtaskCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.Nack_Retry
	}

	subtaskID, err := uuid.Parse(payload.SubtaskID)
	if err != nil {
		return err, esdb.Nack_Retry
	}

	if err := taskRepo.CreateSubtask(ctx, task_repo.CreateSubtaskParams{
		ID:        subtaskID,
		TaskID:    evt.AggregateID,
		Name:      payload.Name,
		CreatedBy: uuid.New(), // TODO: with common.GetUserId not working
	}); err != nil {
		return err, esdb.Nack_Retry
	}

	return nil, esdb.Nack_Unknown
}

func (p *Projection) onSubtaskNameUpdated(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	taskRepo := task_repo.New(hwdb.GetDB())
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.SubtaskCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.Nack_Retry
	}

	subtaskID, err := uuid.Parse(payload.SubtaskID)
	if err != nil {
		return err, esdb.Nack_Retry
	}

	if err := taskRepo.UpdateSubtask(ctx, task_repo.UpdateSubtaskParams{ID: subtaskID, Name: &payload.Name}); err != nil {
		return err, esdb.Nack_Retry
	}

	return nil, esdb.Nack_Unknown
}

func (p *Projection) onSubtaskCompleted(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	taskRepo := task_repo.New(hwdb.GetDB())
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.SubtaskCompletedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.Nack_Retry
	}

	subtaskID, err := uuid.Parse(payload.SubtaskID)
	if err != nil {
		return err, esdb.Nack_Retry
	}

	val := true
	if err := taskRepo.UpdateSubtask(ctx, task_repo.UpdateSubtaskParams{ID: subtaskID, Done: &val}); err != nil {
		return err, esdb.Nack_Retry
	}

	return nil, esdb.Nack_Unknown
}

func (p *Projection) onSubtaskUncompleted(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	taskRepo := task_repo.New(hwdb.GetDB())
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.SubtaskUncompletedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.Nack_Retry
	}

	subtaskID, err := uuid.Parse(payload.SubtaskID)
	if err != nil {
		return err, esdb.Nack_Retry
	}

	val := false
	if err := taskRepo.UpdateSubtask(ctx, task_repo.UpdateSubtaskParams{ID: subtaskID, Done: &val}); err != nil {
		return err, esdb.Nack_Retry
	}

	return nil, esdb.Nack_Unknown
}

func (p *Projection) onSubtaskDeleted(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	taskRepo := task_repo.New(hwdb.GetDB())
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.SubtaskDeletedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.Nack_Retry
	}

	subtaskID, err := uuid.Parse(payload.SubtaskID)
	if err != nil {
		return err, esdb.Nack_Retry
	}

	if err := taskRepo.DeleteSubtask(ctx, subtaskID); err != nil {
		return err, esdb.Nack_Retry
	}

	return nil, esdb.Nack_Unknown
}
