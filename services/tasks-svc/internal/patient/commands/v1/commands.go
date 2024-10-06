package v1

type PatientCommands struct {
	AssignBed        AssignBedCommandHandler
	CreatePatient    CreatePatientCommandHandler
	DischargePatient DischargePatientCommandHandler
	ReadmitPatient   ReadmitPatientCommandHandler
	UnassignBed      UnassignBedCommandHandler
	UpdatePatient    UpdatePatientCommandHandler
	DeletePatient    DeletePatientCommandHandler
}
