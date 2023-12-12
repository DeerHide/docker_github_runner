# docker_github_runner
Provide Docker Image for Github Runner

## How to locally test image :

``` bash

# Define the targeted ARCH amd64 | arm64
export BUILD_ARCH=amd64

# Build the Image
./scripts/docker_build.sh $BUILD_ARCH

# Run the Image
./scripts/docker_run.sh $BUILD_ARCH

```