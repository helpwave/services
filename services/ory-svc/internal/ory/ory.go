package ory

import (
	"context"
	ory "github.com/ory/client-go"
)

func HandleOAuth2Consent(ctx context.Context, oryClient *ory.APIClient, consentChallenge string) (*string, error) {
	ctx = prepareCtxForOry(ctx)

	// Get current consent session
	getConsentRequest := oryClient.OAuth2Api.GetOAuth2ConsentRequest(ctx).ConsentChallenge(consentChallenge)
	getConsentResponse, _, err := oryClient.OAuth2Api.GetOAuth2ConsentRequestExecute(getConsentRequest)
	if err != nil {
		return nil, err
	}

	// TODO: Respect skip logic https://www.ory.sh/docs/oauth2-oidc/custom-login-consent/flow#skipping-consent-for-trusted-clients

	// Get the identity that needs to give the consent
	getIdentityRequest := oryClient.IdentityApi.GetIdentity(ctx, getConsentResponse.GetSubject())
	identity, _, err := oryClient.IdentityApi.GetIdentityExecute(getIdentityRequest)
	if err != nil {
		return nil, err
	}

	// Create an identity token for that session
	idToken, err := createIdToken(identity)
	if err != nil {
		return nil, err
	}

	// Accept the consent
	acceptOAuth2ConsentRequest := oryClient.OAuth2Api.AcceptOAuth2ConsentRequest(ctx).
		ConsentChallenge(consentChallenge).
		AcceptOAuth2ConsentRequest(ory.AcceptOAuth2ConsentRequest{
			GrantAccessTokenAudience: getConsentResponse.GetRequestedAccessTokenAudience(),
			GrantScope:               getConsentResponse.GetRequestedScope(),
			Session: &ory.AcceptOAuth2ConsentRequestSession{
				IdToken: idToken,
			},
		})
	acceptOAuth2ConsentResponse, _, err := oryClient.OAuth2Api.AcceptOAuth2ConsentRequestExecute(acceptOAuth2ConsentRequest)

	return &acceptOAuth2ConsentResponse.RedirectTo, nil
}
