module common

go 1.20

replace (
	hwutil => ../hwutil
	logging => ../logging
)

require (
	github.com/coreos/go-oidc v2.2.1+incompatible
	github.com/dapr/go-sdk v1.9.1
	github.com/grpc-ecosystem/go-grpc-middleware v1.4.0
	github.com/joho/godotenv v1.5.1
	github.com/rs/zerolog v1.31.0
	golang.org/x/oauth2 v0.14.0
	google.golang.org/grpc v1.59.0
	hwutil v0.0.0
	logging v0.0.0
)

require (
	github.com/dapr/dapr v1.12.1
	github.com/google/uuid v1.4.0
	google.golang.org/protobuf v1.31.0
)

require (
	cloud.google.com/go/compute v1.23.2 // indirect
	github.com/fatih/structs v1.1.0 // indirect
	github.com/gabriel-vasile/mimetype v1.4.3 // indirect
	github.com/go-playground/locales v0.14.1 // indirect
	github.com/go-playground/universal-translator v0.18.1 // indirect
	github.com/go-playground/validator/v10 v10.16.0 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/kr/pretty v0.3.1 // indirect
	github.com/leodido/go-urn v1.2.4 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.20 // indirect
	github.com/pquerna/cachecontrol v0.2.0 // indirect
	github.com/rogpeppe/go-internal v1.11.0 // indirect
	golang.org/x/crypto v0.15.0 // indirect
	golang.org/x/net v0.18.0 // indirect
	golang.org/x/sys v0.14.0 // indirect
	golang.org/x/text v0.14.0 // indirect
	google.golang.org/appengine v1.6.8 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20231106174013-bbf56f31fb17 // indirect
	gopkg.in/square/go-jose.v2 v2.6.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)
