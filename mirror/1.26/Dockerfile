# Copyright 2020 Adam Chalkley
#
# https://github.com/atc0005/go-ci
#
# Licensed under the MIT License. See LICENSE file in the project root for
# full license information.

# https://hub.docker.com/_/golang

# REMINDER: Use the 'manifest digest' not the 'index digest' from the Docker Hub page.
FROM amd64/golang:1.26.5-bookworm@sha256:52c17b52eb8f166a0d5bec1a1acae49f373a4f1fc8e09527043bb7eca23c96ef

# https://docs.github.com/en/packages/learn-github-packages/connecting-a-repository-to-a-package
LABEL org.opencontainers.image.source="https://github.com/atc0005/go-ci"

# https://github.com/opencontainers/image-spec/blob/main/annotations.md#pre-defined-annotation-keys
LABEL org.opencontainers.image.documentation="https://github.com/atc0005/go-ci"
LABEL org.opencontainers.image.url="https://github.com/atc0005/go-ci"
LABEL org.opencontainers.image.title="go-ci-mirror-build-go1.26"
LABEL org.opencontainers.image.description="Docker image intended to mirror \
    latest upstream golang image for the Go 1.26 series. Used by \
    Makefile-driven test, linting and build tasks."
LABEL org.opencontainers.image.authors="Adam Chalkley (github.com/atc0005)"

# Explicitly disable automatic fetching of Go toolchains newer than the
# version explicitly provided by this container image.
#
# https://github.com/atc0005/go-ci/issues/1188
ENV GOTOOLCHAIN="local"
