package v1

type TaskQueries struct {
	GetTaskByID       GetTaskByIDQueryHandler
	GetTasksByPatient GetTasksByPatientIDQueryHandler
}
