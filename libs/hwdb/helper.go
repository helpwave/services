package hwdb

import (
	"context"
	"errors"
	"fmt"
	"telemetry"
	"time"

	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgtype"
	zlog "github.com/rs/zerolog"
	"google.golang.org/protobuf/types/known/timestamppb"
)

// Optional wraps a database query function and returns (nil, nil) in case of ErrNoRows
//
//	hwdb.Optional(repo.GetOptionalElement)(ctx, param)
func Optional[P any, R any](
	fn func(ctx context.Context, param P) (R, error),
) func(ctx context.Context, param P) (*R, error) {
	return func(ctx context.Context, param P) (*R, error) {
		res, err := fn(ctx, param)
		if err != nil && errors.Is(err, pgx.ErrNoRows) {
			return nil, nil
		} else {
			return &res, err
		}
	}
}

func TimeToTimestamp(src time.Time) pgtype.Timestamp {
	// v4 used to enforce UTC for timestamps, I found nothing in the v5 docs,
	// for the sake of sanity we enforce UTC anyway
	// (as timestamp, as opposed to timestamptz, does not store tz info)
	//
	// the line below is essentially what .Scan() does,
	// just slightly faster as we know the type is time.Time
	// (bmn)
	return pgtype.Timestamp{Time: src.UTC(), Valid: true}
}

func TimeToDate(src time.Time) pgtype.Date {
	return pgtype.Date{Time: src.UTC(), Valid: true}
}

func PbToTimestamp(src *timestamppb.Timestamp) pgtype.Timestamp {
	if src == nil {
		return pgtype.Timestamp{Valid: false}
	}
	return pgtype.Timestamp{Time: (*src).AsTime().UTC(), Valid: true}
}

// ExecBatch can be used as a wrapper around .Exec to obtain the last not-nil error.
func ExecBatch(batchResults interface{ Exec(f func(int, error)) }) error {
	var err error
	batchResults.Exec(func(_ int, e error) {
		if e != nil {
			err = e
		}
	})
	return err
}

// DANGERTruncateAllTables truncates all tables of db
func DANGERTruncateAllTables(ctx context.Context, db DBTX) error {
	ctx, span, log := telemetry.StartSpan(ctx, "hwdb.DANGERTruncateAllTables")
	defer span.End()

	rows, err := db.Query(ctx, `
		SELECT table_name
		FROM information_schema.tables
		WHERE table_schema = 'public' AND table_type = 'BASE TABLE'
	`)
	if err != nil {
		return fmt.Errorf("DANGERTruncateAllTables: failed to query table names: %w", err)
	}

	defer rows.Close()

	tableNames := make([]string, 0)

	for rows.Next() {
		var tableName string
		if err := rows.Scan(&tableName); err != nil {
			return fmt.Errorf("DANGERTruncateAllTables: could not Scan row: %w", err)
		}
		tableNames = append(tableNames, tableName)
	}

	log.Info().Strs("tableNames", tableNames).Msg("Start truncating all tables")

	for _, tableName := range tableNames {
		log.Trace().Str("table_name", tableName).Msg("truncating")
		if _, err := db.Exec(ctx, fmt.Sprintf("TRUNCATE TABLE %s CASCADE", tableName)); err != nil {
			return err
		}
		log.Debug().Str("table_name", tableName).Msg("table truncated")
	}
	log.Debug().Msg("truncate finished")

	return rows.Err()
}

// BeginTx is a wrapper around DBTX.Begin, which does rich error handling for you
//
//	tx, rollback, err := BeginTx(db, ctx)
//	if err != nil { return err }
//	defer rollback()
func BeginTx(db DBTX, ctx context.Context) (pgx.Tx, func(), error) {
	log := zlog.Ctx(ctx)
	tx, err := db.Begin(ctx)
	err = Error(ctx, err)
	if err != nil {
		log.Error().Err(err).Msg("failed to begin transaction")
		return nil, nil, err
	}

	rollback := func() {
		err := tx.Rollback(ctx)
		if !errors.Is(err, pgx.ErrTxClosed) {
			log.Error().Err(err).Msg("rollback failed")
		}
	}

	return tx, rollback, nil
}
