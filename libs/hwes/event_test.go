package hwes_test

import (
	"common/auth"
	"context"
	"github.com/google/uuid"
	"hwes"
	"testing"
)

func TestEventWithUserID(t *testing.T) {
	ctx := context.Background()
	u := uuid.New()
	e := hwes.Event{}

	ctx = auth.ContextWithUserID(ctx, u)

	if err := e.SetCommitterFromCtx(ctx); err != nil {
		t.Error(err)
	}

	if *e.CommitterUserID != u {
		t.Error("event does not have the correct CommitterUserID")
	}
}

func TestEventWithOrganizationID(t *testing.T) {
	ctx := context.Background()
	u := uuid.New()
	e := hwes.Event{}

	ctx = auth.ContextWithOrganizationID(ctx, u)

	if err := e.SetOrganizationFromCtx(ctx); err != nil {
		t.Error(err)
	}

	if *e.OrganizationID != u {
		t.Error("event does not have the correct OrganizationID")
	}
}
