#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Treat unset variables as an error and exit
set -u

# Exit immediately if a command in a pipeline fails
set -o pipefail

# Save the directory where the script is located
SCRIPT_DIR="$(dirname "$(realpath "$0")")"

# Change to that directory
cd "$SCRIPT_DIR" || { echo "Failed to change directory to $SCRIPT_DIR"; exit 1; }

# Iterate over each .fga.yaml file in the script's directory
for file in *.fga.yaml; do
    # Check if there are any .fga.yaml files
    if [ -e "$file" ]; then
        echo "$file"
        fga model test --tests "$file"
    else
        echo "No .fga.yaml files found."
    fi
done
