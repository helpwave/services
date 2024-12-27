package hwgrpc_test

import (
	"context"
	"hwdb"
	"testing"

	"github.com/google/uuid"
	"github.com/pashagolub/pgxmock/v4"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"

	"common/hwgrpc"
)

func TestDBInterceptor(t *testing.T) {
	t.Parallel()

	type testCase struct {
		db      hwdb.DBTX
		handler func(t *testing.T, ctx context.Context)
	}

	existingDB, err := pgxmock.NewPool()
	if err != nil {
		panic(err)
	}

	testMatrix := map[string]testCase{
		"missing db": {
			db: nil,
			handler: func(t *testing.T, ctx context.Context) {
				t.Helper()

				// GetDB will return nil
				require.Nil(t, hwdb.GetDB(ctx))

				// MustGetDB will not work
				require.Panics(t, func() {
					hwdb.MustGetDB(ctx)
				})
			},
		},
		"existing db": {
			db: existingDB,
			handler: func(t *testing.T, ctx context.Context) {
				t.Helper()

				require.Equal(t, existingDB, hwdb.MustGetDB(ctx))
			},
		},
	}

	for name, test := range testMatrix {
		t.Run(name, func(t *testing.T) {
			t.Parallel()
			ctx := context.Background()

			//
			// Stream
			//

			streamInterceptor := hwgrpc.StreamDBInterceptor(test.db)
			streamHandlerWasCalled := false

			streamNext := func(srv any, stream grpc.ServerStream) error {
				streamHandlerWasCalled = true
				test.handler(t, stream.Context())
				return nil
			}

			stream := &fakeServerStream{ctx: ctx}
			err = streamInterceptor(ctx, stream, nil, streamNext)

			// next handler is properly called
			require.NoError(t, err)
			require.True(t, streamHandlerWasCalled)

			//
			// Unary
			//
			unaryInterceptor := hwgrpc.UnaryDBInterceptor(test.db)

			expValue := uuid.New()
			unaryHandlerWasCalled := false

			unaryNext := func(ctx context.Context, req any) (any, error) {
				unaryHandlerWasCalled = true
				test.handler(t, ctx)
				return expValue, nil
			}

			value, err := unaryInterceptor(ctx, nil, nil, unaryNext)

			// unaryNext handler is properly called
			require.NoError(t, err)
			require.True(t, unaryHandlerWasCalled)
			require.Equal(t, expValue, value)
		})
	}
}

type fakeServerStream struct {
	grpc.ServerStream
	ctx context.Context //nolint:containedctx
}

func (f *fakeServerStream) Context() context.Context {
	return f.ctx
}

func (f *fakeServerStream) SendMsg(_ any) error {
	return nil
}

func (f *fakeServerStream) RecvMsg(_ any) error {
	return nil
}
