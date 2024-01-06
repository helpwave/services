package test

import (
	"context"
	"hwutil/authz"
)

type TrueAuthZ struct{}

func NewTrueAuthZ() *TrueAuthZ {
	return &TrueAuthZ{}
}

func (*TrueAuthZ) Write(ctx context.Context, relations ...authz.Relation) (authz.ConsistencyToken, error) {
	return "", nil
}

func (*TrueAuthZ) Delete(ctx context.Context, relations ...authz.Relation) (authz.ConsistencyToken, error) {
	return "", nil
}

func (*TrueAuthZ) Check(ctx context.Context, permissions authz.Permission) (bool, error) {
	// Always returns true
	return true, nil
}
