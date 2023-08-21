package tracking

import (
	"common"
	"context"
	"decaying_lru"
	zlog "github.com/rs/zerolog/log"
	"time"
)

const (
	PatientKey = "recently-viewed-patient"
)

var lru decaying_lru.DecayingLRU

func SetupTracking(serviceName string) {
	lru = decaying_lru.Setup(serviceName, 5, 4*24*time.Hour, 10)
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
