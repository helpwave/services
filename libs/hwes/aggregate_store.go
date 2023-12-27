package hwes

import (
	"context"
)

type AggregateStore interface {
	Load(ctx context.Context, aggregate Aggregate) error
	Save(ctx context.Context, aggregate Aggregate) error
	Exists(ctx context.Context, aggregate Aggregate) (bool, error)
}
