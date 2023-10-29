{ pkgs, ... }:

let
  protoc-go-inject-tag = import ../protoc-go-inject-tag.nix { inherit pkgs; };
in {
  scripts = {
    proto.exec = ''
      ${pkgs.buf}/bin/buf lint --path proto
      ${pkgs.buf}/bin/buf generate --path proto --include-imports --include-wkt
      ${protoc-go-inject-tag}/bin/protoc-go-inject-tag -input="gen/go/proto/*/*/*/*.pb.go"
      # TODO: use gofmt from pkgs
      gofmt -w gen/go
    '';

    proto-lint.exec = ''
      ${pkgs.buf}/bin/buf lint --path proto
    '';

    nix-lint.exec = ''
      ${pkgs.nixpkgs-fmt}/bin/nixpkgs-fmt --check .
    '';

    migratesh.exec = ''
      # See README.md -> Migrations -> Usage

      set -euo pipefail

      SERVICE=$1
      WORKING_DIRECTORY="services/$SERVICE"

      # test if service exists and has migrations
      if [ ! -d $WORKING_DIRECTORY/migrations ]; then
          echo "service $1 does not exist or has no migrations" >&2
          exit 1
      fi

      if [ $2 = "desired" ]; then
        ls $WORKING_DIRECTORY/migrations | sort -r | head -n1 | grep -Eo '[1-9][0-9]*' | head -n1
        exit 0
      fi

      # test if .env exists for service
      if [ ! -f $WORKING_DIRECTORY/.env ]; then
          echo "WARNING: .env file for service $1 does not exist" >&2
      else
        # load service's .env
        export $(grep -v '^#' $WORKING_DIRECTORY/.env | xargs)
      fi

      # prepare args for piping to migrate
      # by removing the first argument (the service)
      shift

      # TODO: dont hardcode here
      POSTGRES_HOST="127.0.0.1"
      POSTGRES_PORT="5432"
      POSTGRES_USER="postgres"
      POSTGRES_PASSWORD="postgres"
      SERVICE_DB=$SERVICE

      POSTGRES_URL="postgres://$POSTGRES_USER:$POSTGRES_PASSWORD@$POSTGRES_HOST:$POSTGRES_PORT/$SERVICE_DB?sslmode=disable"

      echo "Note: using sslmode=disable, only use this script with local databases!" >&2

      migrate -database $POSTGRES_URL -path $WORKING_DIRECTORY/migrations "$@"

      if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
        echo "Done, waiting 10 seconds to show result"
        echo "You can press CTRL+C"
          sleep 10
      fi
    '';
  };

  processes = {
    services.exec = ''
      set -euo pipefail

      cleanup() {
        kill -TERM $pid
        wait $pid
        cleanup_command
        exit 0
      }

      cleanup_command() {
        dapr uninstall --all
      }

      # trap to stop Dapr on SIGTERM
      trap cleanup SIGTERM

      # wait for postgres
      while ! pg_isready --quiet --host localhost; do
        sleep 1
      done

      # do migration
      # TODO: Do the following dynamically
      migratesh task-svc up
      migratesh user-svc up

      # clean install Dapr
      # TODO: Probably replace this directly with daprd
      dapr uninstall && dapr init --slim
      dapr run --run-file dapr_run.yaml &
      pid=$!

      wait $pid
      cleanup_command
    '';
  };
}

