package handlers

import (
	"hwes"
	commandsV1 "property-svc/internal/property-view/commands/v1"
	queriesV1 "property-svc/internal/property-view/queries/v1"
)

type Commands struct {
	V1 *commandsV1.PropertyViewCommands
}

type Queries struct {
	V1 *queriesV1.PropertyViewQueries
}

type Handlers struct {
	Commands *Commands
	Queries  *Queries
}

func NewPropertyViewHandlers(as hwes.AggregateStore) *Handlers {
	return &Handlers{
		Commands: &Commands{
			V1: &commandsV1.PropertyViewCommands{
				UpdatePropertyViewRule: commandsV1.NewUpdatePropertyViewRuleCommandHandler(as),
			},
		},
		Queries: &Queries{
			V1: &queriesV1.PropertyViewQueries{
				GetAlwaysIncludePropertyIDsByMatcher: queriesV1.NewGetAlwaysIncludePropertiesByMatcherHandler(),
			},
		},
	}
}
