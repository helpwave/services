package hwgrpc

import (
	"context"
	"fmt"
	"os"
	"runtime/debug"
	"telemetry"

	"common/hwerr"
	"common/locale"

	"github.com/prometheus/client_golang/prometheus/promauto"

	"github.com/grpc-ecosystem/go-grpc-middleware/v2/interceptors/recovery"
	"github.com/prometheus/client_golang/prometheus"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
)

// TODO: remove global state
var panicsRecovered prometheus.Counter

func recoveryHandlerFn() recovery.RecoveryHandlerFuncContext {
	return func(ctx context.Context, recovered any) (err error) {
		zlog.Ctx(ctx).
			Error().
			Any("recovered", recovered).
			Str("stack", string(debug.Stack())).
			Msg("recovered a panic")

		_, _ = fmt.Fprintln(os.Stderr, string(debug.Stack()))

		panicsRecovered.Inc()

		return hwerr.NewStatusError(ctx, codes.Internal, "panic recovered", locale.GenericError(ctx))
	}
}

func ensureCounter(ctx context.Context) {
	registry := telemetry.PrometheusRegistry(ctx)
	if registry == nil { // prometheus not set up
		return
	}

	// TODO: what if the counter already exists, and has values?
	// TODO: when this is not called, nil-pointer issues will arise
	panicsRecovered = promauto.With(registry).NewCounter(prometheus.CounterOpts{
		Name: "services_panics_recovered_total",
		Help: "Total number of panics recovered by PanicRecoverInterceptor",
	})
}

func UnaryPanicRecoverInterceptor(ctx context.Context) grpc.UnaryServerInterceptor {
	ensureCounter(ctx)

	return recovery.UnaryServerInterceptor(
		recovery.WithRecoveryHandlerContext(recoveryHandlerFn()),
	)
}

func StreamPanicRecoverInterceptor(ctx context.Context) grpc.StreamServerInterceptor {
	ensureCounter(ctx)

	return recovery.StreamServerInterceptor(
		recovery.WithRecoveryHandlerContext(recoveryHandlerFn()),
	)
}
