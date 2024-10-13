package hwes_test

import (
	"common"
	"context"
	"github.com/google/uuid"
	"github.com/stretchr/testify/assert"
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

	assert.Equal(t, u, *e.CommitterUserID)
	assert.Equal(t, o, *e.CommitterOrganizationID)
}
