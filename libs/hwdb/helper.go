package hwdb

import (
	"context"
	"errors"
	"github.com/jackc/pgx/v5"
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
