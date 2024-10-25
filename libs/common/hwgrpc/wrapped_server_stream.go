package hwgrpc

import (
	"context"

	middleware "github.com/grpc-ecosystem/go-grpc-middleware/v2"
	"google.golang.org/grpc"
)

func WrapServerStream(stream grpc.ServerStream, ctx context.Context) grpc.ServerStream {
	wrappedServerStream := middleware.WrapServerStream(stream)
	wrappedServerStream.WrappedContext = ctx
	return wrappedServerStream
}
