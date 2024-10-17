package hwes

import (
	"common"
	"context"
)

// AggregateStore is our interface to an underlying storage that must persist our aggregates in
// an event-sourcing manner.
type AggregateStore interface {
	// Load populates the aggregate to the recent version of the persisted events
	Load(ctx context.Context, aggregate Aggregate) error

	// Save persists all uncommitted events of the aggregate, returns consistency token
	Save(ctx context.Context, aggregate Aggregate) (common.ConsistencyToken, error)

	// Exists checks if the aggregate exists in the data store
	Exists(ctx context.Context, aggregate Aggregate) (bool, error)
}
