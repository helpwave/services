package v1

type TaskCommands struct {
	CreateTask        CreateTaskCommandHandler
	UpdateTask        UpdateTaskCommandHandler
	AssignTask        AssignTaskCommandHandler
	UnnasignTask      UnassignTaskCommandHandler
	CreateSubtask     CreateSubtaskCommandHandler
	UpdateSubtask     UpdateSubtaskCommandHandler
	CompleteSubtask   CompleteSubtaskCommandHandler
	UncompleteSubtask UncompleteSubtaskCommandHandler
	DeleteSubtask     DeleteSubtaskCommandHandler
}
