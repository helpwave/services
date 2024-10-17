package v1

type PatientQueries struct {
	GetPatientByID             GetPatientByIDQueryHandler
	GetPatientByBed            GetPatientByBedQueryHandler
	GetPatientsByWard          GetPatientsByWardQueryHandler
	GetPatientDetailsByID      GetPatientDetailsByIDQueryHandler
	GetAllPatientsWithDetails  GetAllPatientsWithDetailsQueryHandler
	GetPatientAssignmentByWard GetPatientAssignmentByWardQueryHandler
}
