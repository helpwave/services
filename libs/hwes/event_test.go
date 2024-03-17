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
	e := hwes.Event{}

	ctx = common.ContextWithUserID(ctx, u)

	if err := e.SetCommitterFromCtx(ctx); err != nil {
		t.Error(err)
	}

	if *e.UserID != u {
		t.Error("event does not have the correct UserID")
	}
}
