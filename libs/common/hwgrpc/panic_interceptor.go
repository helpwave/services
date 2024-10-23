package hwgrpc

import (
	"context"
	"fmt"
	"github.com/grpc-ecosystem/go-grpc-middleware/v2/interceptors/recovery"
	"github.com/prometheus/client_golang/prometheus"
	"github.com/prometheus/client_golang/prometheus/promauto"
	zlog "github.com/rs/zerolog/log"
)

var panicsRecovered = promauto.NewCounter(prometheus.CounterOpts{
	Name: "services_panics_recovered",
	Help: "Total number of panics recovered by PanicRecoverInterceptor",
})

// TODO: alternatively return status.Errorf in case this runs as most-outer handler
func recoveryHandler(ctx context.Context, recovered any) (err error) {
	zlog.Ctx(ctx).
		Error().
		Any("recovered", recovered).
		Msg("recovered a panic")

	panicsRecovered.Inc()

	return fmt.Errorf("internal server error")
}

var opt = recovery.WithRecoveryHandlerContext(recoveryHandler)

var UnaryPanicRecoverInterceptor = recovery.UnaryServerInterceptor(opt)
var StreamPanicRecoverInterceptor = recovery.StreamServerInterceptor(opt)
