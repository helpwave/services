package task_postgres_projection

import (
	"context"
	"fmt"
	pb "gen/services/tasks_svc/v1"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"hwdb"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	"hwutil"
	"tasks-svc/internal/task/aggregate"
	taskEventsV1 "tasks-svc/internal/task/events/v1"
	"tasks-svc/repos/task_repo"
)

type Projection struct {
	*custom.CustomProjection
	taskRepo *task_repo.Queries
}

func NewProjection(es *esdb.Client, serviceName string) *Projection {
	subscriptionGroupName := fmt.Sprintf("%s-task-postgres-projection", serviceName)
	p := &Projection{
		CustomProjection: custom.NewCustomProjection(es, subscriptionGroupName, &[]string{fmt.Sprintf("%s-", aggregate.TaskAggregateType)}),
		taskRepo:         task_repo.New(hwdb.GetDB())}
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	p.RegisterEventListener(taskEventsV1.TaskCreated, p.onTaskCreated)
	p.RegisterEventListener(taskEventsV1.TaskStatusUpdated, p.onTaskStatusUpdated)
	p.RegisterEventListener(taskEventsV1.TaskNameUpdated, p.onTaskNameUpdated)
	p.RegisterEventListener(taskEventsV1.TaskDescriptionUpdated, p.onTaskDescriptionUpdated)
	p.RegisterEventListener(taskEventsV1.TaskDueAtUpdated, p.onTaskDueAtUpdated)
	p.RegisterEventListener(taskEventsV1.TaskAssigned, p.onTaskAssigned)
	p.RegisterEventListener(taskEventsV1.TaskUnassigned, p.onTaskUnassigned)
	p.RegisterEventListener(taskEventsV1.TaskPublished, p.onTaskPublished)
	p.RegisterEventListener(taskEventsV1.TaskUnpublished, p.onTaskUnpublished)
	p.RegisterEventListener(taskEventsV1.SubtaskCreated, p.onSubtaskCreated)
	p.RegisterEventListener(taskEventsV1.SubtaskNameUpdated, p.onSubtaskNameUpdated)
	p.RegisterEventListener(taskEventsV1.SubtaskCompleted, p.onSubtaskCompleted)
	p.RegisterEventListener(taskEventsV1.SubtaskUncompleted, p.onSubtaskUncompleted)
	p.RegisterEventListener(taskEventsV1.SubtaskDeleted, p.onSubtaskDeleted)
}

func (p *Projection) onTaskCreated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.TaskCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	taskID, err := uuid.Parse(payload.ID)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	patientID, err := uuid.Parse(payload.PatientID)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	value, found := pb.TaskStatus_value[payload.Status]
	if !found {
		return fmt.Errorf("invalid taskStatus: %s", payload.Status), hwutil.PtrTo(esdb.NackActionPark)
	}
	status := (pb.TaskStatus)(value)

	var committerID uuid.UUID
	if evt.CommitterUserID != nil {
		committerID = *evt.CommitterUserID
	} else {
		return fmt.Errorf("commiterId is not set"), hwutil.PtrTo(esdb.NackActionPark)
	}

	// Add to db
	err = p.taskRepo.CreateTask(ctx, task_repo.CreateTaskParams{
		ID:        taskID,
		Name:      payload.Name,
		PatientID: patientID,
		Status:    int32(status),
		CreatedBy: committerID,
		CreatedAt: hwdb.TimeToTimestamp(payload.CreatedAt),
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onTaskStatusUpdated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.TaskStatusUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	value, found := pb.TaskStatus_value[payload.Status]
	if !found {
		return fmt.Errorf("invalid taskStatus: %s", payload.Status), hwutil.PtrTo(esdb.NackActionPark)
	}
	status := (pb.TaskStatus)(value)

	err := p.taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{Status: hwutil.PtrTo(int32(status))})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onTaskNameUpdated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.TaskNameUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	err := p.taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{ID: evt.AggregateID, Name: &payload.Name})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onTaskDescriptionUpdated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.TaskDescriptionUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	err := p.taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{ID: evt.AggregateID, Description: &payload.Description})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onTaskDueAtUpdated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.TaskDueAtUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	err := p.taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{ID: evt.AggregateID, DueAt: hwdb.TimeToTimestamp(payload.DueAt)})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onTaskAssigned(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var userIDStr string

	switch evt.EventType {
	case taskEventsV1.TaskAssigned:
		var payload taskEventsV1.TaskAssignedEvent
		if err := evt.GetJsonData(&payload); err != nil {
			log.Error().Err(err).Msg("unmarshal failed")
			return err, hwutil.PtrTo(esdb.NackActionPark)
		}
		userIDStr = payload.UserID
	case taskEventsV1.TaskSelfAssigned:
		var payload taskEventsV1.TaskSelfAssignedEvent
		if err := evt.GetJsonData(&payload); err != nil {
			log.Error().Err(err).Msg("unmarshal failed")
			return err, hwutil.PtrTo(esdb.NackActionPark)
		}
		userIDStr = payload.UserID
	}

	userID, err := hwutil.ParseNullUUID(&userIDStr)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	err = p.taskRepo.UpdateTaskAssignedUser(ctx, task_repo.UpdateTaskAssignedUserParams{ID: evt.AggregateID, AssignedUserID: userID})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onTaskUnassigned(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.TaskUnassignedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	err := p.taskRepo.UpdateTaskAssignedUser(ctx, task_repo.UpdateTaskAssignedUserParams{ID: evt.AggregateID, AssignedUserID: uuid.NullUUID{}})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onTaskPublished(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	err := p.taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{ID: evt.AggregateID, Public: hwutil.PtrTo(true)})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onTaskUnpublished(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	err := p.taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{ID: evt.AggregateID, Public: hwutil.PtrTo(false)})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onSubtaskCreated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.SubtaskCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	var committerID uuid.UUID
	if evt.CommitterUserID != nil {
		committerID = *evt.CommitterUserID
	} else {
		return fmt.Errorf("committerID not set"), hwutil.PtrTo(esdb.NackActionPark)
	}

	subtaskID, err := uuid.Parse(payload.SubtaskID)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	err = p.taskRepo.CreateSubtask(ctx, task_repo.CreateSubtaskParams{
		ID:        subtaskID,
		TaskID:    evt.AggregateID,
		Name:      payload.Name,
		CreatedBy: committerID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onSubtaskNameUpdated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.SubtaskCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	subtaskID, err := uuid.Parse(payload.SubtaskID)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	err = p.taskRepo.UpdateSubtask(ctx, task_repo.UpdateSubtaskParams{ID: subtaskID, Name: &payload.Name})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onSubtaskCompleted(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.SubtaskCompletedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	subtaskID, err := uuid.Parse(payload.SubtaskID)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	err = p.taskRepo.UpdateSubtask(ctx, task_repo.UpdateSubtaskParams{ID: subtaskID, Done: hwutil.PtrTo(true)})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onSubtaskUncompleted(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.SubtaskUncompletedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	subtaskID, err := uuid.Parse(payload.SubtaskID)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	err = p.taskRepo.UpdateSubtask(ctx, task_repo.UpdateSubtaskParams{ID: subtaskID, Done: hwutil.PtrTo(false)})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onSubtaskDeleted(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.SubtaskDeletedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	subtaskID, err := uuid.Parse(payload.SubtaskID)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	err = p.taskRepo.DeleteSubtask(ctx, subtaskID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}
