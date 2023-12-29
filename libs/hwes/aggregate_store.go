package hwes

import (
	"context"
)

type AggregateStore interface {
	// Load populates the aggregate to the recent version of the persisted events
	Load(ctx context.Context, aggregate Aggregate) error

	// Save persists all uncommitted events of the aggregate
	Save(ctx context.Context, aggregate Aggregate) error

	// Exists checks if the aggregate exists in the data store
	Exists(ctx context.Context, aggregate Aggregate) (bool, error)
}
