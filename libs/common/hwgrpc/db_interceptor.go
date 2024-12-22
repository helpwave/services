package hwgrpc

import (
	"context"
	"google.golang.org/grpc"
	"hwdb"
)

func UnaryDBInterceptor(db hwdb.DBTX) grpc.UnaryServerInterceptor {
	return func(
		ctx context.Context,
		req any,
		_ *grpc.UnaryServerInfo,
		next grpc.UnaryHandler,
	) (any, error) {
		return next(hwdb.WithDB(ctx, db), req)
	}
}

func StreamDBInterceptor(db hwdb.DBTX) grpc.StreamServerInterceptor {
	return func(
		req any,
		stream grpc.ServerStream,
		_ *grpc.StreamServerInfo,
		next grpc.StreamHandler,
	) error {
		ctx := hwdb.WithDB(stream.Context(), db)
		stream = WrapServerStream(stream, ctx)
		return next(req, stream)
	}
}
