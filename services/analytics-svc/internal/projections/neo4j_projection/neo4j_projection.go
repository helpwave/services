package neo4j_projection

import (
	"context"
	"fmt"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/neo4j/neo4j-go-driver/v5/neo4j"
	"github.com/rs/zerolog/log"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	"hwutil"
)

type Projection struct {
	*custom.CustomProjection
	neo4jDriver neo4j.DriverWithContext
}

// The neo4j projection intends to insert all events into our neo4j database
func NewProjection(es *esdb.Client, serviceName string, driver neo4j.DriverWithContext) *Projection {
	subscriptionGroupName := fmt.Sprintf("%s-neo4j-projection", serviceName)
	p := &Projection{
		CustomProjection: custom.NewCustomProjection(es, subscriptionGroupName, &[]string{}),
		neo4jDriver:      driver,
	}
	return p
}

func (p *Projection) initEventListener() {
	p.RegisterFallbackEventHandler(p.handleAllEvents)
}

// This function does all the inserting stuff
func (p *Projection) handleAllEvents(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	var payload map[string]interface{}
	if err := evt.GetJsonData(&payload); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	// Iter trough the payload and build up a data format which can be added to
	for key, value := range payload {
		fmt.Println(key, value)
	}

	session := p.neo4jDriver.NewSession(
		ctx,
		neo4j.SessionConfig{AccessMode: neo4j.AccessModeWrite},
	)
	defer func() {
		if err := session.Close(ctx); err != nil {
			log.Error().Err(err).Msg("could not close neo4j session")
		}
	}()

	return nil, nil
}
