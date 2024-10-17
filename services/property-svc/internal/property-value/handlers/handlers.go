package handlers

import (
	"hwes"

	commandsV1 "property-svc/internal/property-value/commands/v1"
	queriesV1 "property-svc/internal/property-value/queries/v1"
)

type Commands struct {
	V1 *commandsV1.PropertyValueCommands
}

type Queries struct {
	V1 *queriesV1.PropertyValueQueries
}

type Handlers struct {
	Commands *Commands
	Queries  *Queries
}

func NewPropertyValueHandlers(as hwes.AggregateStore) *Handlers {
	return &Handlers{
		Commands: &Commands{
			V1: &commandsV1.PropertyValueCommands{
				AttachPropertyValue: commandsV1.NewAttachPropertyValueCommandHandler(as),
			},
		},
		Queries: &Queries{
			V1: &queriesV1.PropertyValueQueries{
				GetPropertyValueByID:      queriesV1.NewGetPropertyValueByIDQueryHandler(as),
				GetRelevantPropertyValues: queriesV1.NewGetRelevantPropertyValuesQueryHandler(as),
			},
		},
	}
}
