package v1

type PatientQueries struct {
	GetPatientByID  GetPatientByIDQueryHandler
	GetPatientByBed GetPatientByBedQueryHandler
}
