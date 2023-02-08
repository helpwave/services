[ -d "api" ] && cd api || exit 0

if ls ./api/*.proto &>/dev/null
then
	protoc --go_out=. \
			--go_opt=paths=source_relative \
			--go-grpc_out=. \
			--go-grpc_opt=paths=source_relative \
			*.proto &&
	protoc-go-inject-tag -input="*.pb.go"
fi
