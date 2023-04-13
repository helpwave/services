# ory-svc

> Service to handle [Ory](https://ory.sh/) related in-/outbound operations

## Directory: `ory-configuration`

This directory will be used to store required Ory configurations.
Right now, these configurations will be synced via an [Ory CLI](https://www.ory.sh/docs/cli/ory-update-identity-config) command to the components in the Ory network.

The [identity-config](https://www.ory.sh/docs/kratos/reference/configuration) is currently not stored inside the repository.
It may contain secrets. In the future we should develop a method to sync these securely with a ci workflow.

### `after_registration_webhook.jsonnet`

To [customize the request body of the webhook](https://www.ory.sh/docs/guides/integrate-with-ory-cloud-through-webhooks#customizing-request-body-with-jsonnet) that comes from Ory we need to use Jsonnet.
This file gets Base64 encoded and used as a string in the `identity-config`.
The results look like this:
```yaml
...
oidc:
  hooks:
  - hook: session
  - hook: web_hook # helpwave/services/ory-svc
	config:
	  url: https://api.helpwave.de/...
	  method: POST
	  body: base64://ZnV...
...
```
