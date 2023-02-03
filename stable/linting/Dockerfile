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
FROM golang:1.19.5 as builder

ENV GOLANGCI_LINT_VERSION="v1.51.0"
ENV STATICCHECK_VERSION="v0.4.0"
ENV GOVULNCHECK_VERSION="v0.0.0-20230110180137-6ad3e3d07815"

# Skip go clean step as the entire image will be tossed after we are finished
# and cleaning the modules cache takes extra time that won't help the final
# linting-only image.
RUN echo "Installing staticcheck@${STATICCHECK_VERSION}" \
    && go install honnef.co/go/tools/cmd/staticcheck@${STATICCHECK_VERSION} \
    && staticcheck --version \
    && echo "Installing govulncheck@${GOVULNCHECK_VERSION}" \
    && go install golang.org/x/vuln/cmd/govulncheck@${GOVULNCHECK_VERSION} \
    && echo "Installing golangci-lint ${GOLANGCI_LINT_VERSION}" \
    && curl -sSfLO https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh \
    && sh install.sh -b "$(go env GOPATH)/bin" ${GOLANGCI_LINT_VERSION} \
    && golangci-lint --version

# For CI "linting only" use
# FROM golangci/golangci-lint:v1.45.0-alpine
FROM golang:1.19.5 as final

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
ENV GOLANGCI_LINT_VERSION="v1.51.0"
ENV STATICCHECK_VERSION="v0.4.0"
ENV GOVULNCHECK_VERSION="v0.0.0-20230110180137-6ad3e3d07815"

COPY --from=builder /go/bin/golangci-lint /usr/bin/golangci-lint
COPY --from=builder /go/bin/staticcheck /usr/bin/staticcheck
COPY --from=builder /go/bin/govulncheck /usr/bin/govulncheck

# Copy over linting config files to root of container image to serve as a
# default. The Makefile copies in these files as Docker requires that the
# source path for the files be inside the context of the build.
#
# From the official documentation:
#
# "you cannot COPY ../something /something, because the first step of a docker
# build is to send the context directory (and subdirectories) to the docker
# daemon.""
#
# Projects bringing their own config files (e.g., via GitHub Actions) can
# easily override these files, while projects choosing to use these config
# files exclusively can omit their copy.
COPY .markdownlint.yml /
COPY .golangci.yml /
