package main

import (
	"context"
	"errors"
	"fmt"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/jackc/pgx/v5"
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

	log.Info().Msg("starting in replay mode")

	db := hwdb.GetDB()
	tx, err := db.Begin(ctx)
	if err != nil {
		log.Err(err).Msg("cannot begin transaction")
		return err
	}
	defer func() {
		if err != nil {
			err = tx.Rollback(ctx)
			if !errors.Is(err, pgx.ErrTxClosed) {
				log.Err(err).Msg("failed to rollback transaction")
			}
		}
	}()

	log.Info().Msg("truncating all tables...")

	if err := hwdb.DANGERTruncateAllTables(ctx, tx); err != nil {
		log.Err(err).Msg("cannot truncate all tables")
		return err
	}

	log.Info().Msg("starting event replay")

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
		return err
	}

	if err := tx.Commit(ctx); err != nil {
		log.Err(err).Msg("cannot commit transaction")
		return err
	}

	return nil
}
