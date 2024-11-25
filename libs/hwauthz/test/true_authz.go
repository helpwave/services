package test

import (
	"context"

	"hwauthz"
)

// TrueAuthZ yields true for all checks
type TrueAuthZ struct{}

func NewTrueAuthZ() *TrueAuthZ {
	return &TrueAuthZ{}
}

func (a *TrueAuthZ) Write(
	ctx context.Context,
	writes []hwauthz.Relationship,
	deletes []hwauthz.Relationship,
) (hwauthz.ConsistencyToken, error) {
	return "", nil
}

func (a *TrueAuthZ) Create(relationships ...hwauthz.Relationship) *hwauthz.Tx {
	return hwauthz.NewTx(a, nil, nil)
}

func (a *TrueAuthZ) Delete(relationships ...hwauthz.Relationship) *hwauthz.Tx {
	return hwauthz.NewTx(a, nil, nil)
}

func (a *TrueAuthZ) Check(ctx context.Context, check hwauthz.PermissionCheck) (permissionGranted bool, err error) {
	return true, nil
}

func (a *TrueAuthZ) Must(ctx context.Context, check hwauthz.PermissionCheck) error {
	return nil
}

func (a *TrueAuthZ) BulkCheck(_ context.Context, checks []hwauthz.PermissionCheck) ([]bool, error) {
	bs := make([]bool, len(checks))
	for i := range bs {
		bs[i] = true
	}
	return bs, nil
}

func (s *TrueAuthZ) BulkMust(_ context.Context, _ ...hwauthz.PermissionCheck) error {
	return nil
}

func (s *TrueAuthZ) LookupResources(
	_ context.Context, _ hwauthz.Object, _ hwauthz.Relation, _ hwauthz.ObjectType,
) ([]string, error) {
	return []string{}, nil
}
