package spicedb

import (
	"fmt"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"hwauthz"
	"hwes/eventstoredb/projections/custom"
	"tasks-svc/internal/task/aggregate"
)

type Projection struct {
	*custom.CustomProjection
	authz hwauthz.AuthZ
}

func NewSpiceDBProjection(es *esdb.Client, authz hwauthz.AuthZ, serviceName string) *Projection {
	subscriptionGroupName := fmt.Sprintf("%s-spicedb-projection", serviceName)
	p := &Projection{
		CustomProjection: custom.NewCustomProjection(
			es,
			subscriptionGroupName,
			&[]string{fmt.Sprintf("%s-", aggregate.TaskAggregateType)},
		),
		authz: authz,
	}
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	// TODO
}
