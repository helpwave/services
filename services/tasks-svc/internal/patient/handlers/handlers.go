package handlers

import (
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

func NewPatientHandlers(as hwes.AggregateStore) *Handlers {
	return &Handlers{
		Commands: &Commands{
			V1: &commandsV1.PatientCommands{
				AssignBed:        commandsV1.NewAssignBedCommandHandler(as),
				CreatePatient:    commandsV1.NewCreatePatientCommandHandler(as),
				DischargePatient: commandsV1.NewDischargePatientCommandHandler(as),
				ReadmitPatient:   commandsV1.NewReadmitPatientCommandHandler(as),
				UnassignBed:      commandsV1.NewUnassignBedCommandHandler(as),
				UpdatePatient:    commandsV1.NewUpdatePatientCommandHandler(as),
			},
		},
		Queries: &Queries{
			V1: &queriesV1.PatientQueries{
				GetPatientByID: queriesV1.NewGetPatientByIDQueryHandler(as),
			},
		},
	}
}
