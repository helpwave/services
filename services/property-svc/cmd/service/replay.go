package service

import (
	"context"
	"fmt"
	"hwdb"
	"hwes"
	"hwes/eventstoredb"
	"telemetry"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"

	propertyValueAggregate "property-svc/internal/property-value/aggregate"
	propertyValuePostgresProjection "property-svc/internal/property-value/projections/postgres-projection"
	propertyAggregate "property-svc/internal/property/aggregate"
	propertyPostgresProjection "property-svc/internal/property/projections/postgres-projection"
)

// replay mechanism for projections of the property-svc
// replay truncates the whole database and replays all events
func replay(ctx context.Context, eventStore *esdb.Client) error {
	ctx, span, log := telemetry.StartSpan(ctx, "property-svc.replay")
	defer span.End()

	log.Info().Msg("starting in replay mode")

	db := hwdb.GetDB()
	tx, rollback, err := hwdb.BeginTx(db, ctx)
	if err != nil {
		return fmt.Errorf("cannot begin transaction: %w", err)
	}
	defer rollback()

	log.Info().Msg("truncating all tables...")

	if err = hwdb.DANGERTruncateAllTables(ctx, tx); err != nil {
		return fmt.Errorf("cannot truncate all tables: %w", err)
	}

	log.Info().Msg("starting event replay")

	propertyPostgresProjection := propertyPostgresProjection.NewProjection(eventStore, ServiceName, tx)
	propertyValuePostgresProjection := propertyValuePostgresProjection.NewProjection(eventStore, ServiceName, tx)

	err = eventstoredb.Replay(
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
		&[]string{
			propertyAggregate.PropertyAggregateType + "-",
			propertyValueAggregate.PropertyValueAggregateType + "-",
		},
	)
	if err != nil {
		return err
	}

	if err := tx.Commit(ctx); err != nil {
		return fmt.Errorf("cannot commit transaction: %w", err)
	}

	return nil
}
