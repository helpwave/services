package graph

import "hwes"

// This file will not be regenerated automatically.
//
// It serves as dependency injection for your app, add any dependencies you require here.

type Resolver struct {
	as hwes.AggregateStore
}

func NewResolver(aggregateStore hwes.AggregateStore) *Resolver {
	return &Resolver{as: aggregateStore}
}
