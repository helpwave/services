package hwgrpc

import (
	"context"
	"runtime/debug"
	"telemetry"

	"common/hwerr"
	"common/locale"

	"github.com/grpc-ecosystem/go-grpc-middleware/v2/interceptors/recovery"
	"github.com/prometheus/client_golang/prometheus"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
)

var panicsRecovered = telemetry.NewLazyCounter(prometheus.CounterOpts{
	Name: "services_panics_recovered_total",
	Help: "Total number of panics recovered by PanicRecoverInterceptor",
})

func recoveryHandlerFn() recovery.RecoveryHandlerFuncContext {
	return func(ctx context.Context, recovered any) (err error) {
		zlog.Ctx(ctx).
			Error().
			Any("recovered", recovered).
			Str("stack", string(debug.Stack())).
			Msg("recovered a panic")

		panicsRecovered.Counter().Inc()

		return hwerr.NewStatusError(ctx, codes.Internal, "panic recovered", locale.GenericError(ctx))
	}
}

func UnaryPanicRecoverInterceptor() grpc.UnaryServerInterceptor {
	panicsRecovered.Ensure()

	return recovery.UnaryServerInterceptor(
		recovery.WithRecoveryHandlerContext(recoveryHandlerFn()),
	)
}

func StreamPanicRecoverInterceptor() grpc.StreamServerInterceptor {
	panicsRecovered.Ensure()

	return recovery.StreamServerInterceptor(
		recovery.WithRecoveryHandlerContext(recoveryHandlerFn()),
	)
}
