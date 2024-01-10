# services
    
helpwave's microservices

## Getting started

This repository utilizes [devenv.sh](https://devenv.sh) (on top of [Nix](https://nixos.org/)) for our development environments.

1. [Install devenv](https://devenv.sh/getting-started/)
2. Start the environment of this repository by running `devenv up` in the root. On first run, this command can take a while. This starts our database and all services including a hot-reload.
3. Develop!

- Use `devenv shell` to enter a shell that contains all necessary packages and utilities for this repository
- For direct client to service requests via gRPC, add the following metadata to your requests:
	- `X-Organization: [An organization id. Most requests are performed on the side of an organization. The id must be part of your passed access token]`
	- `dapr-app-id: [the app id of the targeted service]`

### Ports

| Service       | Port  | Protocol                |
|---------------|-------|-------------------------|
| task-svc      | 3001  | gRPC                    |
| user-svc      | 3002  | gRPC                    |
| ory-svc       | 3003  | gRPC                    |
| APISIX (dapr) | 3500  | http                    |
| APISIX (dapr) | 35001 | grpc                    |
| APISIX        | 9080  | http  (mostly grcp-web) |
| APISIX        | 9433  | https (mostly grcp-web) |
| APISIX        | 9090  | http  (control api)     |
| APISIX        | 9091  | http  (prometheus)      |
| postgres      | 5432  |                         |
| redis         | 6379  |                         |
| jaeger (UI)   | 16686 | http                    |
| jaeger (OTLP) | 4317  | grpc                    |

### Scripts

You can either run `<script>` in the shell (`devenv shell`) or outside the shell via `devenv shell <script>`.

- `proto`: Generate protos
- `proto-lint`: Lint protos
- `nix-lint`: Lint .nix
- `migratesh`: [migrate.sh](#migratesh---running-migratemigrate-inside-docker)
- `models`

## Fake token

When working with services that use auth, instead of dealing with JWTs, you can make use of fake tokens.
A fake token is only the claims part of a JWT, which are defined [here](libs/common/auth.go#L37).
You can create your own by simply base64-encoding your json claims.

Use the environment variable `INSECURE_FAKE_TOKEN_ENABLE=true` for a service to accept fake-tokens.
Only do this in development environments!

Fake tokens are used just like JWTs: As bearer tokens in the Authorization header of your gRPC requests.

Here is an example fake-token that can be used as the bearer authorization token.
```
eyJzdWIiOiIxODE1OTcxMy01ZDRlLTRhZDUtOTRhZC1mYmI2YmIxNDc5ODQiLCJlbWFpbCI6InRlc3RpbmUudGVzdEBoZWxwd2F2ZS5kZSIsIm5hbWUiOiJUZXN0aW5lIFRlc3QiLCJuaWNrbmFtZSI6InRlc3RpbmUudGVzdCIsIm9yZ2FuaXphdGlvbnMiOlsiM2IyNWM2ZjUtNDcwNS00MDc0LTlmYzYtYTUwYzI4ZWJhNDA2Il19
---
# decoded
{
	"sub":"18159713-5d4e-4ad5-94ad-fbb6bb147984",
	"email":"testine.test@helpwave.de",
	"name":"Testine Test",
	"nickname":"testine.test",
	"organizations":["3b25c6f5-4705-4074-9fc6-a50c28eba406"]
}
````

## Docker images

You can build a docker image for a service using `make`:
```bash
make <servicename>
```
 e.g.:
```bash
 make user-svc
```

Each service should have a Makefile, that includes the root's Makefile.
In the context of a service directory you should be able to use
```bash
 make this
```
to build the corresponding docker image as well.

### Our images

#### Dockerfile.apisix

This image includes our APISX configuration and the daprd process. As in `Dockerfile.standalone`,
these two processes are running side by side in the container via [hivemind](https://github.com/DarthSim/hivemind). 

#### Dockerfile.service

This image contains "just" the service. The Dapr sidecar needs to be deployed separately.

#### Dockerfile.standalone

This image contains the service including the daprd sidecar. These two processes are running
side by side in the container via [hivemind](https://github.com/DarthSim/hivemind).

## Migrations
We use [migrate](https://github.com/golang-migrate/migrate) to handle changes to our database tables
It uses change versioning, e.g.
- `000009_some_name.up.sql` contains all changes from version 8 to 9
- `000009_some_name.down.sql` contains all changes from version 9 to 8 in reverse order from
```
migrate -path services/<service>/migrations/ -database postgres://postgres:postgres@localhost:5432/<service>?sslmode=disable up [version]
migrate -path services/<service>/migrations/ -database postgres://postgres:postgres@localhost:5432/<service>?sslmode=disable down [version]
```

### `migrate.sh` - Running migrate/migrate inside docker

_Recommended_

If you don't want to install migrate/migrate directly on your machine, you can use our `migrate.sh` script.
This script automatically discovers the migration folder and env file and passes them alongside
you arguments into migrate/migrate running in a container.

`migrate.sh` will use the database setup of the passed service. Therefore, a .env file is required.

#### Usage
`./migrate.sh <service> [... arguments for migrate/migrate]`

- `<service>` must be one of the services inside `/services/`
- `[... arguments for migrate/migrate]` gets passed directly to migrate/migrate


#### Examples:
- Migrate the task-svc database all the way up `./migrate.sh task-svc up`
- Migrate the task-svc database one down: `./migrate.sh task-svc down 1`
- Current migration version of the task-svc database: `./migrate.sh task-svc version`

#### desired:
Additionally, the script allows you to query the highest available migration version
based on the migration files available in the service:

```bash
./migrate <service> desired
```

### `devenv shell models` - Generate models from SQL Queries

> [!IMPORTANT]
> Requires a running database, it's best to run `devenv up` before running this script.

We use [sqlc](https://docs.sqlc.dev/en/latest/), a compiler that generates go functions based on SQL queries and a schema.
This script
1. Makes sure the database is fully migrated up (see migration.sh)
2. Generates a `schema.sql` using pg_dump
	> [!TIP]
	> The `schema.sql` is also a great place to familiarize yourself with the data model(s)!
3. Invokes sqlc to generate go code based on a `sqlc.yaml`

Usage:
- `devenv shell models <some-svc>` generates models for a specific service
- `devenv shell models` generates models for all services

## Enviroment variables
Every service should contain a `.env.example` file which should be copied to a usable `.env` file

Default Variables:
```
# The mode used, options available
#  development, production
MODE=development

# The following levels are available:
#  trace, debug, info, warn, error, fatal, panic
LOG_LEVEL=debug

# The port on which the the service will listen on (default: 8080)
PORT=8080

# Database Related Configurations
POSTGRES_HOST=localhost
POSTGRES_PORT=5432
POSTGRES_USER=postgres
POSTGRES_PASSWORD=postgres
POSTGRES_DB=postgres

# For development purposes
INSECURE_FAKE_TOKEN_ENABLE=true
OAUTH_CLIENT_ID=425f8b8d-c786-4ff7-b2bf-e52f505fb588

# Variables with the prefix "SECRETSTORE_" will be catched up by the current env secret store
SECRETSTORE_REDIS_HOST=localhost
SECRETSTORE_REDIS_USERNAME=
SECRETSTORE_REDIS_PASSWORD=

# Telemetry Related Configurations

# skips opentelemetry setup
OTEL_DISABLE=false

# one of "zipkin", otlp", "otlp_http"
# for additional configuration for each exporter see their documentation:
# - otlp: https://pkg.go.dev/go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc@v1.21.0
# - otlp_http: https://pkg.go.dev/go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp@v1.21.0
# - zipkin: only provides OTEL_EXPORTER_ZIPKIN_ENDPOINT with default "http://localhost:9411/api/v2/spans"
OTEL_TRACE_EXPORTER=otlp
```

## Temporary advises

### Example for service to service communication via Dapr and gRPC

```go
// ...

daprClient := common.MustNewDaprGRPCClient()

organizationSvc := user_svc.NewOrganizationServiceClient(daprClient.GrpcClientConn())
ctx, cancel := common.PrepCtxForSvcToSvcCall(ctx, "user-svc")
defer cancel()

res, err := organizationSvc.CreateOrganizationForUser(ctx, &user_svc.CreateOrganizationForUserRequest{
	LongName:     fmt.Sprintf("%s personal organization", payload.Nickname),
	ShortName:    payload.Nickname,
	ContactEmail: payload.Email,
	IsPersonal:   true,
	UserId:       userID.String(),
})

if err != nil {
	return nil, status.Error(codes.Internal, err.Error())
}
```

### Arm versioning

[We disarmed the versioning for pre-production.](https://github.com/helpwave/services/issues/125).
To arm the versioning, search for "arm-versioning" in the codebase.

### Event Sourcing

We are currently in the progress of adopting event sourcing for some entities.
Therefore, event sourcing is entirely optional and behind a feature flag (environment variable: `FEATURE_FLAG_EVENT_SOURCING`).

## Deployment

[See infrastructure/README.md](infrastructure/README.md)
