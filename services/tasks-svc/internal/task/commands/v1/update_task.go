package v1

import (
	"common"
	"context"
	pb "gen/services/tasks_svc/v1"
	"github.com/google/uuid"
	"hwauthz"
	"hwes"
	"tasks-svc/internal/perm"
	"tasks-svc/internal/task/aggregate"
)

type UpdateTaskCommandHandler func(ctx context.Context, taskID uuid.UUID, name *string, description *string, status *pb.TaskStatus) (uint64, error)

func NewUpdateTaskCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) UpdateTaskCommandHandler {
	return func(ctx context.Context, taskID uuid.UUID, name *string, description *string, status *pb.TaskStatus) (uint64, error) {
		userID, err := common.GetUserID(ctx)
		if err != nil {
			return 0, err
		}
		a, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return 0, err
		}

		user := perm.User(userID)
		task := perm.Task(taskID)

		check := hwauthz.NewPermissionCheck(user, perm.CanUserUpdateTask, task)
		if err = authz.Must(ctx, check); err != nil {
			return 0, err
		}

		if name != nil {
			if err := a.UpdateName(ctx, *name); err != nil {
				return 0, err
			}
		}

		if description != nil {
			if err := a.UpdateDescription(ctx, *description); err != nil {
				return 0, err
			}
		}

		if status != nil {
			if err := a.UpdateStatus(ctx, *status); err != nil {
				return 0, err
			}
		}

		return as.Save(ctx, a)
	}
}
