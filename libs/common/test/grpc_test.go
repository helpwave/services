package test

import (
	"github.com/google/uuid"
	"testing"
)

// yes, we are hwtesting a test library

// TestAuthenticatedUserMetadataDoesNotCrash may fail if:
// - AuthenticatedUserMetadata accesses the AuthenticatedUserClaim map incorrectly
// - AuthenticatedUserClaim map is not JSON-able
func TestAuthenticatedUserMetadataDoesNotCrash(t *testing.T) {
	_ = AuthenticatedUserMetadata(uuid.NewString())
}
