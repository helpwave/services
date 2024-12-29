package postgresprojection

import (
	"common/hwerr"
	"context"
	pb "gen/services/tasks_svc/v1"
	"hwdb"
	"hwes"
	esErrs "hwes/errs"
	"hwes/eventstoredb/projections/custom"
	"hwutil"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"

	"tasks-svc/internal/task/aggregate"
	taskEventsV1 "tasks-svc/internal/task/events/v1"
	"tasks-svc/repos/task-repo"
)

type Projection struct {
	*custom.CustomProjection
	taskRepo *taskrepo.Queries
}

func NewProjection(es *esdb.Client, serviceName string) *Projection {
	subscriptionGroupName := serviceName + "-task-postgres-projection"
	p := &Projection{
		CustomProjection: custom.NewCustomProjection(
			es,
			subscriptionGroupName,
			&[]string{aggregate.TaskAggregateType + "-"},
		),
		taskRepo: taskrepo.New(hwdb.GetDB()),
	}
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
	p.RegisterEventListener(taskEventsV1.TaskDueAtRemoved, p.onTaskDueAtRemoved)
	p.RegisterEventListener(taskEventsV1.TaskDeleted, p.onTaskDeleted)
}

func parseTaskStatus(status string) (pb.TaskStatus, error) {
	value, found := pb.TaskStatus_value[status]
	if !found {
		return 0, hwerr.InvalidEnumError{Enum: "TaskStatus", Value: status}
	}
	return (pb.TaskStatus)(value), nil
}

