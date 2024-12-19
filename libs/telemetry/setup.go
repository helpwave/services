package telemetry

import (
	"context"
	"errors"
	"hwutil"
	"hwutil/errs"
	"net/http"
	"os"
	"time"

	"github.com/prometheus/client_golang/prometheus/promauto"

	"github.com/prometheus/client_golang/prometheus"
	"github.com/prometheus/client_golang/prometheus/promhttp"
	"github.com/rs/zerolog"
	"github.com/rs/zerolog/log"
)

func SetupLogging(mode, rawLevel, service, version string) {
	zerolog.TimeFieldFormat = zerolog.TimeFormatUnix

	// in production, we use the default JSON output (os.Stdout),
	// in development, we use the pretty-printing ConsoleWriter
	if mode != "production" {
		log.Logger = log.Output(zerolog.ConsoleWriter{Out: os.Stdout})
	}

	// base logger, all kinds of other data may be attached for more specific loggers
	// (e.g. as done in common.loggingUnaryInterceptor)
	log.Logger = log.With().
		Caller().
		Str("version", version).
		Str("service", service).
		Logger().
		Hook(zerologTraceHook())

	// attempt to parse level, we can already use the current logger if it fails
	level, err := zerolog.ParseLevel(rawLevel)
	if err != nil {
		log.Fatal().Err(err).Msg("could not parse LOG_LEVEL")
	}
	log.Logger = log.Level(level)

	// apparently the Default Logger (log.Logger, e.g. used like this: zerolog.Info().Msg(..))
	// is not automatically the DefaultContextLogger (e.g. used like this: zerolog.Ctx(ctx).Info().Msg(..))
	zerolog.DefaultContextLogger = &log.Logger
	log.Info().Msg("Logging is set up")
}

func startMetricsServer(ctx context.Context, addr string, shutdown func(error)) {
	reg := PrometheusRegistry(ctx)
	server := &http.Server{
		Addr: addr,
		Handler: promhttp.InstrumentMetricHandler(
			reg,
			promhttp.HandlerFor(reg, promhttp.HandlerOpts{}),
		),
		ReadHeaderTimeout: time.Second * 30, // prevent potential slowloris attack
	}
	go func() {
		err := server.ListenAndServe()
		if errors.Is(err, http.ErrServerClosed) {
			err = nil
		}
		if shutdown != nil {
			shutdown(err)
		}
	}()

	// close if context dies,
	// yes, this keeps this go routine open, even if the server stops,
	// but as we call common.Shutdown in that case, the context is closed right after anyway
	<-ctx.Done()

	// server.Shutdown will wait for all connections to close first,
	// unless the provided context closes first, as the existing ctx is already closed
	// we do not re-use it
	// instead we give it one second
	ctx, cancel := context.WithTimeout(context.Background(), time.Second)
	err := server.Shutdown(ctx)
	if err != nil {
		log.Ctx(ctx).Warn().Err(err).Msg("error while shutting down")
	}
	cancel() // prevent mem leak
}

type promRegKey struct{}

func PrometheusRegistry(ctx context.Context) *prometheus.Registry {
	value := ctx.Value(promRegKey{})
	reg, ok := value.(*prometheus.Registry)
	if !ok {
		panic(errs.NewCastError("*prometheus.Registry", value))
	}
	return reg
}

// SetupMetrics will start a new http server for prometheus to scrape from
func SetupMetrics(ctx context.Context, shutdown func(error)) context.Context {
	// create new prometheus registry, we do not use the global default one,
	// as it causes problems with tests
	prometheusRegistry := prometheus.NewRegistry()
	ctx = context.WithValue(ctx, promRegKey{}, prometheusRegistry)

	l := log.Ctx(ctx)

	addr := hwutil.GetEnvOr("METRICS_ADDR", "")

	if addr == "" {
		l.Warn().Msg("METRICS_ADDR not set, will not export metrics")
		return ctx
	}

	l.Info().Str("addr", addr).Msg("starting metrics server")

	go startMetricsServer(ctx, addr, shutdown)
	return ctx
}

// LazyCounter prevents access to PrometheusRegistry, before it is initialized
// by creating the counter only when it is needed
type LazyCounter struct {
	opts    prometheus.CounterOpts
	counter *prometheus.Counter
}

func NewLazyCounter(opts prometheus.CounterOpts) LazyCounter {
	return LazyCounter{
		opts:    opts,
		counter: nil,
	}
}

func (lc *LazyCounter) Counter(ctx context.Context) prometheus.Counter {
	if lc.counter != nil {
		return *lc.counter
	}
	lc.counter = hwutil.PtrTo(promauto.With(PrometheusRegistry(ctx)).NewCounter(lc.opts))
	return *lc.counter
}

func (lc *LazyCounter) Ensure(ctx context.Context) {
	lc.Counter(ctx)
}
