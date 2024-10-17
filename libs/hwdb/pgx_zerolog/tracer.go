package pgx_zerolog

import (
	"context"
	"fmt"
	"telemetry"

	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/tracelog"
	"go.opentelemetry.io/otel/attribute"
	"go.opentelemetry.io/otel/codes"
	"go.opentelemetry.io/otel/trace"
)

type tracer struct {
	inner *tracelog.TraceLog
}

// impl CopyFromTracer interface

func (t tracer) TraceCopyFromStart(
	ctx context.Context,
	conn *pgx.Conn,
	data pgx.TraceCopyFromStartData,
) context.Context {
	return t.inner.TraceCopyFromStart(ctx, conn, data)
}

func (t tracer) TraceCopyFromEnd(ctx context.Context, conn *pgx.Conn, data pgx.TraceCopyFromEndData) {
	t.inner.TraceCopyFromEnd(ctx, conn, data)
}

// impl ConnectTracer interface

func (t tracer) TraceConnectStart(ctx context.Context, data pgx.TraceConnectStartData) context.Context {
	ctx, span, _ := telemetry.StartSpan(ctx, "pgx.connect")
	span.SetAttributes(attribute.String("server",
		fmt.Sprintf("%s:%d", data.ConnConfig.Host, data.ConnConfig.Port)))
	return t.inner.TraceConnectStart(ctx, data)
}

func (t tracer) TraceConnectEnd(ctx context.Context, data pgx.TraceConnectEndData) {
	t.inner.TraceConnectEnd(ctx, data)
	telemetry.StopSpanFromCtx(ctx)
}

// impl BatchTracer interface

func (t tracer) TraceBatchStart(ctx context.Context, conn *pgx.Conn, data pgx.TraceBatchStartData) context.Context {
	return t.inner.TraceBatchStart(ctx, conn, data)
}

func (t tracer) TraceBatchQuery(ctx context.Context, conn *pgx.Conn, data pgx.TraceBatchQueryData) {
	t.inner.TraceBatchQuery(ctx, conn, data)
}

func (t tracer) TraceBatchEnd(ctx context.Context, conn *pgx.Conn, data pgx.TraceBatchEndData) {
	t.inner.TraceBatchEnd(ctx, conn, data)
}

// impl QueryTracer interface

func (t tracer) TraceQueryStart(ctx context.Context, conn *pgx.Conn, data pgx.TraceQueryStartData) context.Context {
	ctx, span, _ := telemetry.StartSpan(ctx, "pgx.query")
	span.SetAttributes(attribute.String("sql", data.SQL))
	args := make([]string, len(data.Args))
	for i, val := range data.Args {
		args[i] = fmt.Sprintf("%v", val)
	}
	span.SetAttributes(attribute.StringSlice("args", args))
	return t.inner.TraceQueryStart(ctx, conn, data)
}

func (t tracer) TraceQueryEnd(ctx context.Context, conn *pgx.Conn, data pgx.TraceQueryEndData) {
	span := trace.SpanFromContext(ctx)
	if data.Err != nil {
		span.SetStatus(codes.Error, data.Err.Error())
	} else {
		span.SetStatus(codes.Ok, "")
	}
	span.SetAttributes(attribute.Int64("rows_affected", data.CommandTag.RowsAffected()))
	span.SetAttributes(attribute.String("command_tag", data.CommandTag.String()))
	t.inner.TraceQueryEnd(ctx, conn, data)
	span.End()
}

// NewTracer returns a tracer, which wraps a TraceLog, which itself wraps zerolog
// This tracer will emit logs using zerolog
// and create otel spans for some operations
func NewTracer() pgx.QueryTracer {
	return tracer{
		inner: &tracelog.TraceLog{
			Logger: newContextLogger(),
			// LogLevel is the level at which pgx will start calling zerolog
			// Trace, being the lowest level, will cause it to always be called
			LogLevel: tracelog.LogLevelTrace,
		},
	}
}
