package hwkc

import (
	"bytes"
	"common"
	"context"
	"encoding/json"
	"fmt"
	"github.com/coreos/go-oidc"
	"github.com/google/uuid"
	"golang.org/x/oauth2/clientcredentials"
	"hwutil"
	"io"
	"net/http"
	"net/url"
	"strconv"
)

type Client struct {
	adminApiBaseUrl *url.URL
	realmBaseUrl    *url.URL
	http            *http.Client
}

func NewClientFromEnv(ctx context.Context) (*Client, error) {
	clientSecret := hwutil.MustGetEnv("OAUTH_KC_CLIENT_SECRET")
	realm := hwutil.GetEnvOr("OAUTH_KC_REALM", "helpwave")
	return NewClient(ctx, realm, common.GetOAuthIssuerUrl(), common.GetOAuthClientId(), clientSecret)
}

func NewClient(ctx context.Context, realm, issuerUrl, clientId, clientSecret string) (*Client, error) {
	provider, err := oidc.NewProvider(context.Background(), issuerUrl)
	if err != nil {
		return nil, fmt.Errorf("cannot lookup oidc provider: %w", err)
	}

	config := clientcredentials.Config{
		ClientID:     clientId,
		ClientSecret: clientSecret,
		TokenURL:     provider.Endpoint().TokenURL,
	}

	if _, err := config.Token(ctx); err != nil {
		return nil, fmt.Errorf("token exchange failed: %w", err)
	}

	parsedIssuerUrl, err := url.Parse(issuerUrl)
	if err != nil {
		return nil, fmt.Errorf("cannot parse issuer url ('%s'): %w", issuerUrl, err)
	}

	adminApiBaseUrl, err := url.Parse(fmt.Sprintf("%s://%s/admin/realms/%s", parsedIssuerUrl.Scheme, parsedIssuerUrl.Host, realm))
	if err != nil {
		return nil, fmt.Errorf("cannot parse newly created admin api base url from issuer url ('%s'): %w", issuerUrl, err)
	}

	realmBaseUrl, err := url.Parse(fmt.Sprintf("%s://%s/realms/%s", parsedIssuerUrl.Scheme, parsedIssuerUrl.Host, realm))
	if err != nil {
		return nil, fmt.Errorf("cannot parse newly created admin api base url from issuer url ('%s'): %w", issuerUrl, err)
	}

	client := &Client{
		adminApiBaseUrl: adminApiBaseUrl,
		realmBaseUrl:    realmBaseUrl,
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
	body, err := io.ReadAll(res.Body)
	if err != nil {
		return fmt.Errorf("response status code not 2xx, cannot read response body for error message: %w", err)
	}
	return fmt.Errorf("response status for %s - %s is %d: %s", res.Request.Method, res.Request.URL.String(), res.StatusCode, string(body))
}

func (c *Client) GetUserById(userID uuid.UUID) (*User, error) {
	// https://www.keycloak.org/docs-api/26.0.0/rest-api/index.html#_get_adminrealmsrealmusersuser_id
	u := c.adminApiBaseUrl.JoinPath("users", userID.String())

	res, err := c.http.Get(u.String())
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

func (c *Client) GetOrganizationsOfUserById(userID uuid.UUID) ([]*Organization, error) {
	// Users -> GET /{realm}/users/{userId}/orgs https://editor-next.swagger.io/?url=https://raw.githubusercontent.com/p2-inc/phasetwo-docs/5e785dfed39348f07e9ec6e834e4ba19979bce57/openapi.yaml
	u := c.realmBaseUrl.JoinPath("users", userID.String(), "orgs")

	res, err := c.http.Get(u.String())
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

	if len(organizations) > 0 {
		fmt.Println("=======================")
		fmt.Println(*organizations[0].ID)
		fmt.Println(*organizations[0].Name)
		fmt.Println(*organizations[0].DisplayName)
		fmt.Println(organizations[0].IsPersonal())
	}

	return organizations, nil
}

func (c *Client) CreateOrganization(name, displayName string, isPersonal bool) (*Organization, error) {
	// Organizations -> POST /{realm}/orgs https://editor-next.swagger.io/?url=https://raw.githubusercontent.com/p2-inc/phasetwo-docs/5e785dfed39348f07e9ec6e834e4ba19979bce57/openapi.yaml
	u := c.realmBaseUrl.JoinPath("orgs")

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

	res, err := c.http.Post(u.String(), "application/json", bytes.NewBuffer(jsonPayload))
	if err != nil {
		return nil, fmt.Errorf("request for CreateOrganization failed: %w", err)
	}
	defer res.Body.Close()

	if err := c.ensureSuccessfulResponse(res); err != nil {
		return nil, fmt.Errorf("CreateOrganization failed, invalid response: %w", err)
	}

	res, err = c.http.Get(res.Header.Get("Location"))
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

func (c *Client) UpdateOrganization(organizationID uuid.UUID, organization Organization) error {
	// Organizations -> PUT /{realm}/orgs/{orgId} https://editor-next.swagger.io/?url=https://raw.githubusercontent.com/p2-inc/phasetwo-docs/5e785dfed39348f07e9ec6e834e4ba19979bce57/openapi.yaml
	u := c.realmBaseUrl.JoinPath("orgs", organizationID.String())

	jsonPayload, err := json.Marshal(organization)
	if err != nil {
		return err
	}

	req, err := http.NewRequest(http.MethodPut, u.String(), bytes.NewBuffer(jsonPayload))
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

func (c *Client) DeleteOrganization(organizationID uuid.UUID) error {
	// Organizations -> DELETE /{realm}/orgs/{orgId} https://editor-next.swagger.io/?url=https://raw.githubusercontent.com/p2-inc/phasetwo-docs/5e785dfed39348f07e9ec6e834e4ba19979bce57/openapi.yaml
	u := c.realmBaseUrl.JoinPath("orgs", organizationID.String())

	req, err := http.NewRequest(http.MethodDelete, u.String(), nil)
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

func (c *Client) AddUserToOrganization(userID, organizationID uuid.UUID) error {
	// Organization Memberships -> PUT /{realm}/orgs/{orgId}/members/{userId} https://editor-next.swagger.io/?url=https://raw.githubusercontent.com/p2-inc/phasetwo-docs/5e785dfed39348f07e9ec6e834e4ba19979bce57/openapi.yaml
	u := c.realmBaseUrl.JoinPath("orgs", organizationID.String(), "members", userID.String())

	req, err := http.NewRequest(http.MethodPut, u.String(), nil)
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

func (c *Client) RemoveUserFromOrganization(userID, organizationID uuid.UUID) error {
	// Organization Memberships -> DELETE /{realm}/orgs/{orgId}/members/{userId} https://editor-next.swagger.io/?url=https://raw.githubusercontent.com/p2-inc/phasetwo-docs/5e785dfed39348f07e9ec6e834e4ba19979bce57/openapi.yaml
	u := c.realmBaseUrl.JoinPath("orgs", organizationID.String(), "members", userID.String())

	req, err := http.NewRequest(http.MethodDelete, u.String(), nil)
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
