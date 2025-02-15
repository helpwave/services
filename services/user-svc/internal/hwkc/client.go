package hwkc

import (
	"bytes"
	"common/auth"
	"context"
	"encoding/json"
	"fmt"
	"hwutil"
	"net/http"
	"net/url"
	"strconv"

	"github.com/coreos/go-oidc"
	"github.com/google/uuid"
	"golang.org/x/oauth2/clientcredentials"
)

type IClient interface {
	GetUserByID(ctx context.Context, userID uuid.UUID) (*User, error)
	GetOrganizationsOfUserByID(ctx context.Context, userID uuid.UUID) ([]*Organization, error)
	CreateOrganization(ctx context.Context, name, displayName string, isPersonal bool) (*Organization, error)
	UpdateOrganization(ctx context.Context, organizationID uuid.UUID, organization Organization) error
	DeleteOrganization(ctx context.Context, organizationID uuid.UUID) error
	AddUserToOrganization(ctx context.Context, userID, organizationID uuid.UUID) error
	RemoveUserFromOrganization(ctx context.Context, userID, organizationID uuid.UUID) error
}

type Client struct {
	adminAPIBaseURL *url.URL
	realmBaseURL    *url.URL
	http            *http.Client
}

func NewClientFromEnv(ctx context.Context) (*Client, error) {
	clientSecret := hwutil.MustGetEnv("OAUTH_KC_CLIENT_SECRET")
	realm := hwutil.GetEnvOr("OAUTH_KC_REALM", "helpwave")
	return NewClient(ctx, realm, auth.GetOAuthIssuerURL(), auth.GetOAuthClientID(), clientSecret)
}

func NewClient(ctx context.Context, realm, issuerURL, clientID, clientSecret string) (*Client, error) {
	provider, err := oidc.NewProvider(context.Background(), issuerURL)
	if err != nil {
		return nil, fmt.Errorf("cannot lookup oidc provider: %w", err)
	}

	config := clientcredentials.Config{
		ClientID:     clientID,
		ClientSecret: clientSecret,
		TokenURL:     provider.Endpoint().TokenURL,
	}

	if _, err := config.Token(ctx); err != nil {
		return nil, fmt.Errorf("token exchange failed: %w", err)
	}

	parsedIssuerURL, err := url.Parse(issuerURL)
	if err != nil {
		return nil, fmt.Errorf("cannot parse issuer url ('%s'): %w", issuerURL, err)
	}

	adminAPIBaseURL, err := url.Parse(
		fmt.Sprintf("%s://%s/admin/realms/%s", parsedIssuerURL.Scheme, parsedIssuerURL.Host, realm))
	if err != nil {
		return nil, fmt.Errorf(
			"cannot parse newly created admin api base url from issuer url ('%s'): %w", issuerURL, err)
	}

	realmBaseURL, err := url.Parse(
		fmt.Sprintf("%s://%s/realms/%s", parsedIssuerURL.Scheme, parsedIssuerURL.Host, realm))
	if err != nil {
		return nil, fmt.Errorf(
			"cannot parse newly created admin api base url from issuer url ('%s'): %w", issuerURL, err)
	}

	client := &Client{
		adminAPIBaseURL: adminAPIBaseURL,
		realmBaseURL:    realmBaseURL,
		http:            config.Client(ctx),
	}

	return client, err
}

// ensureSuccessfulResponse checks the status code of a Keycloak response
// This function returns an error when the status code is not one of 2xx
func (c *Client) ensureSuccessfulResponse(res *http.Response) error {
	if res.StatusCode >= 200 && res.StatusCode <= 299 {
		return nil
	}

	return BadResponseError{Res: res}
}

func (c *Client) GetUserByID(ctx context.Context, userID uuid.UUID) (*User, error) {
	// https://www.keycloak.org/docs-api/26.0.0/rest-api/index.html#_get_adminrealmsrealmusersuser_id
	u := c.adminAPIBaseURL.JoinPath("users", userID.String())

	req, err := http.NewRequestWithContext(ctx, http.MethodGet, u.String(), nil)
	if err != nil {
		return nil, err
	}

	res, err := c.http.Do(req)
	if err != nil {
		return nil, err
	}
	defer res.Body.Close()

	if err := c.ensureSuccessfulResponse(res); err != nil {
		return nil, fmt.Errorf("cannot get user, invalid response: %w", err)
	}

	var user *User
	if err := json.NewDecoder(res.Body).Decode(&user); err != nil {
		return nil, err
	}

	return user, nil
}

func (c *Client) GetOrganizationsOfUserByID(ctx context.Context, userID uuid.UUID) ([]*Organization, error) {
	// Users -> GET /{realm}/users/{userId}/orgs https://t.ly/cgwOO
	u := c.realmBaseURL.JoinPath("users", userID.String(), "orgs")

	req, err := http.NewRequestWithContext(ctx, http.MethodGet, u.String(), nil)
	if err != nil {
		return nil, err
	}

	res, err := c.http.Do(req)
	if err != nil {
		return nil, err
	}
	defer res.Body.Close()

	if err := c.ensureSuccessfulResponse(res); err != nil {
		return nil, fmt.Errorf("cannot get organizations of user, invalid response: %w", err)
	}

	var organizations []*Organization
	if err := json.NewDecoder(res.Body).Decode(&organizations); err != nil {
		return nil, err
	}

	return organizations, nil
}

