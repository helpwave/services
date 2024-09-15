package v1

type TaskCommands struct {
	CreateTask      CreateTaskCommandHandler
	UpdateTask      UpdateTaskCommandHandler
	AssignTask      AssignTaskCommandHandler
	UnnasignTask    UnassignTaskCommandHandler
	CreateSubtask   CreateSubtaskCommandHandler
	UpdateSubtask   UpdateSubtaskCommandHandler
	DeleteSubtask   DeleteSubtaskCommandHandler
	RemoveTaskDueAt RemoveTaskDueAtCommandHandler
	DeleteTask      DeleteTaskCommandHandler
}
