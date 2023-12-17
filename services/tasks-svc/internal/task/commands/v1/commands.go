package v1

type TaskCommands struct {
	CreateTask CreateTaskCommandHandler
}

func NewTaskCommands(createTask CreateTaskCommandHandler) *TaskCommands {
	return &TaskCommands{
		CreateTask: createTask,
	}
}
