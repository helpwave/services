package v1

type TaskCommands struct {
	CreateTask        CreateTaskCommandHandler
	AssignTask        AssignTaskCommandHandler
	CreateSubtask     CreateSubtaskCommandHandler
	CompleteSubtask   CompleteSubtaskCommandHandler
	UncompleteSubtask UncompleteSubtaskCommandHandler
}

func NewTaskCommands(
	createTask CreateTaskCommandHandler,
	assignTask AssignTaskCommandHandler,
	createSubtask CreateSubtaskCommandHandler,
	completeSubtask CompleteSubtaskCommandHandler,
	uncompleteSubtask UncompleteSubtaskCommandHandler,
) *TaskCommands {
	return &TaskCommands{
		CreateTask:        createTask,
		AssignTask:        assignTask,
		CreateSubtask:     createSubtask,
		CompleteSubtask:   completeSubtask,
		UncompleteSubtask: uncompleteSubtask,
	}
}
