module task-svc

go 1.22

replace (
	common => ../../libs/common
	decaying_lru => ../../libs/decaying_lru
	gen => ../../gen/go
	hwdb => ../../libs/hwdb
	hwes => ../../libs/hwes
	hwutil => ../../libs/hwutil
	proto_helpers => ../../libs/proto_helpers
	telemetry => ../../libs/telemetry
)

require (
	common v0.0.0
	decaying_lru v0.0.0
	gen v0.0.0
	github.com/dapr/go-sdk v1.9.1
	github.com/google/uuid v1.6.0
	github.com/jackc/pgx/v5 v5.5.3
	github.com/rs/zerolog v1.32.0
	google.golang.org/grpc v1.61.1
	google.golang.org/protobuf v1.32.0
	hwdb v0.0.0
	hwutil v0.0.0
)

require (
	github.com/cenkalti/backoff/v4 v4.2.1 // indirect
	github.com/cespare/xxhash/v2 v2.2.0 // indirect
	github.com/coreos/go-oidc v2.2.1+incompatible // indirect
	github.com/dapr/dapr v1.12.2 // indirect
	github.com/dgryski/go-rendezvous v0.0.0-20200823014737-9f7001d12a5f // indirect
	github.com/fatih/structs v1.1.0 // indirect
	github.com/gabriel-vasile/mimetype v1.4.3 // indirect
	github.com/go-logr/logr v1.4.1 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/go-playground/locales v0.14.1 // indirect
	github.com/go-playground/universal-translator v0.18.1 // indirect
	github.com/go-playground/validator/v10 v10.16.0 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/grpc-ecosystem/go-grpc-middleware v1.4.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.19.0 // indirect
	github.com/jackc/pgpassfile v1.0.0 // indirect
	github.com/jackc/pgservicefile v0.0.0-20231201235250-de7065d80cb9 // indirect
	github.com/jackc/puddle/v2 v2.2.1 // indirect
	github.com/joho/godotenv v1.5.1 // indirect
	github.com/leodido/go-urn v1.2.4 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.20 // indirect
	github.com/openzipkin/zipkin-go v0.4.2 // indirect
	github.com/pquerna/cachecontrol v0.2.0 // indirect
	github.com/redis/go-redis/v9 v9.3.1 // indirect
	github.com/rogpeppe/go-internal v1.11.0 // indirect
	github.com/vgarvardt/pgx-google-uuid/v5 v5.0.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.46.1 // indirect
	go.opentelemetry.io/otel v1.23.1 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace v1.23.1 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc v1.23.1 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp v1.23.1 // indirect
	go.opentelemetry.io/otel/exporters/zipkin v1.23.1 // indirect
	go.opentelemetry.io/otel/metric v1.23.1 // indirect
	go.opentelemetry.io/otel/sdk v1.23.1 // indirect
	go.opentelemetry.io/otel/trace v1.23.1 // indirect
	go.opentelemetry.io/proto/otlp v1.1.0 // indirect
	golang.org/x/crypto v0.19.0 // indirect
	golang.org/x/net v0.21.0 // indirect
	golang.org/x/oauth2 v0.15.0 // indirect
	golang.org/x/sync v0.5.0 // indirect
	golang.org/x/sys v0.17.0 // indirect
	golang.org/x/text v0.14.0 // indirect
	google.golang.org/appengine v1.6.8 // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20240102182953-50ed04b92917 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20240102182953-50ed04b92917 // indirect
	gopkg.in/square/go-jose.v2 v2.6.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	telemetry v0.0.0 // indirect
)
