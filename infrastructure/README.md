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
flyctl launch
	--build-arg SERVICE=user-svc
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

[deploy]
  strategy = "bluegreen"
  release_command = "./run-migrations.sh"

[[services]]
  auto_stop_machines = false
  auto_start_machines = false

[checks]
  [checks.dapr_sidecar]
    grace_period = "5s"
    interval = "10s"
    method = "get"
    path = "/v1.0/healthz"
    port = 3500
    timeout = "2s"
   type = "http"

[metrics]
  port = 9090
  path = "/metrics"
```

__3. Attach database__

```shell
fly postgres attach --app <APP_NAME> --variable-name POSTGRES_DSN <POSTGRES_APP_NAME>
```

__4. Deploy service__

```shell
flyctl deploy
	--config services/user-svc/fly.toml
	--app helpwave-staging-user-svc
	# --local-only # Optional. When omitted, the image will be build directly on Fly
```

__5. Configure APISIX__

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

__6. Deploy APISIX__

`flyctl deploy --config apisix/fly.toml --app helpwave-staging-gateway`
