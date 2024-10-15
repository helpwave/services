package hwes_test

import (
	"common"
	"context"
	"testing"

	"github.com/google/uuid"
	"hwes"
)

func TestEventWithUserID(t *testing.T) {
	ctx := context.Background()
	u := uuid.New()
	e := hwes.Event{}

	ctx = common.ContextWithUserID(ctx, u)

	if err := e.SetCommitterFromCtx(ctx); err != nil {
		t.Error(err)
	}

	if *e.CommitterUserID != u {
		t.Error("event does not have the correct CommitterUserID")
	}
}
