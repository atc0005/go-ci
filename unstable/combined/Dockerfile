# Copyright 2020 Adam Chalkley
#
# https://github.com/atc0005/go-ci
#
# Licensed under the MIT License. See LICENSE file in the project root for
# full license information.

# https://hub.docker.com/_/golang

FROM golang:1.20.4 as builder

# A current dev branch build (mirrored to fork) is used for pre-release Go
# versions, otherwise the latest upstream build of the tool is installed in
# this image.
ENV GOLANGCI_LINT_VERSION="v1.52.2"

# A current master branch build is used for pre-release Go versions, otherwise
# the latest upstream build of the tool is installed in this image.
ENV STATICCHECK_VERSION="v0.4.3"

ENV GOVULNCHECK_VERSION="v0.1.0"
ENV HTTPERRORYZER_VERSION="v0.0.1"
ENV STRUCTSLOP_VERSION="v0.0.8"
ENV TICKERYZER_VERSION="v0.0.3"
ENV TOMLL_VERSION="v2.0.8"
ENV ERRWRAP_VERSION="v1.5.0"

RUN echo "Installing staticcheck@${STATICCHECK_VERSION}" \
    && go install honnef.co/go/tools/cmd/staticcheck@${STATICCHECK_VERSION} \
    && staticcheck --version

RUN echo "Installing govulncheck@${GOVULNCHECK_VERSION}" \
    && go install golang.org/x/vuln/cmd/govulncheck@${GOVULNCHECK_VERSION} \
    && echo "Installing httperroryzer@${HTTPERRORYZER_VERSION}" \
    && go install github.com/orijtech/httperroryzer/cmd/httperroryzer@${HTTPERRORYZER_VERSION} \
    && echo "Installing structslop@${STRUCTSLOP_VERSION}" \
    && go install github.com/orijtech/structslop/cmd/structslop@${STRUCTSLOP_VERSION} \
    && echo "Installing tickeryzer@${TICKERYZER_VERSION}" \
    && go install github.com/orijtech/tickeryzer/cmd/tickeryzer@${TICKERYZER_VERSION} \
    && echo "Installing tomll@${TOMLL_VERSION}" \
    && go install github.com/pelletier/go-toml/v2/cmd/tomll@${TOMLL_VERSION} \
    && echo "Installing errwrap@${ERRWRAP_VERSION}" \
    && go install github.com/fatih/errwrap@${ERRWRAP_VERSION}

# RUN echo "Installing golangci-lint from dev feat/go1.20 branch" \
#     && git clone https://github.com/atc0005/golangci-lint \
#     && cd golangci-lint \
#     && git checkout ${GOLANGCI_LINT_VERSION} \
#     && go install ./cmd/golangci-lint \
#     && golangci-lint --version

RUN echo "Installing golangci-lint@${GOLANGCI_LINT_VERSION}" \
    && echo "Installing golangci-lint ${GOLANGCI_LINT_VERSION}" \
    && curl -sSfLO https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh \
    && sh install.sh -b "$(go env GOPATH)/bin" ${GOLANGCI_LINT_VERSION} \
    && golangci-lint --version


FROM golang:1.20.4 as final

# https://docs.github.com/en/packages/learn-github-packages/connecting-a-repository-to-a-package
LABEL org.opencontainers.image.source="https://github.com/atc0005/go-ci"

# https://github.com/opencontainers/image-spec/blob/main/annotations.md#pre-defined-annotation-keys
LABEL org.opencontainers.image.documentation="https://github.com/atc0005/go-ci"
LABEL org.opencontainers.image.url="https://github.com/atc0005/go-ci"
LABEL org.opencontainers.image.title="go-ci-unstable"
LABEL org.opencontainers.image.description="Docker container image used to lint, build and test Go code. \
    Based on the latest available non-stable golang:beta image, \
    golang:rc image or if not recently available, the latest stable golang image."
LABEL org.opencontainers.image.authors="Adam Chalkley (github.com/atc0005)"

# A current dev branch build (mirrored to fork) is used for pre-release Go
# versions, otherwise the latest upstream build of the tool is installed in
# this image.
ENV GOLANGCI_LINT_VERSION="v1.52.2"

# A current master branch build is used for pre-release Go versions, otherwise
# the latest upstream build of the tool is installed in this image.
ENV STATICCHECK_VERSION="v0.4.3"

ENV GOVULNCHECK_VERSION="v0.1.0"
ENV HTTPERRORYZER_VERSION="v0.0.1"
ENV STRUCTSLOP_VERSION="v0.0.8"
ENV TOMLL_VERSION="v2.0.8"
ENV ERRWRAP_VERSION="v1.5.0"

ENV APT_BSDMAINUTILS_VERSION="12.1.7+nmu3"
ENV APT_TREE_VERSION="1.8.0-1+b1"

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    bsdmainutils=${APT_BSDMAINUTILS_VERSION} \
    tree=${APT_TREE_VERSION} \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY --from=builder /go/bin/staticcheck /usr/bin/staticcheck
COPY --from=builder /go/bin/golangci-lint /usr/bin/golangci-lint
COPY --from=builder /go/bin/govulncheck /usr/bin/govulncheck
COPY --from=builder /go/bin/httperroryzer /usr/bin/httperroryzer
COPY --from=builder /go/bin/structslop /usr/bin/structslop
COPY --from=builder /go/bin/tickeryzer /usr/bin/tickeryzer
COPY --from=builder /go/bin/tomll /usr/bin/tomll
COPY --from=builder /go/bin/errwrap /usr/bin/errwrap

# Copy over linting config files to root of container image to serve as a
# default. Projects bringing their own config files (e.g., via GitHub Actions)
# can easily override these files, while projects choosing to use these config
# files exclusively can omit their copy.
#
# The Markdown linting config file is copied from the root of this repo
# alongside this Dockerfile via Makefile `build` recipe. This allows for
# maintaining a single copy of the file in this repo vs each Dockerfile build
# "context" having their own separate copy.
#
# The golangci-clint config file referenced below however IS a unique copy of
# the file specific to this image. Additional linters for testing (prior to
# enabling for all container image variants) are enabled in this config file.
# Changes to this file are synced to the main config file periodically once a
# linter/analyzer has proven stable enough for general use. See also GH-63.
COPY .markdownlint.yml /
COPY .golangci.yml /
