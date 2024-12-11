package auth

import (
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestIDTokenClaims_AsExpected(t *testing.T) {
	tests := []struct {
		name          string
		claims        IDTokenClaims
		expectedError bool
	}{
		{
			name: "Valid IDTokenClaims",
			claims: IDTokenClaims{
				Sub:               "6759b6d7-a864-800c-a2e9-a780a83ec767",
				Email:             "test@example.com",
				Name:              "Test User",
				PreferredUsername: "testuser",
				Organization: &OrganizationTokenClaim{
					Id:   "6759b6d7-a864-800c-a2e9-a780a83ec767",
					Name: "Example Org",
				},
			},
			expectedError: false,
		},
		{
			name: "Missing Sub",
			claims: IDTokenClaims{
				Email:             "test@example.com",
				Name:              "Test User",
				PreferredUsername: "testuser",
				Organization: &OrganizationTokenClaim{
					Id:   "6759b6d7-a864-800c-a2e9-a780a83ec767",
					Name: "Example Org",
				},
			},
			expectedError: true,
		},
		{
			name: "Invalid Email",
			claims: IDTokenClaims{
				Sub:               "6759b6d7-a864-800c-a2e9-a780a83ec767",
				Email:             "invalid-email",
				Name:              "Test User",
				PreferredUsername: "testuser",
				Organization: &OrganizationTokenClaim{
					Id:   "6759b6d7-a864-800c-a2e9-a780a83ec767",
					Name: "Example Org",
				},
			},
			expectedError: true,
		},
		{
			name: "Missing Organization",
			claims: IDTokenClaims{
				Sub:               "6759b6d7-a864-800c-a2e9-a780a83ec767",
				Email:             "test@example.com",
				Name:              "Test User",
				PreferredUsername: "testuser",
			},
			expectedError: true,
		},
		{
			name: "Invalid Organization ID",
			claims: IDTokenClaims{
				Sub:               "6759b6d7-a864-800c-a2e9-a780a83ec767",
				Email:             "test@example.com",
				Name:              "Test User",
				PreferredUsername: "testuser",
				Organization: &OrganizationTokenClaim{
					Id:   "asdasd",
					Name: "Example Org",
				},
			},
			expectedError: true,
		},
		{
			name: "Default Organization ID",
			claims: IDTokenClaims{
				Sub:               "6759b6d7-a864-800c-a2e9-a780a83ec767",
				Email:             "test@example.com",
				Name:              "Test User",
				PreferredUsername: "testuser",
				Organization: &OrganizationTokenClaim{
					Id:   "",
					Name: "",
				},
			},
			expectedError: true,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			err := tt.claims.AsExpected()
			if tt.expectedError {
				assert.Error(t, err)
			} else {
				assert.NoError(t, err)
			}
		})
	}
}
