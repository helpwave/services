package hwgrpc

import (
	"context"
	"telemetry"

	"github.com/dapr/dapr/pkg/proto/runtime/v1"
	"github.com/grpc-ecosystem/go-grpc-middleware/v2/metadata"
	"github.com/rs/zerolog"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

func UnaryLoggingInterceptor(
	ctx context.Context,
	req any,
	info *grpc.UnaryServerInfo,
	next grpc.UnaryHandler,
) (any, error) {
	ctx, span, _ := telemetry.StartSpan(ctx, "hwgrpc.UnaryLoggingInterceptor")
	defer span.End()

	ctx = loggingInterceptorPreNext(ctx, req, info.FullMethod)
	res, err := next(ctx, req)
	loggingInterceptorPostNext(ctx, err)
	return res, err
}

func StreamLoggingInterceptor(
	req any,
	stream grpc.ServerStream,
	info *grpc.StreamServerInfo,
	next grpc.StreamHandler,
) error {
	ctx, span, _ := telemetry.StartSpan(stream.Context(), "hwgrpc.StreamLoggingInterceptor")
	defer span.End()
	stream = WrapServerStream(stream, ctx)

	ctx = loggingInterceptorPreNext(stream.Context(), req, info.FullMethod)
	stream = WrapServerStream(stream, ctx)
	err := next(req, stream)
	loggingInterceptorPostNext(ctx, err)
	return err
}

func loggingInterceptorPreNext(ctx context.Context, req any, grpcFullMethod string) context.Context {
	ctx, span, log := telemetry.StartSpan(ctx, "hwgrpc.loggingInterceptorPreNext")
	defer span.End()

	metaData := metadata.ExtractIncoming(ctx)

	// Add request information
	builder := log.
		With().
		Str("handler", grpcFullMethod)

	omitBody := false

	// additional information for pub/sub events
	// TODO: make sure this is picked up in otel propagation
	if req, ok := req.(*runtime.TopicEventRequest); ok {
		if traceparent, ok := req.GetExtensions().Fields["traceparent"]; ok {
			builder = builder.Str("traceparent", traceparent.GetStringValue())
		}
		builder = builder.Str("eventID", req.Id)

		// at this point in the chain we have no control about what data may be logged for events,
		// so we can't log anything for privacy and/or legal reasons, the event handler can log though
		omitBody = true
	}

	// this is the logger that should be used for this request
	log = builder.Logger()

	// context, with new logger attached
	ctx = log.WithContext(ctx)

	log.Trace().Interface("metaData", redactMetadata(metaData)).Send()

	logBody := req

	// custom map instead, if implemented
	if loggable, ok := req.(telemetry.Loggable); ok {
		logBody = loggable.LoggableFields()
	}
	if !omitBody {
		log.Debug().Interface("body", logBody).Type("bodyType", req).Send()
	}

	return ctx
}

func loggingInterceptorPostNext(ctx context.Context, err error) {
	_, span, log := telemetry.StartSpan(ctx, "hwgrpc.loggingInterceptorPostNext")
	defer span.End()

	if err != nil {
		statusError := status.Convert(err)
		code := statusError.Code().String()
		message := statusError.Message()
		details := statusError.Details()

		log.
			WithLevel(resolveLogLevelForError(err)).
			Err(err).
			Str("code", code).
			Interface("details", details).
			Msg(message)
	} else {
		log.
			Info().
			Str("code", codes.OK.String()).
			Msg("Ok")
	}
}

// resolveLogLevelForError is primary used to raise the log level on specific errors
func resolveLogLevelForError(err error) zerolog.Level {
	statusError := status.Convert(err)
	if statusError.Code() == codes.Internal {
		return zerolog.ErrorLevel
	}

	return zerolog.WarnLevel
}

func redactMetadata(m metadata.MD) metadata.MD {
	if arr := m["authorization"]; arr != nil {
		for i := range arr {
			arr[i] = telemetry.OmitAll(arr[i])
		}
	}
	return m
}
