package service

import (
	"context"
	"fmt"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"hwauthz"
	"hwdb"
	"hwes"
	"hwes/eventstoredb"
	propertyValueAggregate "property-svc/internal/property-value/aggregate"
	"property-svc/internal/property-value/projections/property_value_postgres_projection"
	propertyAggregate "property-svc/internal/property/aggregate"
	"property-svc/internal/property/projections/postgres_projection"
	"telemetry"
)

// replay mechanism for projections of the property-svc
// replay truncates the whole database and replays all events
func replay(ctx context.Context, eventStore *esdb.Client, authz hwauthz.AuthZ) error {
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

	propertyPostgresProjection := postgres_projection.NewProjection(eventStore, ServiceName, tx)
	propertyValuePostgresProjection := property_value_postgres_projection.NewProjection(eventStore, ServiceName, tx)

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
			fmt.Sprintf("%s-", propertyAggregate.PropertyAggregateType),
			fmt.Sprintf("%s-", propertyValueAggregate.PropertyValueAggregateType),
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
