package aggregate

import (
	"tasks-svc/internal/task/models"
)

const TaskAggregateType = "task"

type TaskAggregate struct {
	Task *models.Task
}
