package tracking

import (
	"common/auth"
	"context"
	"decayinglru"
	"hwutil"
	"time"

	zlog "github.com/rs/zerolog/log"
)

const (
	PatientKey = "recently-viewed-patient"
	WardKey    = "recently-viewed-ward"
)

var lru decayinglru.DecayingLRU

func SetupTracking(ctx context.Context, serviceName string, lruSize int64, decay time.Duration, invP int) {
	redisOptions := decayinglru.DefaultRedisOptions(serviceName)

	// Default ENVs not set? try SECRETSTORE_ versions instead

	if redisOptions.Addr == "" {
		redisOptions.Addr = hwutil.GetEnvOr("SECRETSTORE_REDIS_HOST", "")
	}

	if redisOptions.Username == "" {
		redisOptions.Username = hwutil.GetEnvOr("SECRETSTORE_REDIS_USERNAME", "")
	}

	if redisOptions.Password == "" {
		redisOptions.Password = hwutil.GetEnvOr("SECRETSTORE_REDIS_PASSWORD", "")
	}

	lru = decayinglru.CustomSetup(ctx, serviceName, lruSize, decay, invP, redisOptions, nil)
}

func getUserID(ctx context.Context) string {
	log := zlog.Ctx(ctx)

	userID := auth.MustGetUserID(ctx)

	log.Trace().Str("userID", userID.String()).Msg("getUserID: got userid")
	return userID.String()
}

// AddPatientToRecentActivity adds a patient to the user's recent activity,
// only works, when
//   - SetupTracking was called earlier
//   - the context originates from an authenticated request
func AddPatientToRecentActivity(ctx context.Context, patientID string) {
	userID := getUserID(ctx)
	if err := lru.AddItemForUser(ctx, PatientKey, userID, patientID); err != nil {
		zlog.Ctx(ctx).Error().Err(err).Msg("could not add patient to recent activity")
	}
}

// RemovePatientFromRecentActivity removes a patient from the current user's recent activity
// only works, when
//   - SetupTracking was called earlier
//   - the context originates from an authenticated request
func RemovePatientFromRecentActivity(ctx context.Context, patientID string) {
	userID := getUserID(ctx)
	_ = lru.RemoveItemForUser(ctx, PatientKey, userID, patientID)
}

// GetRecentPatientsForUser returns patient ids from the current user's recent activity
// only works, when
//   - SetupTracking was called earlier
//   - the context originates from an authenticated request
func GetRecentPatientsForUser(ctx context.Context) ([]string, error) {
	userID := getUserID(ctx)
	return lru.GetItemsForUser(ctx, PatientKey, userID)
}

// AddWardToRecentActivity adds a ward to the user's recent activity,
// only works, when
//   - SetupTracking was called earlier
//   - the context originates from an authenticated request
func AddWardToRecentActivity(ctx context.Context, wardID string) {
	userID := getUserID(ctx)
	if err := lru.AddItemForUser(ctx, WardKey, userID, wardID); err != nil {
		zlog.Ctx(ctx).Error().Err(err).Msg("could not add ward to recent activity")
	}
}

// RemoveWardFromRecentActivity removes a ward from the current user's recent activity
// only works, when
//   - SetupTracking was called earlier
//   - the context originates from an authenticated request
func RemoveWardFromRecentActivity(ctx context.Context, wardID string) {
	userID := getUserID(ctx)
	_ = lru.RemoveItemForUser(ctx, WardKey, userID, wardID)
}

// GetRecentWardsForUser returns ward ids from the current user's recent activity
// only works, when
//   - SetupTracking was called earlier
//   - the context originates from an authenticated request
func GetRecentWardsForUser(ctx context.Context) ([]string, error) {
	return lru.GetItemsForUser(ctx, WardKey, getUserID(ctx))
}

// SetLRU overwrites the lru, to use a custom setup, instead of SetupTracking (e.g., for testing)
func SetLRU(dlru decayinglru.DecayingLRU) {
	lru = dlru
}
