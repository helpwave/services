package logging

import (
	"context"
	"github.com/rs/zerolog"
	"go.opentelemetry.io/otel"
	"go.opentelemetry.io/otel/attribute"
	"go.opentelemetry.io/otel/codes"
	"go.opentelemetry.io/otel/trace"
)

// StartSpan starts a new span and returns a context with both span information and a new span-aware logger attached.
// Said logger is also returned, if you have another logger in use already, replace it with this one!
//
//	ctx, span, log := common.StartSpan(ctx, "some name")
//	defer span.End()
func StartSpan(ctx context.Context, spanName string, opts ...trace.SpanStartOption) (context.Context, trace.Span, zerolog.Logger) {
	tracer := otel.Tracer("") // tracer with default name
	ctx, span := tracer.Start(ctx, spanName, opts...)

	// 1. get old logger from context,
	// 2. attach new context to it
	//    (yes this is needed, the logger attached to the new context, still references the old context, if any)
	// 3. get a new context with new logger attached
	logger := zerolog.Ctx(ctx).With().Ctx(ctx).Logger()
	ctx = logger.WithContext(ctx)

	return ctx, span, logger
}

// StopSpanFromCtx is short for otelTrace.SpanFromContext(ctx).End(opts...)
// and should only be used when you lost access to the span object
func StopSpanFromCtx(ctx context.Context, opts ...trace.SpanEndOption) {
	trace.SpanFromContext(ctx).End(opts...)
}

// SetSpanAttributes is a wrapper aroundtrace.SpanFromContext(ctx).SetAttributes(kv...)
// Also see SetSpanStr
//
//	SetSpanAttributes(ctx, attribute.String("key", "value"))
func SetSpanAttributes(ctx context.Context, kv ...attribute.KeyValue) {
	trace.SpanFromContext(ctx).SetAttributes(kv...)
}

// SetSpanStr sets a string attribute to the current span
// Also see SetSpanAttributes
//
//	SetSpanStr(ctx, "key", "value")
func SetSpanStr(ctx context.Context, key, value string) {
	SetSpanAttributes(ctx, attribute.String(key, value))
}

// zerologTraceHook calls addSpanIdToLogEvent and TODO for log events
func zerologTraceHook() zerolog.HookFunc {
	return func(event *zerolog.Event, level zerolog.Level, message string) {
		span := trace.SpanFromContext(event.GetCtx())

		if level == zerolog.NoLevel || level < zerolog.GlobalLevel() || !event.Enabled() || !span.IsRecording() {
			// allows us to find logs which are not sent to our tracing infra, more of a backup
			event.Bool("untraced", true)
			return
		}

		addSpanIdToLogEvent(span, event)
		addLogEventToSpan(span, level, message)
	}
}

// addSpanIdToLogEvent adds a span's id and its trace's id to a zerolog.Event
// this allows us to query a log database for log events, which arose in a span of interest
// We might have to do this because we don't have access to
// additional log fields in the span event added by addLogEventToSpan
func addSpanIdToLogEvent(span trace.Span, event *zerolog.Event) {
	ctx := span.SpanContext()
	if ctx.HasTraceID() {
		event.Str("traceId", ctx.TraceID().String())
	}
	if ctx.HasSpanID() {
		event.Str("spanId", ctx.SpanID().String())
	}
}

// addLogEventToSpan adds a new otel event for a log event to the given span
func addLogEventToSpan(span trace.Span, level zerolog.Level, message string) {
	// Unlike logrus or exp/slog, zerolog does not give hooks the ability to get the whole event/message with all its key-values
	// see: https://github.com/rs/zerolog/issues/300

	span.AddEvent("log",
		trace.WithAttributes(
			attribute.String("log.severity", level.String()),
			attribute.String("log.message", message),
		),
	)

	// not sure if this is the best idea
	if level >= zerolog.ErrorLevel {
		span.SetStatus(codes.Error, message)
	}
}
