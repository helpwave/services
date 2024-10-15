package v1

import (
	"common"
	"context"
	"errors"
	pb "gen/services/tasks_svc/v1"
	"hwes"

	"github.com/google/uuid"
	"google.golang.org/protobuf/types/known/timestamppb"

	"tasks-svc/internal/task/aggregate"
)

type CreateTaskCommandHandler func(
	ctx context.Context,
	taskID uuid.UUID,
	name string,
	description *string,
	patientID uuid.UUID,
	public *bool,
	status *pb.TaskStatus,
	dueAt *timestamppb.Timestamp,
	assignedUserID uuid.NullUUID,
	subtasks []*pb.CreateTaskRequest_SubTask,
) (common.ConsistencyToken, error)

func NewCreateTaskCommandHandler(as hwes.AggregateStore) CreateTaskCommandHandler {
	return func(
		ctx context.Context,
		taskID uuid.UUID,
		name string,
		description *string,
		patientID uuid.UUID,
		public *bool,
		status *pb.TaskStatus,
		dueAt *timestamppb.Timestamp,
		assignedUserID uuid.NullUUID,
		subtasks []*pb.CreateTaskRequest_SubTask,
	) (common.ConsistencyToken, error) {
		a := aggregate.NewTaskAggregate(taskID)

		exists, err := as.Exists(ctx, a)
		if err != nil {
			return 0, err
		}

		if exists {
			return 0, errors.New("cannot create an already existing aggregate")
		}

		finalStatus := pb.TaskStatus_TASK_STATUS_TODO
		if status != nil {
			finalStatus = *status
		}

		if err := a.CreateTask(ctx, name, patientID, finalStatus); err != nil {
			return 0, err
		}

		if description != nil {
			if err := a.UpdateDescription(ctx, *description); err != nil {
				return 0, err
			}
		}

		if dueAt != nil {
			if err := a.UpdateDueAt(ctx, dueAt.AsTime()); err != nil {
				return 0, err
			}
		}

		if public != nil && *public {
			if err := a.UpdateTaskPublic(ctx, *public); err != nil {
				return 0, err
			}
		}

		if assignedUserID.Valid {
			if err := a.AssignTask(ctx, assignedUserID.UUID); err != nil {
				return 0, err
			}
		}

		for _, subtask := range subtasks {
			if err := a.CreateSubtask(ctx, uuid.New(), subtask.Name, subtask.GetDone()); err != nil {
				return 0, err
			}
		}

		return as.Save(ctx, a)
	}
}
