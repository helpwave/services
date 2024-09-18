package v1

import (
	"context"
	"errors"
	pb "gen/services/tasks_svc/v1"
	"github.com/google/uuid"
	"google.golang.org/protobuf/types/known/timestamppb"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type CreateTaskCommandHandler func(ctx context.Context, taskID uuid.UUID, name string, description *string, patientID uuid.UUID, public *bool, status *pb.TaskStatus, dueAt *timestamppb.Timestamp) (uint64, error)

func NewCreateTaskCommandHandler(as hwes.AggregateStore) CreateTaskCommandHandler {
	return func(ctx context.Context, taskID uuid.UUID, name string, description *string, patientID uuid.UUID, public *bool, status *pb.TaskStatus, dueAt *timestamppb.Timestamp) (uint64, error) {
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
			time := dueAt.AsTime()
			if err := a.UpdateDueAt(ctx, time); err != nil {
				return 0, err
			}
		}

		if public != nil && *public {
			if err := a.PublishTask(ctx); err != nil {
				return 0, err
			}
		}

		return as.Save(ctx, a)
	}
}
