package hwdb

import (
	"context"
	"github.com/pashagolub/pgxmock/v4"
	"github.com/stretchr/testify/require"
	"testing"
)

func TestContextFunctions(t *testing.T) {
	dbMock, err := pgxmock.NewPool()
	if err != nil {
		panic(err)
	}
	ctx := WithDB(context.Background(), dbMock)
	require.Equal(t, dbMock, GetDB(ctx))
}
