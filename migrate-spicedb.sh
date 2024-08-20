#!/usr/bin/bash

set -e

spicedb_file="${1:-$(git rev-parse --show-toplevel)/spicedb.yaml}"
echo $spicedb_file

expected_version=$(head -n1 $spicedb_file | awk -F': ' '{print $2}')
if [ -z "$expected_version" ]; then
    echo "Version extraction failed or is empty, first line must be 'hw_schema_version: <version number>'"
    exit 1
fi

version_relation=$(zed relationship read --skip-version-check spice_schema_migrations/migration:current version)
version=$(echo $version_relation | awk -F ' ' '{print $3}' | awk -F ':' '{print $2}')
version=${version:-"0"}

if [[ "$expected_version" == "$version" ]]; then
    echo "The expected version is equal to the actual version. No action needed."
elif [[ "$expected_version" < "$version" ]]; then
    echo "WARN: The expected version is below the actual version."
else
   	echo "migration needed (expected: $expected_version, actual: $version)"

   	# Here is a great place to run relationship migrations, if they are ever needed

	# write new schema (will fail if relationships exist, that are not in the new schema)
   	zed import --skip-version-check --relationships=false $spicedb_file
   	echo "schema written"

   	# delete old version relation and create new one
   	zed relationship --skip-version-check delete spice_schema_migrations/migration:current version spice_schema_migrations/version:$version
   	zed relationship --skip-version-check create spice_schema_migrations/migration:current version spice_schema_migrations/version:$expected_version
   	echo "migration done"
fi
