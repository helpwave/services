package hwes_test

import (
	"common"
	"context"
	"github.com/google/uuid"
	"hwes"
	"testing"
)

func TestEventWithUserID(t *testing.T) {
	ctx := context.Background()
	u := uuid.New()
	o := uuid.New()
	e := hwes.Event{}

	ctx = common.ContextWithUserID(ctx, u)
	ctx = common.ContextWithOrganizationID(ctx, o)

	if err := e.SetCommitterFromCtx(ctx); err != nil {
		t.Error(err)
	}

	if *e.CommitterUserID != u {
		t.Error("event does not have the correct CommitterUserID")
	}

	if *e.CommitterOrganizationID != o {
		t.Error("event does not have the correct CommitterOrganizationID")
	}
}
