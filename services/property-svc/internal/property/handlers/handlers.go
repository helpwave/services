package handlers

import (
	"hwes"

	commandsV1 "property-svc/internal/property/commands/v1"
	queriesV1 "property-svc/internal/property/queries/v1"
)

type Commands struct {
	V1 *commandsV1.PropertyCommands
}

type Queries struct {
	V1 *queriesV1.PropertyQueries
}

type Handlers struct {
	Commands *Commands
	Queries  *Queries
}

func NewPropertyHandlers(as hwes.AggregateStore) *Handlers {
	return &Handlers{
		Commands: &Commands{
			V1: &commandsV1.PropertyCommands{
				CreateProperty: commandsV1.NewCreatePropertyCommandHandler(as),
				UpdateProperty: commandsV1.NewUpdatePropertyCommandHandler(as),
			},
		},
		Queries: &Queries{
			V1: &queriesV1.PropertyQueries{
				GetPropertyByID:                       queriesV1.NewGetPropertyByIDQueryHandler(),
				GetProperties:                         queriesV1.NewGetPropertiesQueryHandler(),
				IsPropertyAlwaysIncludedForViewSource: queriesV1.NewIsPropertyAlwaysIncludedForViewSourceHandler(),
			},
		},
	}
}