func (c *Client) CreateOrganization(
	ctx context.Context,
	name,
	displayName string,
	isPersonal bool,
) (*Organization, error) {
	// Organizations -> POST /{realm}/orgs https://t.ly/cgwOO
	u := c.realmBaseURL.JoinPath("orgs")

	payload := Organization{
		Name:        hwutil.StrPtr(name),
		DisplayName: hwutil.StrPtr(displayName),
		Attributes: OrganizationAttributes{
			IsPersonal: []string{strconv.FormatBool(isPersonal)},
		},
	}

	jsonPayload, err := json.Marshal(payload)
	if err != nil {
		return nil, err
	}

	req, err := http.NewRequestWithContext(ctx, http.MethodPost, u.String(), bytes.NewBuffer(jsonPayload))
	if err != nil {
		return nil, err
	}
	req.Header.Set("Content-Type", "application/json")

	res, err := c.http.Do(req)
	if err != nil {
		return nil, fmt.Errorf("request for CreateOrganization failed: %w", err)
	}
	defer res.Body.Close()

	if err := c.ensureSuccessfulResponse(res); err != nil {
		return nil, fmt.Errorf("CreateOrganization failed, invalid response: %w", err)
	}

	req, err = http.NewRequestWithContext(ctx, http.MethodGet, res.Header.Get("Location"), nil)
	if err != nil {
		return nil, err
	}

	res, err = c.http.Do(req)
	if err != nil {
		return nil, fmt.Errorf("request for retrieving created organization failed: %w", err)
	}
	defer res.Body.Close()

	if err := c.ensureSuccessfulResponse(res); err != nil {
		return nil, fmt.Errorf("cannot get created organization, invalid response: %w", err)
	}

	var organization Organization
	if err := json.NewDecoder(res.Body).Decode(&organization); err != nil {
		return nil, fmt.Errorf("cannot parse organization: %w", err)
	}

	return &organization, nil
}

func (c *Client) UpdateOrganization(ctx context.Context, organizationID uuid.UUID, organization Organization) error {
	// Organizations -> PUT /{realm}/orgs/{orgId} https://t.ly/cgwOO
	u := c.realmBaseURL.JoinPath("orgs", organizationID.String())

	jsonPayload, err := json.Marshal(organization)
	if err != nil {
		return err
	}

	req, err := http.NewRequestWithContext(ctx, http.MethodPut, u.String(), bytes.NewBuffer(jsonPayload))
	if err != nil {
		return err
	}

	res, err := c.http.Do(req)
	if err != nil {
		return fmt.Errorf("request for UpdateOrganization failed: %w", err)
	}
	defer res.Body.Close()

	if err = c.ensureSuccessfulResponse(res); err != nil {
		return fmt.Errorf("cannot update organization, invalid response: %w", err)
	}

	return nil
}

func (c *Client) DeleteOrganization(ctx context.Context, organizationID uuid.UUID) error {
	// Organizations -> DELETE /{realm}/orgs/{orgId} https://t.ly/cgwOO
	u := c.realmBaseURL.JoinPath("orgs", organizationID.String())

	req, err := http.NewRequestWithContext(ctx, http.MethodDelete, u.String(), nil)
	if err != nil {
		return err
	}

	res, err := c.http.Do(req)
	if err != nil {
		return fmt.Errorf("request for DeleteOrganization failed: %w", err)
	}
	defer res.Body.Close()

	if err = c.ensureSuccessfulResponse(res); err != nil {
		return fmt.Errorf("cannot delete organization, invalid response: %w", err)
	}

	return nil
}

func (c *Client) AddUserToOrganization(ctx context.Context, userID, organizationID uuid.UUID) error {
	// Organization Memberships -> PUT /{realm}/orgs/{orgId}/members/{userId} https://t.ly/cgwOO
	u := c.realmBaseURL.JoinPath("orgs", organizationID.String(), "members", userID.String())

	req, err := http.NewRequestWithContext(ctx, http.MethodPut, u.String(), nil)
	if err != nil {
		return err
	}

	res, err := c.http.Do(req)
	if err != nil {
		return err
	}
	defer res.Body.Close()

	if err = c.ensureSuccessfulResponse(res); err != nil {
		return fmt.Errorf("cannot add user to organization, invalid response: %w", err)
	}

	return nil
}

func (c *Client) RemoveUserFromOrganization(ctx context.Context, userID, organizationID uuid.UUID) error {
	// Organization Memberships -> DELETE /{realm}/orgs/{orgId}/members/{userId} https://t.ly/R0Suf
	u := c.realmBaseURL.JoinPath("orgs", organizationID.String(), "members", userID.String())

	req, err := http.NewRequestWithContext(ctx, http.MethodDelete, u.String(), nil)
	if err != nil {
		return err
	}

	res, err := c.http.Do(req)
	if err != nil {
		return err
	}
	defer res.Body.Close()

	if err = c.ensureSuccessfulResponse(res); err != nil {
		return fmt.Errorf("cannot remove user from organization, invalid response: %w", err)
	}

	return nil
}
