# infrastructure

## Fly.io

We moved to [Fly.io](https://fly.io/) since https://github.com/helpwave/services/issues/164.

### To-dos
- Use FLY_APP_ID env for DAPR_APP_ID
- Use Dapr mTLS between services
- Get rid of `[env]` in `fly.toml`´s
	- The `fly.toml` should be environment agnostic
- IaC for Fly.io

### Create a new microservice on Fly.io

__Pre-Requirements__
- `flyctl` is installed
- [Authenticated `flyctl`](https://fly.io/docs/flyctl/auth-login/) in the organization of choice
- Microservice is tested, checked in via git and overall ready to deploy

__1. Create a new App__

```shell
fly launch
	--build-args SERVICE=user-svc
	--dockerfile ../../Dockerfile.standalone
	--env INSECURE_FAKE_TOKEN_ENABLE=true # When deployed on staging
	--internal-port 80
	--name helpwave-staging-user-svc # The name of the App
	--no-deploy
	--no-public-ips # Any outside actor should call the service through our API-Gateway
	--path services/user-svc
	--region ams # Amsterdam
	--org helpwave-staging # Replace "<ORGANIZATION>" with the name of the organization
```

__2. Ensure correct `fly.toml`__

We need to rewrite some of the generated `fly.toml`.

```toml
primary_region = "ams"

[build]
  dockerfile = "../../Dockerfile.standalone"

[build.args]
  SERVICE = "user-svc"

[env]
  INSECURE_FAKE_TOKEN_ENABLE=true

[[services]]
  auto_stop_machines = false
  auto_start_machines = false
```

__4. Create database__

Connect to postgres cli via `fly postgres connect --app <APP_NAME_OF_POSTGRES>`
and run `CREATE DATABASE "user-svc";` afterwards.

__5. Set secrets__

```shell
 fly secrets set
 	--app helpwave-staging-user-svc
 	POSTGRES_PASSWORD=<PASSWORD>
 	POSTGRES_HOST=<HOST>
 	POSTGRES_USER=<USER>
 	POSTGRES_DB=user-svc
```

__6. Deploy service__

```shell
fly deploy
	--config services/user-svc/fly.toml
	--app helpwave-staging-user-svc
	# --local-only # Optional. When omitted, the image will be build directly on Fly
```

__7. Configure APISIX__

`apisix/apisix.yaml`
```yaml
...
services:
  ...
  - id: user-svc
    upstream_id: dapr-grpc
    plugins:
      grpc-web: {}
      proxy-rewrite:
        headers:
          add:
            dapr-app-id: user-svc
...
routes:
  ...
  - id: user-svc
    uri: /user-svc/*
    service_id: user-svc
    plugins:
      cors:
        # TODO: Scope to grpc-web spec
        allow_origins: "**"
        allow_methods: "**"
        allow_headers: "**"
        expose_headers: "**"
        max_age: 5
        allow_credential: true
        _meta:
          priority: -1
...
```

__8. Deploy APISIX__

`fly deploy --config apisix/fly.toml --app helpwave-staging-gateway`
