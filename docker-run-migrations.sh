#!/usr/bin/env sh

# expects the following env variables:
#  - POSTGRES_DSN
#  - ZED_ENDPOINT
#  - ZED_TOKEN

set -e

MAX_ATTEMPTS=30
WAIT_INTERVAL=2s

wait_for_postgres() {
    local attempt_counter=0
    while [ $attempt_counter -lt $MAX_ATTEMPTS ]; do
        if pg_isready -d $POSTGRES_DSN; then
            echo "PostgreSQL is ready!"
            return 0
        fi

        attempt_counter=$((attempt_counter + 1))
        sleep $WAIT_INTERVAL
    done

    echo "Timeout: PostgreSQL is not ready!"
    return 1
}

wait_for_postgres
migrate -verbose -database $POSTGRES_DSN -path migrations up
