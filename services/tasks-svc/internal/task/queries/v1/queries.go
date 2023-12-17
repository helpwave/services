package v1

type TaskQueries struct {
	GetTaskByID GetTaskByIDQueryHandler
}

func NewTaskQueries(getTaskByID GetTaskByIDQueryHandler) *TaskQueries {
	return &TaskQueries{
		GetTaskByID: getTaskByID,
	}
}
