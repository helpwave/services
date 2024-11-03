package handlers

import (
	"hwauthz"
	"hwes"

	commandsV1 "tasks-svc/internal/patient/commands/v1"
	queriesV1 "tasks-svc/internal/patient/queries/v1"
)

type Commands struct {
	V1 *commandsV1.PatientCommands
}

type Queries struct {
	V1 *queriesV1.PatientQueries
}

type Handlers struct {
	Commands *Commands
	Queries  *Queries
}

func NewPatientHandlers(as hwes.AggregateStore, authz hwauthz.AuthZ) *Handlers {
	return &Handlers{
		Commands: &Commands{
			V1: &commandsV1.PatientCommands{
				AssignBed:        commandsV1.NewAssignBedCommandHandler(as, authz),
				CreatePatient:    commandsV1.NewCreatePatientCommandHandler(as, authz),
				DischargePatient: commandsV1.NewDischargePatientCommandHandler(as, authz),
				ReadmitPatient:   commandsV1.NewReadmitPatientCommandHandler(as, authz),
				UnassignBed:      commandsV1.NewUnassignBedCommandHandler(as, authz),
				UpdatePatient:    commandsV1.NewUpdatePatientCommandHandler(as, authz),
				DeletePatient:    commandsV1.NewDeletePatientCommandHandler(as, authz),
			},
		},
		Queries: &Queries{
			V1: &queriesV1.PatientQueries{
				GetPatientByID:             queriesV1.NewGetPatientByIDQueryHandler(as),
				GetPatientByBed:            queriesV1.NewGetPatientByBedQueryHandler(authz),
				GetPatientsByWard:          queriesV1.NewGetPatientsByWardQueryHandler(authz),
				GetPatientDetailsByID:      queriesV1.NewGetPatientWithDetailsByIDQueryHandler(as, authz),
				GetAllPatientsWithDetails:  queriesV1.NewGetAllPatientsWithDetailsQueryHandler(),
				GetPatientAssignmentByWard: queriesV1.NewGetPatientAssignmentByWardQueryHandler(),
			},
		},
	}
}
