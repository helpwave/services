module ory-svc

go 1.20

replace (
	common => ../../libs/common
	gen => ../../gen/go
	hwgorm => ../../libs/hwgorm
	hwutil => ../../libs/hwutil
	logging => ../../libs/logging
)

require (
	common v0.0.0
	gen v0.0.0
	github.com/dapr/go-sdk v1.8.0
	github.com/go-chi/chi/v5 v5.0.10
	github.com/google/uuid v1.3.0
	github.com/mitchellh/mapstructure v1.5.0
	github.com/ory/client-go v1.1.41
	github.com/rs/zerolog v1.28.0
	hwutil v0.0.0
)

require (
	github.com/coreos/go-oidc v2.2.1+incompatible // indirect
	github.com/fatih/structs v1.1.0 // indirect
	github.com/go-playground/locales v0.14.0 // indirect
	github.com/go-playground/universal-translator v0.18.0 // indirect
	github.com/go-playground/validator/v10 v10.11.1 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/grpc-ecosystem/go-grpc-middleware v1.3.0 // indirect
	github.com/joho/godotenv v1.4.0 // indirect
	github.com/leodido/go-urn v1.2.1 // indirect
	github.com/mattn/go-colorable v0.1.12 // indirect
	github.com/mattn/go-isatty v0.0.14 // indirect
	github.com/pquerna/cachecontrol v0.1.0 // indirect
	golang.org/x/crypto v0.11.0 // indirect
	golang.org/x/net v0.12.0 // indirect
	golang.org/x/oauth2 v0.10.0 // indirect
	golang.org/x/sys v0.10.0 // indirect
	golang.org/x/text v0.11.0 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/genproto v0.0.0-20230410155749-daa745c078e1 // indirect
	google.golang.org/grpc v1.55.0 // indirect
	google.golang.org/protobuf v1.31.0 // indirect
	gopkg.in/square/go-jose.v2 v2.6.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	logging v0.0.0 // indirect
)
