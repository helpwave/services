set -e # fail fast

cd wd

CMD=${1:-generate} # use "generate" as default
shift # move the variable names, $2 -> $1, $3 -> $2, ... "$@" now ignores the old "$1"

buf $CMD $@

if [ "$CMD" = "generate" ]; then
	protoc-go-inject-tag -input="gen/go/proto/*/*/*/*.pb.go" # Note this only matches exactly three dirs, as go's glob does not support '**' (https://github.com/golang/go/issues/11862)
	gofmt -w gen/go

	# remove version lines as they tend to break PRs
	sed '/# Protobuf Python Version: /d' -i $(find gen -path "gen/python/**/*.py")
	sed '/\/\/ 	protoc-gen-go v/d' -i $(find gen -path "gen/go/**/*.go")
	sed '/\/\/ 	protoc-gen-grpc-web v/d' -i $(find gen -path "gen/ts/**/*.*")
	# dart gen does not (currently) have a compiler version stamp

fi
