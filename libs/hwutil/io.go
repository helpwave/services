package hwutil

import (
	"os"
	"os/signal"

	zlog "github.com/rs/zerolog/log"
	"golang.org/x/net/context"
)

// ReadFileOrEmpty will return the contents of a file or "" in case of error
func ReadFileOrEmpty(path string) string {
	data, err := os.ReadFile(path)
	if err != nil {
		return ""
	}
	return string(data)
}

// RunUntilInterrupted runs a function (on another thread)
// until it returns or until a SIGINT is received
// A classic use case for this is starting a listener, like a grpc service
// It is supposed to run on the main thread, I have no idea what will happen if you don't
func RunUntilInterrupted(ctx context.Context, fn func() error) (interrupted bool, err error) {
	log := zlog.Ctx(ctx)

	// set up SIGINT trap
	ctx, stopTrap := signal.NotifyContext(ctx, os.Interrupt)
	defer stopTrap()
	log.Debug().Msg("SIGINT trap set up")

	// spawn another (green-)thread to actually run the workload
	errChan := make(chan error, 1)
	go func() {
		errChan <- fn()
	}()

	// block main thread until we either get an error back from the server thread
	// or until we received an interrupt signal
	select {
	case err = <-errChan:
		return false, err
	case <-ctx.Done():
		return true, nil
	}
}
