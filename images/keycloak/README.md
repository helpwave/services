# Keycloak Docker Image

Using a custom keycloak image is [best practice](https://www.keycloak.org/operator/customizing-keycloak) and allows us to use extensions among other customization.

The docs are available [here](https://www.keycloak.org/guides#server) and [here](https://www.keycloak.org/server/configuration-production).

### Ports

Standard HTTP and HTTPS ports 80 and 443. Port 80 is unavailable by default, see [TLS](#TLS).
Also set `KC_HOSTNAME` to the public hostname.

### Postgres

Please set the following env variables:
```
KC_DB_USERNAME=
KC_DB_PASSWORD=
KC_DB_URL_HOST=
KC_DB_URL_PORT=
KC_DB_URL_DATABASE=
```
I'm not sure if the last one is needed.

### HTTPS

KC requires an HTTPS certificate, please mount it to `/cert.pem` and `/key.pem`.

### Vault

KC supports Vault, more in the docs.
