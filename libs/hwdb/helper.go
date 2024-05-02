package hwdb

import (
	"context"
	"errors"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgtype"
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
