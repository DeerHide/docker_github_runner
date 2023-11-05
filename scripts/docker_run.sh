#!/usr/bin/env bash

# Add flags
# -e Exit immediately if a command exits with a non-zero status.
# -x Print commands and their arguments as they are executed.
set -ex

# Count the number of arguments
if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters. Usage: $0 <arch>"
    exit 1
fi

# Get and validate architecture
_arch=${1:amd64}
if [[ "$_arch" != "amd64" && "$_arch" != "arm64" ]]; then
    echo "Invalid architecture: $_arch must be amd64 or arm64"
    exit 1
fi

# Run the image
docker run \
    --rm \
    --name "deerhide_github_runner-$_arch-dev" \
    "deerhide_github_runner:$_arch-dev"