package tracking

import (
	"common"
	"context"
	"decaying_lru"
	zlog "github.com/rs/zerolog/log"
	"hwutil"
	"time"
)

const (
	PatientKey = "recently-viewed-patient"
)

var lru decaying_lru.DecayingLRU

func SetupTracking(serviceName string, lruSize int64, decay time.Duration, invP int) {
	redisOptions := decaying_lru.DefaultRedisOptions(serviceName)

	// Default ENVs not set? try SECRETSTORE_ versions instead

	if redisOptions.Addr == "" {
		redisOptions.Addr = hwutil.GetEnvOr("SECRETSTORE_REDIS_HOST", "") + ":6379"
	}

	if redisOptions.Username == "" {
		redisOptions.Username = hwutil.GetEnvOr("SECRETSTORE_REDIS_USERNAME", "")
	}

	if redisOptions.Password == "" {
		redisOptions.Password = hwutil.GetEnvOr("SECRETSTORE_REDIS_PASSWORD", "")
	}

	lru = decaying_lru.CustomSetup(serviceName, lruSize, decay, invP, redisOptions)
}

func getUserID(ctx context.Context) string {
	log := zlog.Ctx(ctx)

	userID, err := common.GetUserID(ctx)

	if err != nil {
		log.Error().Err(err).Msg("could not get userID from context, can't add item to LRU")
		return ""
	}
	return userID.String()
}

// AddPatientToRecentActivity adds a patient to the user's recent activity,
// only works, when
//   - SetupTracking was called earlier
//   - the context originates from an authenticated request
func AddPatientToRecentActivity(ctx context.Context, patientID string) {
	if userID := getUserID(ctx); userID != "" {
		_ = lru.AddItemForUser(PatientKey, userID, patientID)
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
