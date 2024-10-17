package hwgrpc

import (
	"context"
	"telemetry"

	otelCodes "go.opentelemetry.io/otel/codes"
	"go.opentelemetry.io/otel/trace"
	"google.golang.org/grpc"
)

func UnarySpanInterceptor(ctx context.Context, req any, _ *grpc.UnaryServerInfo, next grpc.UnaryHandler) (any, error) {
	ctx = spanInterceptorPreNext(ctx)
	res, err := next(ctx, req)
	spanInterceptorPostNext(ctx, err)
	return res, err
}

func StreamSpanInterceptor(req any, stream grpc.ServerStream, _ *grpc.StreamServerInfo, next grpc.StreamHandler) error {
	ctx := spanInterceptorPreNext(stream.Context())
	stream = WrapServerStream(stream, ctx)
	err := next(req, stream)
	spanInterceptorPostNext(ctx, err)
	return err
}

// handlerSpanInterceptor opens and closes a span around the next in the chain
// it should only be used as the last element in the interceptor chain before the handler
func spanInterceptorPreNext(ctx context.Context) context.Context {
	ctx, _, _ = telemetry.StartSpan(ctx, "handler")
	return ctx
}

func spanInterceptorPostNext(ctx context.Context, err error) {
	span := trace.SpanFromContext(ctx)
	if err != nil {
		span.SetStatus(otelCodes.Error, err.Error())
	}
	span.End()
}
