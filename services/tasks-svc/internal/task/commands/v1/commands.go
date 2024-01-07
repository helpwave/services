package v1

type TaskCommands struct {
	CreateTask        CreateTaskCommandHandler
	UpdateTask        UpdateTaskCommandHandler
	AssignTask        AssignTaskCommandHandler
	UnassignTask      UnassignTaskCommandHandler
	CreateSubtask     CreateSubtaskCommandHandler
	UpdateSubtask     UpdateSubtaskCommandHandler
	CompleteSubtask   CompleteSubtaskCommandHandler
	UncompleteSubtask UncompleteSubtaskCommandHandler
	DeleteSubtask     DeleteSubtaskCommandHandler
}

func NewTaskCommands(
	createTask CreateTaskCommandHandler,
	updateTask UpdateTaskCommandHandler,
	assignTask AssignTaskCommandHandler,
	unassignTask UnassignTaskCommandHandler,
	createSubtask CreateSubtaskCommandHandler,
	updateSubtask UpdateSubtaskCommandHandler,
	completeSubtask CompleteSubtaskCommandHandler,
	uncompleteSubtask UncompleteSubtaskCommandHandler,
	deleteSubtask DeleteSubtaskCommandHandler,
) *TaskCommands {
	return &TaskCommands{
		CreateTask:        createTask,
		UpdateTask:        updateTask,
		AssignTask:        assignTask,
		UnassignTask:      unassignTask,
		CreateSubtask:     createSubtask,
		UpdateSubtask:     updateSubtask,
		CompleteSubtask:   completeSubtask,
		UncompleteSubtask: uncompleteSubtask,
		DeleteSubtask:     deleteSubtask,
	}
}
