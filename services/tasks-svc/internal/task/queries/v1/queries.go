package v1

type TaskQueries struct {
	GetTaskWithPatientByID         GetTaskWithPatientByIDQueryHandler
	GetTasksByPatient              GetTasksByPatientIDQueryHandler
	GetTasksWithPatientsByAssignee GetTasksWithPatientsByAssigneeQueryHandler
}
