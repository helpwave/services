module common

go 1.19

replace (
	hwutil => ../hwutil
	logging => ../logging
)

require (
	github.com/coreos/go-oidc v2.2.1+incompatible
	github.com/dapr/go-sdk v1.6.1-0.20230224224332-7c5ecee155cc
	// FIXME: update dapr/go-sdk when https://github.com/dapr/go-sdk/commit/7c5ecee155cce040bb48cb3952f0bfdf6f168ca1 is in a proper release
	// FIXME: for some reason this is tagged as v1.6.1, but this is the latest commit on the sdk's main branch, so should be v1.7+
	// FIXME: if you see this it is very likely that a new release (after v1.7.0) was released, if so, update and remove this comment
	github.com/grpc-ecosystem/go-grpc-middleware v1.3.0
	github.com/joho/godotenv v1.4.0
	github.com/rs/zerolog v1.28.0
	golang.org/x/oauth2 v0.0.0-20200107190931-bf48bf16ab8d
	google.golang.org/grpc v1.51.0
	hwutil v0.0.0
	logging v0.0.0
)

require google.golang.org/protobuf v1.28.1

require (
	cloud.google.com/go/compute/metadata v0.2.3 // indirect
	github.com/fatih/structs v1.1.0 // indirect
	github.com/go-playground/locales v0.14.0 // indirect
	github.com/go-playground/universal-translator v0.18.0 // indirect
	github.com/go-playground/validator/v10 v10.11.1 // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/google/uuid v1.3.0 // indirect
	github.com/leodido/go-urn v1.2.1 // indirect
	github.com/mattn/go-colorable v0.1.12 // indirect
	github.com/mattn/go-isatty v0.0.14 // indirect
	github.com/pquerna/cachecontrol v0.1.0 // indirect
	golang.org/x/crypto v0.0.0-20211215153901-e495a2d5b3d3 // indirect
	golang.org/x/net v0.5.0 // indirect
	golang.org/x/sys v0.4.0 // indirect
	golang.org/x/text v0.6.0 // indirect
	google.golang.org/appengine v1.4.0 // indirect
	google.golang.org/genproto v0.0.0-20230104163317-caabf589fcbf // indirect
	gopkg.in/square/go-jose.v2 v2.6.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)
