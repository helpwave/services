module user-svc

go 1.20

replace gen => ../../gen/go

require (
	gen v0.0.0
	github.com/dapr/go-sdk v1.9.1
	github.com/google/uuid v1.4.0
	github.com/rs/zerolog v1.31.0
	golang.org/x/net v0.18.0
	google.golang.org/grpc v1.59.0
	google.golang.org/protobuf v1.31.0
	gorm.io/gorm v1.25.5
)

require (
	github.com/dapr/dapr v1.12.1 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/jinzhu/inflection v1.0.0 // indirect
	github.com/jinzhu/now v1.1.5 // indirect
	github.com/kr/pretty v0.3.1 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.20 // indirect
	github.com/rogpeppe/go-internal v1.11.0 // indirect
	golang.org/x/sys v0.14.0 // indirect
	golang.org/x/text v0.14.0 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20231106174013-bbf56f31fb17 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)
