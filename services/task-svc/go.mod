module task-svc

go 1.19

replace (
	common => ../../libs/common
	hwgorm => ../../libs/hwgorm
	hwutil => ../../libs/hwutil
	logging => ../../libs/logging
)

require (
	common v0.0.0
	github.com/dapr/go-sdk v1.6.1-0.20230224224332-7c5ecee155cc
	github.com/google/uuid v1.3.0
	github.com/rs/zerolog v1.28.0
	google.golang.org/grpc v1.52.3
	google.golang.org/protobuf v1.28.1
	hwgorm v0.0.0
	hwutil v0.0.0
)

require (
	github.com/coreos/go-oidc v2.2.1+incompatible // indirect
	github.com/fatih/structs v1.1.0 // indirect
	github.com/go-playground/locales v0.14.0 // indirect
	github.com/go-playground/universal-translator v0.18.0 // indirect
	github.com/go-playground/validator/v10 v10.11.1 // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/grpc-ecosystem/go-grpc-middleware v1.3.0 // indirect
	github.com/jackc/chunkreader/v2 v2.0.1 // indirect
	github.com/jackc/pgconn v1.13.0 // indirect
	github.com/jackc/pgerrcode v0.0.0-20220416144525-469b46aa5efa // indirect
	github.com/jackc/pgio v1.0.0 // indirect
	github.com/jackc/pgpassfile v1.0.0 // indirect
	github.com/jackc/pgproto3/v2 v2.3.1 // indirect
	github.com/jackc/pgservicefile v0.0.0-20200714003250-2b9c44734f2b // indirect
	github.com/jackc/pgtype v1.12.0 // indirect
	github.com/jackc/pgx/v4 v4.17.2 // indirect
	github.com/jinzhu/inflection v1.0.0 // indirect
	github.com/jinzhu/now v1.1.4 // indirect
	github.com/joho/godotenv v1.4.0 // indirect
	github.com/leodido/go-urn v1.2.1 // indirect
	github.com/mattn/go-colorable v0.1.12 // indirect
	github.com/mattn/go-isatty v0.0.14 // indirect
	github.com/pquerna/cachecontrol v0.1.0 // indirect
	golang.org/x/crypto v0.0.0-20221012134737-56aed061732a // indirect
	golang.org/x/net v0.5.0 // indirect
	golang.org/x/oauth2 v0.0.0-20221014153046-6fdb5e3db783 // indirect
	golang.org/x/sys v0.4.0 // indirect
	golang.org/x/text v0.6.0 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/genproto v0.0.0-20230104163317-caabf589fcbf // indirect
	gopkg.in/square/go-jose.v2 v2.6.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	gorm.io/driver/postgres v1.4.5 // indirect
	gorm.io/gorm v1.24.2 // indirect
	logging v0.0.0 // indirect
)
