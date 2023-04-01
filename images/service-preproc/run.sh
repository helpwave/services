set -e # fail fast

cd wd

CMD=${1:-generate} # use "generate" as default
shift # move the variable names, $2 -> $1, $3 -> $2, ... "$@" now ignores the old "$1"

buf $CMD $@

if [ "$CMD" = "generate" ]; then
	protoc-go-inject-tag -input="gen/proto/*/*/*/*.pb.go" # Note this only matches exactly three dirs, as go's glob does not support '**' (https://github.com/golang/go/issues/11862)
fi
