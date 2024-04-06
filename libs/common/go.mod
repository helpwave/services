module common

go 1.22

replace (
	hwlocale => ../hwlocale
	hwutil => ../hwutil
	telemetry => ../telemetry
)

require (
	github.com/coreos/go-oidc v2.2.1+incompatible
	github.com/dapr/dapr v1.13.2
	github.com/dapr/go-sdk v1.10.1
	github.com/go-playground/validator/v10 v10.19.0
	github.com/golang/protobuf v1.5.4
	github.com/google/uuid v1.6.0
	github.com/grpc-ecosystem/go-grpc-middleware/v2 v2.1.0
	github.com/joho/godotenv v1.5.1
	github.com/nicksnyder/go-i18n/v2 v2.4.0
	github.com/rs/zerolog v1.32.0
	github.com/stretchr/testify v1.9.0
	go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.50.0
	go.opentelemetry.io/otel v1.25.0
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc v1.25.0
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp v1.25.0
	go.opentelemetry.io/otel/exporters/zipkin v1.25.0
	go.opentelemetry.io/otel/sdk v1.25.0
	golang.org/x/oauth2 v0.19.0
	golang.org/x/text v0.14.0
	google.golang.org/genproto/googleapis/rpc v0.0.0-20240401170217-c3f982113cda
	google.golang.org/grpc v1.63.0
	google.golang.org/protobuf v1.33.0
	hwlocale v0.0.0
	hwutil v0.0.0
	telemetry v0.0.0
)

require (
	github.com/BurntSushi/toml v1.3.2 // indirect
	github.com/cenkalti/backoff/v4 v4.3.0 // indirect
	github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc // indirect
	github.com/fatih/structs v1.1.0 // indirect
	github.com/gabriel-vasile/mimetype v1.4.3 // indirect
	github.com/go-logr/logr v1.4.1 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/go-playground/locales v0.14.1 // indirect
	github.com/go-playground/universal-translator v0.18.1 // indirect
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.19.0 // indirect
	github.com/leodido/go-urn v1.4.0 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.20 // indirect
	github.com/openzipkin/zipkin-go v0.4.2 // indirect
	github.com/pmezard/go-difflib v1.0.1-0.20181226105442-5d4384ee4fb2 // indirect
	github.com/pquerna/cachecontrol v0.1.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace v1.25.0 // indirect
	go.opentelemetry.io/otel/metric v1.25.0 // indirect
	go.opentelemetry.io/otel/trace v1.25.0 // indirect
	go.opentelemetry.io/proto/otlp v1.1.0 // indirect
	golang.org/x/crypto v0.21.0 // indirect
	golang.org/x/net v0.23.0 // indirect
	golang.org/x/sys v0.18.0 // indirect
	google.golang.org/appengine v1.6.8 // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20240227224415-6ceb2ff114de // indirect
	gopkg.in/square/go-jose.v2 v2.6.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)
