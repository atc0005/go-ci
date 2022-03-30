# Copyright 2020 Adam Chalkley
#
# https://github.com/atc0005/go-ci
#
# Licensed under the MIT License. See LICENSE file in the project root for
# full license information.

# https://hub.docker.com/_/golang
# https://fabianlee.org/2020/01/26/golang-using-multi-stage-builds-to-create-clean-docker-images/


# builder image
# use the same environment as our final image for binary compatibility
# FROM golangci/golangci-lint:v1.45.0-alpine as builder
FROM golang:1.17.8 as builder

ENV GOLANGCI_LINT_VERSION="v1.45.2"
ENV STATICCHECK_VERSION="v0.3.0"

# Skip go clean step as the entire image will be tossed after we are finished
# and cleaning the modules cache takes extra time that won't help the final
# linting-only image.
RUN go install honnef.co/go/tools/cmd/staticcheck@${STATICCHECK_VERSION} \
    && staticcheck --version \
    && curl -sSfLO https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh \
    && sh install.sh -b "$(go env GOPATH)/bin" ${GOLANGCI_LINT_VERSION} \
    && golangci-lint --version

# For CI "linting only" use
# FROM golangci/golangci-lint:v1.45.0-alpine
FROM golang:1.17.8 as final

# https://docs.github.com/en/packages/learn-github-packages/connecting-a-repository-to-a-package
LABEL org.opencontainers.image.source="https://github.com/atc0005/go-ci"

# https://github.com/opencontainers/image-spec/blob/main/annotations.md#pre-defined-annotation-keys
LABEL org.opencontainers.image.documentation="https://github.com/atc0005/go-ci"
LABEL org.opencontainers.image.url="https://github.com/atc0005/go-ci"
LABEL org.opencontainers.image.title="go-ci-lint-only"
LABEL org.opencontainers.image.description="Docker image intended for lightweight \
    linting and testing of Go code. Based on current golangci-lint \
    image. Intended for lightweight testing of iterative branch changes."
LABEL org.opencontainers.image.authors="Adam Chalkley (github.com/atc0005)"

# Intended to help identify the versions of the included linting tools
ENV GOLANGCI_LINT_VERSION="v1.45.2"
ENV STATICCHECK_VERSION="v0.3.0"

COPY --from=builder /go/bin/golangci-lint /usr/bin/golangci-lint
COPY --from=builder /go/bin/staticcheck /usr/bin/staticcheck

# Copy over linting config files to root of container image to serve as a
# default. Projects bringing their own config files (e.g., via GitHub Actions)
# can easily override these files, while projects choosing to use these config
# files exclusively can omit their copy.
#
# These files are copied from the root of this repo alongside this Dockerfile
# via Makefile `build` recipe. This allows for maintaining a single copy of
# either file in this repo vs each Dockerfile build "context" having their own
# separate copy.
COPY .markdownlint.yml /
COPY .golangci.yml /
