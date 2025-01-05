package hwdb

import (
	"context"
	"testing"

	"github.com/pashagolub/pgxmock/v4"
	"github.com/stretchr/testify/require"
)

func TestMustGetDB(t *testing.T) {
	t.Parallel()

	t.Run("Green", func(t *testing.T) {
		t.Parallel()

		dbMock, err := pgxmock.NewPool()
		if err != nil {
			panic(err)
		}

		ctx := WithDB(context.Background(), dbMock)
		require.Equal(t, dbMock, MustGetDB(ctx))
	})

	t.Run("Panic", func(t *testing.T) {
		t.Parallel()

		ctx := context.Background()
		require.Panics(t, func() {
			_ = MustGetDB(ctx)
		})
	})
}

func TestGetDB(t *testing.T) {
	t.Parallel()

	defaultContext := context.Background()

	validDB, err := pgxmock.NewPool()
	if err != nil {
		panic(err)
	}

	testCases := []struct {
		name       string
		useDefault bool
		db         DBTX
	}{
		{
			name:       "not calling WithDB",
			useDefault: true,
			db:         nil,
		},
		{
			name:       "setting nil db",
			useDefault: false,
			db:         nil,
		},
		{
			name:       "setting valid db",
			useDefault: false,
			db:         validDB,
		},
	}

	for _, testCase := range testCases {
		t.Run(testCase.name, func(t *testing.T) {
			t.Parallel()

			ctx := defaultContext
			if !testCase.useDefault {
				ctx = WithDB(ctx, testCase.db)
			}

			require.Equal(t, testCase.db, GetDB(ctx))
		})
	}
}
