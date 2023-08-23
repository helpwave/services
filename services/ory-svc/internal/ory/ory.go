package ory

import (
	"common"
	"context"
	"github.com/google/uuid"
	ory "github.com/ory/client-go"
)

// TODO: Remove later on. Just for testing on production with example data.
var exampleOrganizationID = uuid.MustParse("3b25c6f5-4705-4074-9fc6-a50c28eba406")

func getConsentRequestForConsentChallenge(ctx context.Context, client *ory.APIClient, consentChallenge string) (*ory.OAuth2ConsentRequest, error) {
	req := client.
		OAuth2Api.
		GetOAuth2ConsentRequest(ctx).
		ConsentChallenge(consentChallenge)

	res, _, err := client.
		OAuth2Api.
		GetOAuth2ConsentRequestExecute(req)

	if err != nil {
		return nil, err
	}
	return res, nil
}

func getIdentity(ctx context.Context, client *ory.APIClient, id string) (*ory.Identity, error) {
	req := client.IdentityApi.GetIdentity(ctx, id)
	res, _, err := client.IdentityApi.GetIdentityExecute(req)
	if err != nil {
		return nil, err
	}
	return res, nil
}

func acceptConsentRequest(
	ctx context.Context,
	client *ory.APIClient,
	consentChallenge string,
	consentRequest *ory.OAuth2ConsentRequest,
	idTokenClaims *common.IDTokenClaims,
) (*ory.OAuth2RedirectTo, error) {
	req := client.OAuth2Api.AcceptOAuth2ConsentRequest(ctx).
		ConsentChallenge(consentChallenge).
		AcceptOAuth2ConsentRequest(ory.AcceptOAuth2ConsentRequest{
			GrantAccessTokenAudience: consentRequest.GetRequestedAccessTokenAudience(),
			GrantScope:               consentRequest.GetRequestedScope(),
			Session: &ory.AcceptOAuth2ConsentRequestSession{
				IdToken: idTokenClaims,
			},
		})

	res, _, err := client.OAuth2Api.AcceptOAuth2ConsentRequestExecute(req)

	if err != nil {
		return nil, err
	}
	return res, nil
}

// HandleOAuth2Consent implements a custom consent UI for the Ory Network https://www.ory.sh/docs/oauth2-oidc/custom-login-consent/flow#consent
// This function gets called by Hydra (OAuth2/OpenID provider) from the Ory Network
func HandleOAuth2Consent(ctx context.Context, oryClient *ory.APIClient, consentChallenge string) (*string, *common.IDTokenClaims, error) {
	ctx = prepareCtxForOry(ctx)

	// TODO: Increase overall resiliency to external endpoints

	// Get current flow
	consentRequest, err := getConsentRequestForConsentChallenge(ctx, oryClient, consentChallenge)
	if err != nil {
		return nil, nil, err
	}

	// TODO: Respect skip logic https://www.ory.sh/docs/oauth2-oidc/custom-login-consent/flow#skipping-consent-for-trusted-clients

	// Create id token claims for that identity
	idTokenClaims, err := CreateIdTokenForUser(ctx, oryClient, consentRequest.GetSubject())
	if err != nil {
		return nil, nil, err
	}

	// Accept the consent
	redirectAfterConsentRequest, err := acceptConsentRequest(ctx, oryClient, consentChallenge, consentRequest, idTokenClaims)
	if err != nil {
		return nil, nil, err
	}

	return &redirectAfterConsentRequest.RedirectTo, idTokenClaims, err
}

func CreateIdTokenForUser(ctx context.Context, oryClient *ory.APIClient, userId string) (*common.IDTokenClaims, error) {
	ctx = prepareCtxForOry(ctx)

	// Get the identity of the current flow that needs to give the consent
	identity, err := getIdentity(ctx, oryClient, userId)
	if err != nil {
		return nil, err
	}

	// Create id token claims for that identity
	idTokenClaims, err := createIdToken(identity)
	if err != nil {
		return nil, err
	}

	// Due to our current multi tenancy migration, we need to ensure that one valid organization id is inside the token,
	// in case of a race condition during the registration flow
	// TODO: Revisit
	if len(idTokenClaims.Organizations) <= 0 {
		idTokenClaims.Organizations = append(idTokenClaims.Organizations, exampleOrganizationID)
	}

	return idTokenClaims, nil
}

// UpdateIdentityMetadataPublic fully replaces metadata_public
func UpdateIdentityMetadataPublic(ctx context.Context, oryClient *ory.APIClient, id uuid.UUID, metadataPublic OryIdentityMetadataPublic) error {
	ctx = prepareCtxForOry(ctx)

	// TODO: Increase overall resiliency to external endpoints

	req := oryClient.IdentityApi.PatchIdentity(ctx, id.String())
	_, _, err := req.JsonPatch([]ory.JsonPatch{
		{
			Op:    "replace",
			Path:  "/metadata_public",
			Value: metadataPublic,
		},
	}).Execute()

	return err
}
