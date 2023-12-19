package v1

type TaskCommands struct {
	CreateTask CreateTaskCommandHandler
	AssignTask AssignTaskCommandHandler
}

func NewTaskCommands(createTask CreateTaskCommandHandler, assignTask AssignTaskCommandHandler) *TaskCommands {
	return &TaskCommands{
		CreateTask: createTask,
		AssignTask: assignTask,
	}
}
