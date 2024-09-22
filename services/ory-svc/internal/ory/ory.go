package ory

import (
	"common"
	"context"
	userSvcPb "gen/services/user_svc/v1"
	"github.com/google/uuid"
	ory "github.com/ory/client-go"
	"hwutil"
)

// TODO: Remove later on. Just for hwtesting on production with example data.
var exampleOrganizationID = uuid.MustParse("3b25c6f5-4705-4074-9fc6-a50c28eba406")

func getConsentRequestForConsentChallenge(ctx context.Context, client *ory.APIClient, consentChallenge string) (*ory.OAuth2ConsentRequest, error) {
	req := client.
		OAuth2API.
		GetOAuth2ConsentRequest(ctx).
		ConsentChallenge(consentChallenge)

	res, _, err := client.
		OAuth2API.
		GetOAuth2ConsentRequestExecute(req)

	if err != nil {
		return nil, err
	}
	return res, nil
}

func getIdentity(ctx context.Context, client *ory.APIClient, id string) (*ory.Identity, error) {
	req := client.IdentityAPI.GetIdentity(ctx, id)
	res, _, err := client.IdentityAPI.GetIdentityExecute(req)
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
	req := client.OAuth2API.AcceptOAuth2ConsentRequest(ctx).
		ConsentChallenge(consentChallenge).
		AcceptOAuth2ConsentRequest(ory.AcceptOAuth2ConsentRequest{
			GrantAccessTokenAudience: consentRequest.GetRequestedAccessTokenAudience(),
			GrantScope:               consentRequest.GetRequestedScope(),
			Session: &ory.AcceptOAuth2ConsentRequestSession{
				IdToken: idTokenClaims,
			},
		})

	res, _, err := client.OAuth2API.AcceptOAuth2ConsentRequestExecute(req)

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
	idTokenClaims, err := CreateIdTokenClaimsForUser(ctx, oryClient, consentRequest.GetSubject())
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

func CreateIdTokenClaimsForUser(ctx context.Context, oryClient *ory.APIClient, userId string) (*common.IDTokenClaims, error) {
	ctx = prepareCtxForOry(ctx)

	// Get the identity of the current flow that needs to give the consent
	identity, err := getIdentity(ctx, oryClient, userId)
	if err != nil {
		return nil, err
	}

	oryIdentityTraits, err := NewOryIdentityTraitsFromIdentity(identity)
	if err != nil {
		return nil, err
	}

	organizationIDs, err := getOrganizationIDsForUser(ctx, userId)
	if err != nil {
		return nil, err
	}

	// Due to our current multi tenancy migration, we need to ensure that one valid organization id is inside the token,
	// in case of a race condition during the registration flow
	// TODO: Revisit
	if !hwutil.Contains(organizationIDs, exampleOrganizationID) {
		organizationIDs = append(organizationIDs, exampleOrganizationID)
	}

	idTokenClaims := common.IDTokenClaims{
		Sub:           identity.GetId(),
		Email:         oryIdentityTraits.Email,
		Name:          oryIdentityTraits.Name,
		Nickname:      oryIdentityTraits.Nickname,
		Organizations: organizationIDs,
	}

	return &idTokenClaims, nil
}

func getOrganizationIDsForUser(ctx context.Context, userId string) ([]uuid.UUID, error) {
	ctx, cancel, err := common.PrepCtxForSvcToSvcCall(ctx, "user-svc")
	if err != nil {
		return nil, err
	}
	defer cancel()

	daprClient := common.MustNewDaprGRPCClient()
	organizationSvc := userSvcPb.NewOrganizationServiceClient(daprClient.GrpcClientConn())

	getOrganizationsByUserResponse, err := organizationSvc.GetOrganizationsByUser(ctx, &userSvcPb.GetOrganizationsByUserRequest{
		UserId: userId,
	})
	if err != nil {
		return nil, err
	}

	return hwutil.Map(getOrganizationsByUserResponse.Organizations, func(v *userSvcPb.GetOrganizationsByUserResponse_Organization) uuid.UUID {
		return uuid.MustParse(v.Id)
	}), nil
}

// UpdateIdentityMetadataPublic fully replaces metadata_public
func UpdateIdentityMetadataPublic(ctx context.Context, oryClient *ory.APIClient, id uuid.UUID, metadataPublic OryIdentityMetadataPublic) error {
	ctx = prepareCtxForOry(ctx)

	// TODO: Increase overall resiliency to external endpoints

	req := oryClient.IdentityAPI.PatchIdentity(ctx, id.String())
	_, _, err := req.JsonPatch([]ory.JsonPatch{
		{
			Op:    "replace",
			Path:  "/metadata_public",
			Value: metadataPublic,
		},
	}).Execute()

	return err
}
