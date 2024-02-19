module hwdb

go 1.22

replace (
	common => ../common
	hwutil => ../hwutil
	telemetry => ../telemetry
)

require (
	github.com/jackc/pgx/v5 v5.5.3
	github.com/rs/zerolog v1.32.0
	github.com/vgarvardt/pgx-google-uuid/v5 v5.0.0
	go.opentelemetry.io/otel v1.23.1
	go.opentelemetry.io/otel/trace v1.23.1
	google.golang.org/protobuf v1.32.0
	hwutil v0.0.0
	telemetry v0.0.0
)

require (
	github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc // indirect
	github.com/fatih/structs v1.1.0 // indirect
	github.com/gabriel-vasile/mimetype v1.4.2 // indirect
	github.com/go-logr/logr v1.4.1 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/go-playground/locales v0.14.1 // indirect
	github.com/go-playground/universal-translator v0.18.1 // indirect
	github.com/go-playground/validator/v10 v10.16.0 // indirect
	github.com/google/uuid v1.6.0 // indirect
	github.com/jackc/pgpassfile v1.0.0 // indirect
	github.com/jackc/pgservicefile v0.0.0-20221227161230-091c0ba34f0a // indirect
	github.com/jackc/puddle/v2 v2.2.1 // indirect
	github.com/leodido/go-urn v1.2.4 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.19 // indirect
	github.com/pmezard/go-difflib v1.0.1-0.20181226105442-5d4384ee4fb2 // indirect
	go.opentelemetry.io/otel/metric v1.23.1 // indirect
	golang.org/x/crypto v0.17.0 // indirect
	golang.org/x/net v0.18.0 // indirect
	golang.org/x/sync v0.3.0 // indirect
	golang.org/x/sys v0.15.0 // indirect
	golang.org/x/text v0.14.0 // indirect
)
