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
	return NewClient(ctx, "helpwave", common.GetOAuthIssuerUrl(), common.GetOAuthClientId(), clientSecret)
}

func NewClient(ctx context.Context, realm, issuerUrl, clientId, clientSecret string) (*Client, error) {
	provider, err := oidc.NewProvider(context.Background(), issuerUrl)
	if err != nil {
		return nil, fmt.Errorf("cannot lookup provider: %w", err)
	}

	config := clientcredentials.Config{
		ClientID:     clientId,
		ClientSecret: clientSecret,
		TokenURL:     provider.Endpoint().TokenURL,
	}

	if _, err := config.Token(ctx); err != nil {
		return nil, fmt.Errorf("testint token exchange failed: %w", err)
	}

	parsedIssuerUrl, err := url.Parse(issuerUrl)
	if err != nil {
		return nil, fmt.Errorf("cannot parse issuer url: %w", err)
	}

	adminApiBaseUrl, err := url.Parse(fmt.Sprintf("%s://%s/admin/realms/%s", parsedIssuerUrl.Scheme, parsedIssuerUrl.Host, realm))
	if err != nil {
		return nil, fmt.Errorf("cannot parse newly created admin api base url from issuer url: %w", err)
	}

	realmBaseUrl, err := url.Parse(fmt.Sprintf("%s://%s/realms/%s", parsedIssuerUrl.Scheme, parsedIssuerUrl.Host, realm))
	if err != nil {
		return nil, fmt.Errorf("cannot parse newly created admin api base url from issuer url: %w", err)
	}

	client := &Client{
		adminApiBaseUrl: adminApiBaseUrl,
		realmBaseUrl:    realmBaseUrl,
		http:            config.Client(ctx),
	}

	return client, err
}

func (c *Client) validateResponse(res *http.Response) error {
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
	u := c.adminApiBaseUrl.JoinPath("users", userID.String())

	res, err := c.http.Get(u.String())
	if err != nil {
		return nil, err
	}
	defer res.Body.Close()

	if err := c.validateResponse(res); err != nil {
		return nil, err
	}

	var user *User
	if err := json.NewDecoder(res.Body).Decode(&user); err != nil {
		return nil, err
	}

	return user, nil
}

func (c *Client) GetOrganizationsForUserById(userID uuid.UUID) ([]*Organization, error) {
	u := c.realmBaseUrl.JoinPath("users", userID.String(), "orgs")

	res, err := c.http.Get(u.String())
	if err != nil {
		return nil, err
	}
	defer res.Body.Close()

	if err := c.validateResponse(res); err != nil {
		return nil, err
	}

	var organizations []*Organization
	if err := json.NewDecoder(res.Body).Decode(&organizations); err != nil {
		return nil, err
	}

	for _, organization := range organizations {
		organization.ParseRawAttributes()
	}

	return organizations, nil
}

func (c *Client) CreateOrganization(name, displayName string, isPersonal bool) (*Organization, error) {
	u := c.realmBaseUrl.JoinPath("orgs")

	payload := Organization{
		Name:        hwutil.StrPtr(name),
		DisplayName: hwutil.StrPtr(displayName),
		RawAttributes: &map[string][]string{
			"isPersonal": {strconv.FormatBool(isPersonal)},
		},
	}

	jsonPayload, err := json.Marshal(payload)
	if err != nil {
		return nil, err
	}

	res, err := c.http.Post(u.String(), "application/json", bytes.NewBuffer(jsonPayload))
	if err != nil {
		return nil, err
	}
	defer res.Body.Close()

	if err := c.validateResponse(res); err != nil {
		return nil, fmt.Errorf("cannot create, invalid response: %w", err)
	}

	res, err = c.http.Get(res.Header.Get("Location"))
	if err != nil {
		return nil, err
	}
	defer res.Body.Close()

	if err := c.validateResponse(res); err != nil {
		return nil, fmt.Errorf("cannot get created organization, invalid response: %w", err)
	}

	var organization Organization
	if err := json.NewDecoder(res.Body).Decode(&organization); err != nil {
		return nil, fmt.Errorf("cannot parse organization: %w", err)
	}
	organization.ParseRawAttributes()

	return &organization, nil
}

func (c *Client) UpdateOrganization(organizationID uuid.UUID, organization Organization) error {
	u := c.realmBaseUrl.JoinPath("orgs", organizationID.String())

	jsonPayload, err := json.Marshal(organizationID)
	if err != nil {
		return err
	}

	req, err := http.NewRequest(http.MethodPut, u.String(), bytes.NewBuffer(jsonPayload))
	if err != nil {
		return err
	}

	res, err := c.http.Do(req)
	if err != nil {
		return err
	}
	defer res.Body.Close()

	return c.validateResponse(res)
}

func (c *Client) DeleteOrganization(organizationID uuid.UUID) error {
	u := c.realmBaseUrl.JoinPath("orgs", organizationID.String())

	req, err := http.NewRequest(http.MethodDelete, u.String(), nil)
	if err != nil {
		return err
	}

	res, err := c.http.Do(req)
	if err != nil {
		return err
	}
	defer res.Body.Close()

	return c.validateResponse(res)
}

func (c *Client) AddUserToOrganization(userID, organizationID uuid.UUID) error {
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

	return c.validateResponse(res)
}

func (c *Client) RemoveUserFromOrganization(userID, organizationID uuid.UUID) error {
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

	return c.validateResponse(res)
}
