#!/bin/bash

set -e

### Setup ###
cd ../../
yes | ./migrate.sh task-svc down
./migrate.sh task-svc up

cd -

psql -f integration_tests/seed.sql postgres://postgres:postgres@localhost:5432/task-svc

rm integration_tests/*.actual -f


# Loop through all the .exec files
cd ./integration_tests

for exec_file in *.exec; do
    base_name="${exec_file%.exec}"

    bash "$exec_file" > "${base_name}.actual"

    # Run diff against the expected file
    diff "${base_name}.actual" "${base_name}.expected"

    # Check the exit code of the diff command
    if [ $? -eq 0 ]; then
        echo "Test for $base_name passed."
    else
        echo "Test for $base_name failed."
    fi
done
