package tracking

import (
	"common/auth"
	"context"
	"decaying_lru"
	"errors"
	zlog "github.com/rs/zerolog/log"
	"hwutil"
	"time"
)

const (
	PatientKey = "recently-viewed-patient"
	WardKey    = "recently-viewed-ward"
)

var lru decaying_lru.DecayingLRU

func SetupTracking(serviceName string, lruSize int64, decay time.Duration, invP int) {
	redisOptions := decaying_lru.DefaultRedisOptions(serviceName)

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

	lru = decaying_lru.CustomSetup(serviceName, lruSize, decay, invP, redisOptions, nil)
}

func getUserID(ctx context.Context) string {
	log := zlog.Ctx(ctx)

	userID, err := auth.GetUserID(ctx)

	if err != nil {
		log.Error().Err(err).Msg("could not get userID from context, can't add item to LRU")
		return ""
	}
	log.Trace().Str("userID", userID.String()).Msg("getUserID: got userid")
	return userID.String()
}

// AddPatientToRecentActivity adds a patient to the user's recent activity,
// only works, when
//   - SetupTracking was called earlier
//   - the context originates from an authenticated request
func AddPatientToRecentActivity(ctx context.Context, patientID string) {
	if userID := getUserID(ctx); userID != "" {
		if err := lru.AddItemForUser(PatientKey, userID, patientID); err != nil {
			zlog.Ctx(ctx).Error().Err(err).Msg("could not add patient to recent activity")
		}
	}
}

// RemovePatientFromRecentActivity removes a patient from the current user's recent activity
// only works, when
//   - SetupTracking was called earlier
//   - the context originates from an authenticated request
func RemovePatientFromRecentActivity(ctx context.Context, patientID string) {
	if userID := getUserID(ctx); userID != "" {
		_ = lru.RemoveItemForUser(PatientKey, userID, patientID)
	}
}

// GetRecentPatientsForUser returns patient ids from the current user's recent activity
// only works, when
//   - SetupTracking was called earlier
//   - the context originates from an authenticated request
func GetRecentPatientsForUser(ctx context.Context) ([]string, error) {
	userID := getUserID(ctx)
	if userID == "" {
		return nil, errors.New("GetRecentPatientsForUser called, but context has no userID")
	}
	return lru.GetItemsForUser(PatientKey, userID)
}

// AddWardToRecentActivity adds a ward to the user's recent activity,
// only works, when
//   - SetupTracking was called earlier
//   - the context originates from an authenticated request
func AddWardToRecentActivity(ctx context.Context, wardID string) {
	if userID := getUserID(ctx); userID != "" {
		if err := lru.AddItemForUser(WardKey, userID, wardID); err != nil {
			zlog.Ctx(ctx).Error().Err(err).Msg("could not add ward to recent activity")
		}
	}
}

// RemoveWardFromRecentActivity removes a ward from the current user's recent activity
// only works, when
//   - SetupTracking was called earlier
//   - the context originates from an authenticated request
func RemoveWardFromRecentActivity(ctx context.Context, wardID string) {
	if userID := getUserID(ctx); userID != "" {
		_ = lru.RemoveItemForUser(WardKey, userID, wardID)
	}
}

// GetRecentWardsForUser returns ward ids from the current user's recent activity
// only works, when
//   - SetupTracking was called earlier
//   - the context originates from an authenticated request
func GetRecentWardsForUser(ctx context.Context) ([]string, error) {
	userID := getUserID(ctx)
	if userID == "" {
		return nil, errors.New("GetRecentWardsForUser called, but context has no userID")
	}
	return lru.GetItemsForUser(WardKey, userID)
}
