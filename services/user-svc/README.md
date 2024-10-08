# user-svc

> User management service

## Running
- requires [dapr](https://docs.dapr.io/getting-started/install-dapr-cli/)
```
dapr run --app-id user-svc -- go run main.go
```

### Keycloak

This service interacts with an external Keycloak to modify organizations.
Therefore, this service needs API access for Keycloak via a [Direct Grant Access](https://www.keycloak.org/securing-apps/oidc-layers#_resource_owner_password_credentials_flow) OIDC Client.
The service retrieves the secret for this client via `OAUTH_KC_CLIENT_SECRET`.
The Keycloak realm via `OAUTH_KC_REALM` with a default of `helpwave`.
