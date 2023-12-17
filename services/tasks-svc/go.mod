module tasks-svc

go 1.20

replace (
	common => ../../libs/common
	decaying_lru => ../../libs/decaying_lru
	gen => ../../gen/go
	hwdb => ../../libs/hwdb
	hwes => ../../libs/hwes
	hwgorm => ../../libs/hwgorm
	hwutil => ../../libs/hwutil
	logging => ../../libs/logging
	proto_helpers => ../../libs/proto_helpers
)

require (
	common v0.0.0-00010101000000-000000000000
	gen v0.0.0-00010101000000-000000000000
	github.com/dapr/go-sdk v1.9.1
	github.com/google/uuid v1.4.0
	hwes v0.0.0-00010101000000-000000000000
)

require (
	github.com/EventStore/EventStore-Client-Go v1.0.2 // indirect
	github.com/coreos/go-oidc v2.2.1+incompatible // indirect
	github.com/dapr/dapr v1.12.0-rc.4 // indirect
	github.com/fatih/structs v1.1.0 // indirect
	github.com/gabriel-vasile/mimetype v1.4.2 // indirect
	github.com/go-playground/locales v0.14.1 // indirect
	github.com/go-playground/universal-translator v0.18.1 // indirect
	github.com/go-playground/validator/v10 v10.16.0 // indirect
	github.com/gofrs/uuid v3.3.0+incompatible // indirect
	github.com/golang/mock v1.6.0 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/grpc-ecosystem/go-grpc-middleware v1.4.0 // indirect
	github.com/joho/godotenv v1.4.0 // indirect
	github.com/leodido/go-urn v1.2.4 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.19 // indirect
	github.com/pquerna/cachecontrol v0.1.0 // indirect
	github.com/rs/zerolog v1.31.0 // indirect
	golang.org/x/crypto v0.13.0 // indirect
	golang.org/x/net v0.15.0 // indirect
	golang.org/x/oauth2 v0.11.0 // indirect
	golang.org/x/sys v0.12.0 // indirect
	golang.org/x/text v0.13.0 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20230822172742-b8732ec3820d // indirect
	google.golang.org/grpc v1.59.0 // indirect
	google.golang.org/protobuf v1.31.0 // indirect
	gopkg.in/square/go-jose.v2 v2.6.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	hwutil v0.0.0 // indirect
	logging v0.0.0 // indirect
)
