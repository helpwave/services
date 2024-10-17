package handlers

import (
	"hwes"

	commandsV1 "property-svc/internal/property-set/commands/v1"
	queriesV1 "property-svc/internal/property-set/queries/v1"
)

type Commands struct {
	V1 *commandsV1.PropertySetCommands
}

type Queries struct {
	V1 *queriesV1.PropertySetQueries
}

type Handlers struct {
	Commands *Commands
	Queries  *Queries
}

func NewPropertySetHandlers(as hwes.AggregateStore) *Handlers {
	return &Handlers{
		Commands: &Commands{
			V1: &commandsV1.PropertySetCommands{
				CreatePropertySet: commandsV1.NewCreatePropertySetCommandHandler(as),
			},
		},
		Queries: &Queries{
			V1: &queriesV1.PropertySetQueries{
				GetPropertySetByID: queriesV1.NewGetPropertySetByIDQueryHandler(as),
			},
		},
	}
}
