package hwes

import (
	"context"
)

// AggregateStore is our interface to an underlying storage that must persist our aggregates in an event-sourcing manner.
type AggregateStore interface {
	// Load populates the aggregate to the recent version of the persisted events
	Load(ctx context.Context, aggregate Aggregate) error

	// Save persists all uncommitted events of the aggregate, returns consistency
	Save(ctx context.Context, aggregate Aggregate) (uint64, error)

	// Exists checks if the aggregate exists in the data store
	Exists(ctx context.Context, aggregate Aggregate) (bool, error)
}
