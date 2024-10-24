# services

helpwave's microservices

## Getting started

> [!NOTE]
> Make sure you have [Git](https://git-scm.com/), [Docker](https://docs.docker.com/) and [Docker Compose](https://docs.docker.com/compose/)
> installed on your system.

> [!NOTE]
> There seem to be service-discovery issues on Windows Hosts.

### Using Docker Compose next to your IDE

Using this setup, you use your editor of choice on your system and start the docker compose stack next to it.
The main downside to this is that your IDE will use your local toolchain and dependencies, which may not be in sync.

> [!TIP]
> `./up.sh -d` starts the compose stack in the background

1. Clone the repo locally
	```bash
	$ git clone git@github.com:helpwave/services.git
	```
2. Start the docker compose stack using the `$ ./up.sh` script
3. Start your IDE of choice and start hacking!
4. You can use the tools installed in the dev docker container by opening a shell on it:
   ```bash
   $ ./dev.sh
   # you are now in the container
   $ psql -d user-svc
   ```

Next Steps: [Read on here](#development)

### Using Development Containers

You can start your IDE and Docker Compose together using Dev Containers.
This will install a backend client for your IDE in the `devcontainer` container, which it uses instead of your local setup.

> [!IMPORTANT]
> [Development Containers](https://containers.dev/) is still relatively new technology.
> Things are likely to change and/or break.

> [!WARNING]
> Even though containers are a somewhat isolated environment,
> the devcontainer has access to the host's docker socket.
> This means malicious code can still mess with your system.
> Just like on your host system (assuming your user is in the docker group), everything could run as root, if it tried hard enough.
> For example by spawning a new container, which mounts `/` and runs `rf -rf /`.
> You can disable docker-out-of-docker by setting `DOCKER_SOCK` in `dev`'s `.env` to `/dev/null`.

#### Development Containers and IntelliJ ([GoLand](https://www.jetbrains.com/de-de/go/))

[Relevant Docs](https://www.jetbrains.com/help/go/connect-to-devcontainer.html#start_container_from_product)

1. Start GoLand and close any open projects.
2. Alternatively, start [JetBrains Gateway](https://www.jetbrains.com/remote-development/gateway/).
3. Make sure your docker setup is correctly configured
4. Under "Remote Development" -> "Dev Containers" create a new Dev Container
5. Copy in `git@github.com:helpwave/services.git` and select your branch of choice.
6. Alternatively, click on "From Local Project" and navigate to a local copy of the repo's `.devcontainer/devcontainer.json`
7. Wait, follow further instructions, and select the editor you want to launch (likely GoLand)
8. GoLand will start *in* a docker container, you can start hacking!
9. Use the usual GoLand UI to open a terminal, where you will find a bunch of tools pre-installed for you.
10. Next time, you can find the Dev Container ready to start.

Next Steps: [Read on here](#development)

#### Development Containers and VSCode

1. Clone the Repo and open it in VSCode
2. On the lower left, click on the remote development icon
3. Select "Reopen in Container"
4. VSCode will restart *in* a docker container, you can start hacking!
5. Use the VSCode UI to open a terminal, where you will find a bunch of tools pre-installed for you.
6. Closing VSCode will *not* stop the docker compose stack. You can do that manually, close VSCode and navigate to `dev`, there, run `docker compose down`.

## Development

Following the steps above, you should now have a docker compose stack running and are able to execute commands in the `dev-devcontainer-1` container.

To see what compose actually starts, we recommend a look into the [docker-compose.yaml](https://github.com/helpwave/services/blob/main/dev/docker-compose.yaml), but here is the gist:

* Dependencies (e.g., Redis, Postgres and EventStore)
* `apisix`
* `services`
* `devcontainer`

Of particular interest are the `services` and `devcontainer` containers. The former starts all go services using [air](https://github.com/air-verse/air), a tool that automatically recompiles and restarts the service on reload.
The latter gives you a playground for development with all the tools you need. As it is in the docker network you can use the names of the other (docker compose) services as hostnames (i.e., `postgres` will be resolved to the container in which the postgres instance is running on).
**It also has access to docker.** This means you can, for example, read the services logs like this: `docker compose logs services -f`, and start / stop / restart containers.

A lot of ports will be allocated on your host system for additional debugging. Have a look at the [table below](#ports) for more information.

### Networking

The microservices are tied together using [dapr](https://dapr.io/). Most services provide a grpc API, as defined by the Protobufs in `/proto`.
[Here](https://buf.build/helpwave/services) you can find the proto's documentation.

We provide one unified entrypoint for clients in form of the API-gateway [APISIX](https://apisix.apache.org/). It exposes a [grpc-web](https://github.com/grpc/grpc-web) api for http-only clients (i.e., web), but falls back to a grpc proxy for those clients that support it (i.e., mobile).

#### How do I talk to a service?

##### Using helpwave/web

The frontend is a great way to test regressions. Hop over to [the web repo](https://github.com/helpwave/web) to find out how to set it up and point it to APISIX (HTTP).

##### Using APISIX over grpc-web

Using this approach, you are closest to the actual calls made by the frontends. 

TODO: We are still looking for a tool that works well for this :/

##### Directly

<https://github.com/fullstorydev/grpcurl>

```bash
grpcurl --plaintext \
	-H "Authorization: Bearer <...>" \
	-d '{}' \
	localhost:3001 \
	services.task_svc.v1.WardService/GetWards
```

## Ports

| Service       | Port  | Protocol                |
|---------------|-------|-------------------------|
| task-svc      | 3001  | gRPC                    |
| user-svc      | 3002  | gRPC                    |
| tasks-svc     | 3004  | gRPC                    |
| property-svc  | 3005  | gRPC                    |
| updates-svc   | 3006  | gRPC                    |
| APISIX (dapr) | 3500  | http                    |
| APISIX (dapr) | 35001 | grpc                    |
| APISIX        | 9080  | http  (mostly grcp-web) |
| APISIX        | 9433  | https (mostly grcp-web) |
| APISIX        | 9090  | http  (control api)     |
| APISIX        | 9091  | http  (prometheus)      |
| postgres      | 5432  |                         |
| redis         | 6379  |                         |
| eventstore    | 2113  |                         |
| jaeger (UI)   | 16686 | http                    |
| jaeger (OTLP) | 4317  | grpc                    |
| SpiceDB       | 50051 | grpc                    |

### Scripts

These scripts can be run on your local machine:

* `shell.sh` - Opens a Shell in the devcontainer
* `up.sh` - Starts the docker compose stack, accepts `docker compose up` arguments. Your IDE might do this for you!
* `down.sh` - Shuts down the docker compose stack, accepts `docker compose down` arguments

These scripts can be run in the devcontainer:

* `protos.sh`: Lint and Generate protos
* `migrate.sh`: [migrate.sh](#migratesh---running-migratemigrate-inside-docker)
* `models.sh`: [models.sh](#modelssh---generate-models-from-sql-queries)
* `lint.sh`: Lint go code
* `tidy.sh`: Runs `go mod tidy` across the workspace. Recommended to run after modifying any dependencies.

Example:

```bash
$ ./shell.sh protos.sh

# or
$ ./shell.sh
$ ./proto.sh
```

From the shell, you can use go commands, like `go test ./...` in a service's directory.
Go tests are used both for unit tests and more complex (and time-consuming) integration tests simulating a user story.
These spin up fresh containers for external dependencies, like EventStore, using [testcontainers](https://github.com/testcontainers/testcontainers-go).
It makes use of the same docker socket mounted to the development environment.

## Fake token

When working with services that use auth, instead of dealing with JWTs, you can make use of fake tokens.
A fake token is only the claims part of a JWT, which are defined [here](libs/common/auth.go#L37).
You can create your own by simply base64-encoding your json claims.

Use the environment variable `INSECURE_FAKE_TOKEN_ENABLE=true` for a service to accept fake-tokens.
Only do this in development environments!

Fake tokens are used just like JWTs: As bearer tokens in the Authorization header of your gRPC requests.

Here is an example fake-token that can be used as the bearer authorization token.
```text
eyJzdWIiOiIxODE1OTcxMy01ZDRlLTRhZDUtOTRhZC1mYmI2YmIxNDc5ODQiLCJlbWFpbCI6Im1heC5tdXN0ZXJtYW5uQGhlbHB3YXZlLmRlIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsIm5hbWUiOiJNYXggTXVzdGVybWFubiIsInByZWZlcnJlZF91c2VybmFtZSI6Im1heC5tdXN0ZXJtYW5uIiwiZ2l2ZW5fbmFtZSI6Ik1heCIsImZhbWlseV9uYW1lIjoiTXVzdGVybWFubiIsIm9yZ2FuaXphdGlvbiI6eyJpZCI6IjNiMjVjNmY1LTQ3MDUtNDA3NC05ZmM2LWE1MGMyOGViYTQwNiIsIm5hbWUiOiJoZWxwd2F2ZSB0ZXN0In19
---
# decoded
{
  "sub": "18159713-5d4e-4ad5-94ad-fbb6bb147984",
  "email": "max.mustermann@helpwave.de",
  "email_verified": true,
  "name": "Max Mustermann",
  "preferred_username": "max.mustermann",
  "given_name": "Max",
  "family_name": "Mustermann",
  "organization": {
    "id": "3b25c6f5-4705-4074-9fc6-a50c28eba406",
    "name": "helpwave test"
  }
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

### Docker Images

#### dev-go

The dev-go image is a common development environment for go services. It includes go and a whole lot of tools and dependencies.
When updating the Dockerfile, also increase the `DEV_TAG` variable in the `up.sh` file.

#### dev-go-custom

For this image we only provide a Dockerfile, you can not pull it from the registry.
It is built by docker-compose using your uid and gid as build arguments to reduce friction when it comes to mounted files.

The other function of this image is to allow customization of the dev container.
Feel free to install custom tooling (e.g. zsh, nano, ...) there.
Please mind the instructions at the top of the Dockerfile though.
If you think a tool might be useful to others, install it in the dev-go image instead.

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

* `000009_some_name.up.sql` contains all changes from version 8 to 9
* `000009_some_name.down.sql` contains all changes from version 9 to 8 in reverse order from

```bash
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

* `<service>` must be one of the services inside `/services/`
* `[... arguments for migrate/migrate]` gets passed directly to migrate/migrate


#### Examples

* Migrate the task-svc database all the way up `./migrate.sh task-svc up`
* Migrate the task-svc database one down: `./migrate.sh task-svc down 1`
* Current migration version of the task-svc database: `./migrate.sh task-svc version`

#### desired

Additionally, the script allows you to query the highest available migration version
based on the migration files available in the service:

```bash
./migrate <service> desired
```

### `./models.sh` - Generate models from SQL Queries

> [!IMPORTANT]
> Requires a running database, it's best to run `devenv up` before running this script.

We use [sqlc](https://docs.sqlc.dev/en/latest/), a compiler that generates go functions based on SQL queries and a schema.
This script

1. Makes sure the database is fully migrated up (see migration.sh)
2. Generates a `schema.sql` using pg_dump
3. Invokes sqlc to generate go code based on a `sqlc.yaml`

> [!TIP]
> The `schema.sql` is also a great place to familiarize yourself with the data model(s)!

Usage:

* `./models.sh <some-svc>` generates models for a specific service
* `./models.sh models` generates models for all services

## Enviroment variables

Every service should contain a `.env.example` file which should be copied to a usable `.env` file

Default Variables:

```bash
# The mode used, options available
#  development, production
MODE=development

# The following levels are available:
#  trace, debug, info, warn, error, fatal, panic
LOG_LEVEL=debug

# The port on which the the service will listen on (default: 8080)
PORT=8080

# The address, where a metrics (prometheus) server will be started on,
# if missing, no metrics server will be started!
#   e.g: "0.0.0.0:2112", ":8080"
METRICS_ADDR=

# Database related configurations
POSTGRES_HOST=localhost
POSTGRES_PORT=5432
POSTGRES_USER=postgres
POSTGRES_PASSWORD=postgres
POSTGRES_DB=postgres

# EventStoreDB related configurations
EVENTSTORE_CS=esdb://admin:changeit@localhost:2113?tls=false

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

# the language to fallback to for users that
# don't provide a (valid) language header
# must be a valid BCP 47 string
FALLBACK_LANGUAGE=en
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

## Deployment

[See infrastructure/README.md](infrastructure/README.md)

## Archived Services

- impulse-svc ([9bbe537](https://github.com/helpwave/services/commit/9bbe53744dc2650bc99b21e0894c1a9bc42f6f12))

