package feature

import "hwutil"

const (
	FeatureFlagEventSourcing = "FEATURE_FLAG_EVENT_SOURCING"
)

func IsEventSourcingEnabled() bool {
	return hwutil.HasEnv(FeatureFlagEventSourcing)
}
