package aggregate_test

import (
	"hwes"
	"testing"
)

func MustApplyEvent(t *testing.T, aggregate hwes.Aggregate, newEvent func() (hwes.Event, error)) {
	event, err := newEvent()
	if err != nil {
		t.Error(err)
	}

	if err := aggregate.Progress(event); err != nil {
		t.Error(err)
	}
}
