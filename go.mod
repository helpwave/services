module devtools

go 1.23

replace (
	common => ./libs/common
	hwauthz => ./libs/hwauthz
	hwlocale => ./libs/hwlocale
	hwtesting => ./libs/hwtesting
	hwutil => ./libs/hwutil
	telemetry => ./libs/telemetry
)

require (
	github.com/alecthomas/kong v1.5.1
	github.com/authzed/authzed-go v1.1.1
	github.com/authzed/grpcutil v0.0.0-20240123194739-2ea1e3d2d98b
	google.golang.org/grpc v1.68.1
	gopkg.in/yaml.v3 v3.0.1
	hwauthz v0.0.0
)

require (
	cloud.google.com/go/compute/metadata v0.5.0 // indirect
	github.com/cenkalti/backoff/v4 v4.3.0 // indirect
	github.com/certifi/gocertifi v0.0.0-20210507211836-431795d63e8d // indirect
	github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc // indirect
	github.com/envoyproxy/protoc-gen-validate v1.1.0 // indirect
	github.com/grpc-ecosystem/go-grpc-middleware v1.4.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.23.0 // indirect
	github.com/jzelinskie/stringz v0.0.3 // indirect
	github.com/kr/text v0.2.0 // indirect
	github.com/planetscale/vtprotobuf v0.6.1-0.20240319094008-0393e58bdf10 // indirect
	github.com/pmezard/go-difflib v1.0.1-0.20181226105442-5d4384ee4fb2 // indirect
	github.com/rogpeppe/go-internal v1.13.1 // indirect
	github.com/samber/lo v1.47.0 // indirect
	github.com/stretchr/testify v1.10.0 // indirect
	golang.org/x/net v0.32.0 // indirect
	golang.org/x/sys v0.28.0 // indirect
	golang.org/x/text v0.21.0 // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20241104194629-dd2ea8efbc28 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20241104194629-dd2ea8efbc28 // indirect
	google.golang.org/protobuf v1.35.2 // indirect
)
