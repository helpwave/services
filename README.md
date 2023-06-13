# services

helpwave's microservices

## Getting started

1. [Install](https://docs.dapr.io/getting-started/install-dapr-cli/) and [run](https://docs.dapr.io/getting-started/install-dapr-selfhost/) Dapr locally
2. Most of our services require a database. Run `dev/docker-compose.yaml` to set up a basic postgres database
   > Postgres username and password: `postgres`:`postgres`

   > pgAdmin username and password: `tech@helpwave.de`:`tech@helpwave.de`
3. Go to your [services/](services/) of choice `cd services/<service>/`
4. Copy the environment variables of `.env.example` to '.env' and configure them
5. Run `./migrate.sh task-svc up` to run the migrations or do it manually by [installing migrate](https://github.com/golang-migrate/migrate)
6. Run the service
   > Most of our services can be run via `go run main.go`. In the future, we will provide some more convenient ways to setup all services directly via Dapr.

### Fake token

Every service that is using auth, as the ability to use something called fake-tokens.
A fake-token are Base64 encoded claims of our ID Token to [services-local-dev](services-local-dev) not rely on our OAuth2.0 provider
during local development. With the environment variable `INSECURE_FAKE_TOKEN_ENABLE=true` set,
this fast-path gets activated.

The claims are defined [here](libs/common/auth.go#L37).

Here is an example fake-token that can be used as the bearer authorization token.
```
eyJzdWIiOiIxODE1OTcxMy01ZDRlLTRhZDUtOTRhZC1mYmI2YmIxNDc5ODQiLCJlbWFpbCI6InRlc3RpbmUudGVzdEBoZWxwd2F2ZS5kZSIsIm9yZ2FuaXphdGlvbnMiOlsiM2IyNWM2ZjUtNDcwNS00MDc0LTlmYzYtYTUwYzI4ZWJhNDA2Il19
---
# decoded
{
  "sub": "18159713-5d4e-4ad5-94ad-fbb6bb147984",
  "email": "testine.test@helpwave.de",
  "organizations": [
  	"3b25c6f5-4705-4074-9fc6-a50c28eba406"
  ]
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

## Migrations
We use [migrate](https://github.com/golang-migrate/migrate) to handle changes to our database tables
It uses change versioning, e.g.
- `000009_init.up.sql` contains all changes from version 8 to 9
- `000009_init.down.sql` contains all changes from version 9 to 8 in reverse order from
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
`./migrate.sh [service] [... arguments for migrate/migrate]`

- `[service]` must be one of the services inside `/services/`
- `[... arguments for migrate/migrate]` gets passed directly to migrate/migrate


#### Examples:
- Migrate the task-svc database all the way up `./migrate.sh task-svc up`
- Migrate the task-svc database one down: `./migrate.sh task-svc down 1`
- Current migration version of the task-svc database: `./migrate.sh task-svc version`

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
