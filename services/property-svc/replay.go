package main

import (
	"context"
	"fmt"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"hwdb"
	"hwes"
	"hwes/eventstoredb"
	"property-svc/internal/property-value/projections/property_value_postgres_projection"
	"property-svc/internal/property/aggregate"
	"property-svc/internal/property/projections/property_postgres_projection"
	"telemetry"
)

// replay mechanism for projections of the property-svc
// replay truncates the whole database and replays all events
func replay(ctx context.Context, eventStore *esdb.Client, propertyPostgresProjection *property_postgres_projection.Projection, propertyValuePostgresProjection *property_value_postgres_projection.Projection) error {
	ctx, span, log := telemetry.StartSpan(ctx, "property-svc.replay")
	defer span.End()

	db := hwdb.GetDB()
	tx, err := db.Begin(ctx)
	if err != nil {
		log.Err(err).Msg("cannot begin transaction")
		return err
	}

	// TODO: Pass transaction. db.Begin() results in "conn busy".
	if err := hwdb.DANGERTruncateAllTables(ctx); err != nil {
		log.Err(err).Msg("cannot truncate all tables")
		return err
	}

	if err := eventstoredb.Replay(
		ctx,
		eventStore,
		func(ctx context.Context, event hwes.Event) (err error) {
			if err, _ = propertyPostgresProjection.HandleEvent(ctx, event); err != nil {
				return
			}
			if err, _ = propertyValuePostgresProjection.HandleEvent(ctx, event); err != nil {
				return
			}
			return
		},
		&[]string{fmt.Sprintf("%s-", aggregate.PropertyAggregateType)},
	); err != nil {
		if err := tx.Rollback(ctx); err != nil {
			log.Err(err).Msg("cannot rollback transaction")
		}
		return err
	}

	if err := tx.Commit(ctx); err != nil {
		log.Err(err).Msg("cannot commit transaction")
		return err
	}

	return nil
}
