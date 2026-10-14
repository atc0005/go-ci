# Copyright 2020 Adam Chalkley
#
# https://github.com/atc0005/go-ci
#
# Licensed under the MIT License. See LICENSE file in the project root for
# full license information.

# https://hub.docker.com/_/golang

# REMINDER: Use the 'manifest digest' not the 'index digest' from the Docker Hub page.
FROM amd64/golang:1.26.9-bookworm@sha256:b8b4bb80ee1d038e34dc148b77d59322f3da7b0fa69c18de5185063645b1f9b1

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
