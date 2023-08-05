package ory

import (
	"common"
	"context"
	ory "github.com/ory/client-go"
)

// HandleOAuth2Consent implements a custom consent UI for the Ory Network https://www.ory.sh/docs/oauth2-oidc/custom-login-consent/flow#consent
// This function gets called by Hydra (OAuth2/OpenID provider) from the Ory Network
func HandleOAuth2Consent(ctx context.Context, oryClient *ory.APIClient, consentChallenge string) (*string, *common.IDTokenClaims, error) {
	ctx = prepareCtxForOry(ctx)

	// TODO: Increase overall resiliency to external endpoints

	// Get current flow
	getConsentRequest := oryClient.OAuth2Api.GetOAuth2ConsentRequest(ctx).ConsentChallenge(consentChallenge)
	getConsentResponse, _, err := oryClient.OAuth2Api.GetOAuth2ConsentRequestExecute(getConsentRequest)
	if err != nil {
		return nil, nil, err
	}

	// TODO: Respect skip logic https://www.ory.sh/docs/oauth2-oidc/custom-login-consent/flow#skipping-consent-for-trusted-clients

	// Get the identity of the current flow that needs to give the consent
	getIdentityRequest := oryClient.IdentityApi.GetIdentity(ctx, getConsentResponse.GetSubject())
	identity, _, err := oryClient.IdentityApi.GetIdentityExecute(getIdentityRequest)
	if err != nil {
		return nil, nil, err
	}

	// Create id token claims for that identity
	idTokenClaims, err := createIdToken(identity)
	if err != nil {
		return nil, nil, err
	}

	// Accept the consent
	acceptOAuth2ConsentRequest := oryClient.OAuth2Api.AcceptOAuth2ConsentRequest(ctx).
		ConsentChallenge(consentChallenge).
		AcceptOAuth2ConsentRequest(ory.AcceptOAuth2ConsentRequest{
			GrantAccessTokenAudience: getConsentResponse.GetRequestedAccessTokenAudience(),
			GrantScope:               getConsentResponse.GetRequestedScope(),
			Session: &ory.AcceptOAuth2ConsentRequestSession{
				IdToken: idTokenClaims,
			},
		})
	acceptOAuth2ConsentResponse, _, err := oryClient.OAuth2Api.AcceptOAuth2ConsentRequestExecute(acceptOAuth2ConsentRequest)

	return &acceptOAuth2ConsentResponse.RedirectTo, idTokenClaims, err
}
