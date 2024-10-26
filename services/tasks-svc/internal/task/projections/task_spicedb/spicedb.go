package task_spicedb

import (
	"hwauthz"
	"hwes/eventstoredb/projections/custom"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"

	"tasks-svc/internal/task/aggregate"
)

type Projection struct {
	*custom.CustomProjection
	authz hwauthz.AuthZ
}

func NewSpiceDBProjection(es *esdb.Client, authz hwauthz.AuthZ, serviceName string) *Projection {
	subscriptionGroupName := serviceName + "-task-spicedb-projection"
	p := &Projection{
		CustomProjection: custom.NewCustomProjection(
			es,
			subscriptionGroupName,
			&[]string{aggregate.TaskAggregateType + "-"},
		),
		authz: authz,
	}
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	// TODO
}
