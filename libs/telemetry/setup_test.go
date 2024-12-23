package telemetry

import (
	"context"
	"testing"

	"github.com/prometheus/client_golang/prometheus"
	"github.com/stretchr/testify/require"
)

func TestPrometheusRegistry(t *testing.T) {
	t.Parallel()

	defaultContext := context.Background()

	testCases := []struct {
		name       string
		useDefault bool
		registry   *prometheus.Registry
	}{
		{
			name:       "not calling WithPrometheusRegistry",
			useDefault: true,
			registry:   nil,
		},
		{
			name:       "setting nil registry",
			useDefault: false,
			registry:   nil,
		},
		{
			name:       "setting valid registry",
			useDefault: false,
			registry:   prometheus.NewRegistry(),
		},
	}

	for _, testCase := range testCases {
		t.Run(testCase.name, func(t *testing.T) {
			t.Parallel()

			ctx := defaultContext
			if !testCase.useDefault {
				ctx = WithPrometheusRegistry(ctx, testCase.registry)
			}

			require.Equal(t, testCase.registry, PrometheusRegistry(ctx))
		})
	}
}
