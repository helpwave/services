package test

import (
	"context"
	"hwauthz"
)

type TrueAuthZ struct{}

func NewTrueAuthZ() *TrueAuthZ {
	return &TrueAuthZ{}
}

func (*TrueAuthZ) Write(ctx context.Context, relations ...hwauthz.Relation) (hwauthz.ConsistencyToken, error) {
	return "", nil
}

func (*TrueAuthZ) Delete(ctx context.Context, relations ...hwauthz.Relation) (hwauthz.ConsistencyToken, error) {
	return "", nil
}

func (*TrueAuthZ) Check(ctx context.Context, permissions hwauthz.Permission) (bool, error) {
	// Always returns true
	return true, nil
}
