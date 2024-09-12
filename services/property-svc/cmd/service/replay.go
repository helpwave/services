package service

import (
	"context"
	"errors"
	"fmt"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/jackc/pgx/v5"
	"hwauthz"
	"hwdb"
	"hwes"
	"hwes/eventstoredb"
	propertyValueAggregate "property-svc/internal/property-value/aggregate"
	"property-svc/internal/property-value/projections/property_value_postgres_projection"
	propertyAggregate "property-svc/internal/property/aggregate"
	"property-svc/internal/property/projections/property_postgres_projection"
	"telemetry"
)

// replay mechanism for projections of the property-svc
// replay truncates the whole database and replays all events
func replay(ctx context.Context, eventStore *esdb.Client, authz hwauthz.AuthZ) error {
	ctx, span, log := telemetry.StartSpan(ctx, "property-svc.replay")
	defer span.End()

	log.Info().Msg("starting in replay mode")

	db := hwdb.GetDB()
	tx, err := db.Begin(ctx)
	if err != nil {
		return fmt.Errorf("cannot begin transaction: %w", err)
	}

	var errToRollback error
	defer func() {
		if errToRollback != nil {
			err = tx.Rollback(ctx)
			if err != nil && !errors.Is(err, pgx.ErrTxClosed) {
				log.Err(err).Msg("failed to rollback transaction")
			}
		}
	}()

	log.Info().Msg("truncating all tables...")

	if errToRollback = hwdb.DANGERTruncateAllTables(ctx, tx); errToRollback != nil {
		return fmt.Errorf("cannot truncate all tables: %w", err)
	}

	log.Info().Msg("starting event replay")

	propertyPostgresProjection := property_postgres_projection.NewProjection(eventStore, ServiceName, tx, authz)
	propertyValuePostgresProjection := property_value_postgres_projection.NewProjection(eventStore, ServiceName, tx)

	if errToRollback = eventstoredb.Replay(
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
	); errToRollback != nil {
		return errToRollback
	}

	if err := tx.Commit(ctx); err != nil {
		return fmt.Errorf("cannot commit transaction: %w", err)
	}

	return nil
}
