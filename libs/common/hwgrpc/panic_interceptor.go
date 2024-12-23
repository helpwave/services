package hwgrpc

import (
	"context"
	"fmt"
	"os"
	"runtime/debug"

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

func ensureCounter(registry *prometheus.Registry) {
	if registry != nil {
		panicsRecovered = promauto.With(registry).NewCounter(prometheus.CounterOpts{
			Name: "services_panics_recovered_total",
			Help: "Total number of panics recovered by PanicRecoverInterceptor",
		})
	}
}

func UnaryPanicRecoverInterceptor(registry *prometheus.Registry) grpc.UnaryServerInterceptor {
	ensureCounter(registry)

	return recovery.UnaryServerInterceptor(
		recovery.WithRecoveryHandlerContext(recoveryHandlerFn()),
	)
}

func StreamPanicRecoverInterceptor(registry *prometheus.Registry) grpc.StreamServerInterceptor {
	ensureCounter(registry)

	return recovery.StreamServerInterceptor(
		recovery.WithRecoveryHandlerContext(recoveryHandlerFn()),
	)
}
