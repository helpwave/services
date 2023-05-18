# services

helpwave's microservices

## Getting started

1. [Install](https://docs.dapr.io/getting-started/install-dapr-cli/) and [run](https://docs.dapr.io/getting-started/install-dapr-selfhost/) Dapr locally
2. Most of our services require a database. Run `dev/docker-compose.yaml` to set up a basic postgres database
   > Postgres username and password: `postgres`:`postgres`

   > pgAdmin username and password: `tech@helpwave.de`:`tech@helpwave.de`
3. Go to your 'service/' of choice
4. Run `make SERVICE=task-svc migrate-up` to run the migrations or do it manually by [installing migrate](https://github.com/golang-migrate/migrate)
5. Copy the environment variables of `.env.example` to '.env' and configure them
6. Run the service
   > Most of our services can be run via `go run main.go`. In the future, we will provide some more convenient ways to setup all services directly via Dapr.

### Fake token

Every service that is using auth, as the ability to use something called fake-tokens.
A fake-token are Base64 encoded claims of our ID Token to[services-local-dev](services-local-dev) not rely on our OAuth2.0 provider
during local development. With the environment variable `INSECURE_FAKE_TOKEN_ENABLE=true` set,
this fast-path gets activated.

The claims are defined [here](libs/common/auth.go#L37).

Here is an example fake-token that can be used as the bearer authorization token.
```
eyJzdWIiOiIxODE1OTcxMy01ZDRlLTRhZDUtOTRhZC1mYmI2YmIxNDc5ODQiLCJlbWFpbCI6InRlc3RpbmUudGVzdEBoZWxwd2F2ZS5kZSJ9
---
# decoded
{
  "sub": "18159713-5d4e-4ad5-94ad-fbb6bb147984",
  "email": "testine.test@helpwave.de"
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
