package hwdb

import (
	"context"
	"errors"
	"fmt"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgtype"
	"github.com/rs/zerolog/log"
	"google.golang.org/protobuf/types/known/timestamppb"
	"time"
)

// Optional wraps a database query function and returns (nil, nil) in case of ErrNoRows
//
//	hwdb.Optional(repo.GetOptionalElement)(ctx, param)
func Optional[P any, R any](fn func(ctx context.Context, param P) (R, error)) func(ctx context.Context, param P) (*R, error) {
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

// TruncateAllTables truncates all tables of the currently connected database
func TruncateAllTables(ctx context.Context) error {
	db := GetDB()

	rows, err := db.Query(ctx, `
		SELECT table_name
		FROM information_schema.tables
		WHERE table_schema = 'public' AND table_type = 'BASE TABLE'
	`)

	if err != nil {
		return err
	}

	defer rows.Close()

	for rows.Next() {
		var tableName string
		if err := rows.Scan(&tableName); err != nil {
			return err
		}

		if _, err := db.Exec(ctx, fmt.Sprintf("TRUNCATE TABLE %s CASCADE", tableName)); err != nil {
			return err
		}

		log.Debug().Str("table_name", tableName).Msg("table truncated")
	}

	return rows.Err()
}