func (p *Projection) onTaskCreated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.TaskCreatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	taskID, err := uuid.Parse(payload.ID)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	patientID, err := uuid.Parse(payload.PatientID)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	status, err := parseTaskStatus(payload.Status)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	var committerID uuid.UUID
	if evt.CommitterUserID != nil {
		committerID = *evt.CommitterUserID
	} else {
		return hwutil.PtrTo(esdb.NackActionPark), esErrs.ErrCommitterMissing
	}

	// Add to db
	err = p.taskRepo.CreateTask(ctx, taskrepo.CreateTaskParams{
		ID:          taskID,
		Name:        payload.Name,
		PatientID:   patientID,
		Status:      int32(status),
		CreatedBy:   committerID,
		CreatedAt:   hwdb.TimeToTimestamp(payload.CreatedAt),
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onTaskStatusUpdated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.TaskStatusUpdatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	status, err := parseTaskStatus(payload.Status)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	err = p.taskRepo.UpdateTask(ctx, taskrepo.UpdateTaskParams{
		ID:          evt.AggregateID,
		Status:      hwutil.PtrTo(int32(status)),
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err = hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onTaskNameUpdated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.TaskNameUpdatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	err := p.taskRepo.UpdateTask(ctx, taskrepo.UpdateTaskParams{
		ID:          evt.AggregateID,
		Name:        &payload.Name,
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err = hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onTaskDescriptionUpdated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.TaskDescriptionUpdatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	err := p.taskRepo.UpdateTask(ctx, taskrepo.UpdateTaskParams{
		ID:          evt.AggregateID,
		Description: &payload.Description,
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err = hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onTaskDueAtUpdated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.TaskDueAtUpdatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	err := p.taskRepo.UpdateTask(ctx, taskrepo.UpdateTaskParams{
		ID:          evt.AggregateID,
		DueAt:       hwdb.TimeToTimestamp(payload.DueAt),
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err = hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onTaskAssigned(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var userIDStr string

	switch evt.EventType {
	case taskEventsV1.TaskAssigned:
		var payload taskEventsV1.TaskAssignedEvent
		if err := evt.GetJSONData(&payload); err != nil {
			log.Error().Err(err).Msg("unmarshal failed")
			return hwutil.PtrTo(esdb.NackActionPark), err
		}
		userIDStr = payload.UserID
	case taskEventsV1.TaskSelfAssigned:
		var payload taskEventsV1.TaskSelfAssignedEvent
		if err := evt.GetJSONData(&payload); err != nil {
			log.Error().Err(err).Msg("unmarshal failed")
			return hwutil.PtrTo(esdb.NackActionPark), err
		}
		userIDStr = payload.UserID
	}

	userID, err := hwutil.ParseNullUUID(&userIDStr)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	err = p.taskRepo.UpdateTaskAssignedUser(ctx, taskrepo.UpdateTaskAssignedUserParams{
		ID:             evt.AggregateID,
		AssignedUserID: userID,
		Consistency:    int64(evt.GetVersion()), //nolint:gosec
	})
	if err = hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onTaskUnassigned(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.TaskUnassignedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	err := p.taskRepo.UpdateTaskAssignedUser(ctx, taskrepo.UpdateTaskAssignedUserParams{
		ID:             evt.AggregateID,
		AssignedUserID: uuid.NullUUID{},
		Consistency:    int64(evt.GetVersion()), //nolint:gosec
	})
	if err = hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onTaskPublished(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	err := p.taskRepo.UpdateTask(ctx, taskrepo.UpdateTaskParams{
		ID:          evt.AggregateID,
		Public:      hwutil.PtrTo(true),
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err = hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onTaskUnpublished(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	err := p.taskRepo.UpdateTask(ctx, taskrepo.UpdateTaskParams{
		ID:          evt.AggregateID,
		Public:      hwutil.PtrTo(false),
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onSubtaskCreated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.SubtaskCreatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	var committerID uuid.UUID
	if evt.CommitterUserID != nil {
		committerID = *evt.CommitterUserID
	} else {
		return hwutil.PtrTo(esdb.NackActionPark), esErrs.ErrCommitterMissing
	}

	subtaskID, err := uuid.Parse(payload.SubtaskID)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	err = p.taskRepo.CreateSubtask(ctx, taskrepo.CreateSubtaskParams{
		ID:          subtaskID,
		TaskID:      evt.AggregateID,
		Name:        payload.Name,
		CreatedBy:   committerID,
		Consistency: int64(evt.GetVersion()), //nolint:gosec
		Done:        payload.Done,
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onSubtaskNameUpdated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.SubtaskCreatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	subtaskID, err := uuid.Parse(payload.SubtaskID)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	err = p.taskRepo.UpdateSubtask(ctx, taskrepo.UpdateSubtaskParams{
		ID:          subtaskID,
		Name:        &payload.Name,
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err = hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onSubtaskCompleted(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.SubtaskCompletedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	subtaskID, err := uuid.Parse(payload.SubtaskID)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	err = p.taskRepo.UpdateSubtask(ctx, taskrepo.UpdateSubtaskParams{
		ID:          subtaskID,
		Done:        hwutil.PtrTo(true),
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onSubtaskUncompleted(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.SubtaskUncompletedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	subtaskID, err := uuid.Parse(payload.SubtaskID)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	err = p.taskRepo.UpdateSubtask(ctx, taskrepo.UpdateSubtaskParams{
		ID:          subtaskID,
		Done:        hwutil.PtrTo(false),
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onSubtaskDeleted(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload taskEventsV1.SubtaskDeletedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	subtaskID, err := uuid.Parse(payload.SubtaskID)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	err = p.taskRepo.DeleteSubtask(ctx, taskrepo.DeleteSubtaskParams{
		ID:          subtaskID,
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}
	return nil, nil
}

func (p *Projection) onTaskDueAtRemoved(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	err := p.taskRepo.RemoveTaskDueAt(ctx, taskrepo.RemoveTaskDueAtParams{
		ID:          evt.AggregateID,
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}
	return nil, nil
}

func (p *Projection) onTaskDeleted(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	err := p.taskRepo.DeleteTask(ctx, evt.AggregateID)
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}
	return nil, nil
}
