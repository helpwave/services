package projections

import (
	"context"

	"github.com/rs/zerolog/log"
	"hwes/eventstoredb/projections/custom"
)

// StartProjections starts the passed projections, onErr may be nil and is called on the first subscription error
func StartProjections(ctx context.Context, onErr func(err error), projections ...custom.ICustomProjection) {
	errCh := make(chan error)

	for _, projection := range projections {
		name := projection.GetSubscriptionGroupName()

		// spawn new green thread, as Subscribe is blocking
		go func() {
			if err := projection.Subscribe(ctx); err != nil {
				log.Err(err).Msgf("could not subscribe to %s", name)
				errCh <- err // send error back to function thread
			}
		}()
	}

	err := <-errCh // wait for any errors

	if onErr != nil {
		onErr(err)
	}
}
