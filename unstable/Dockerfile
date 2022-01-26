# Copyright 2020 Adam Chalkley
#
# https://github.com/atc0005/go-ci
#
# Licensed under the MIT License. See LICENSE file in the project root for
# full license information.

# https://hub.docker.com/_/golang

FROM golang:1.18beta1 as builder

ENV GOLANGCI_LINT_VERSION="v1.44.0"
ENV STATICCHECK_VERSION="v0.2.2"
ENV HTTPERRORYZER_VERSION="v0.0.1"
ENV STRUCTSLOP_VERSION="v0.0.6"
ENV TOMLL_VERSION="v1.9.4"
ENV ERRWRAP_VERSION="v1.3.1"

RUN go install honnef.co/go/tools/cmd/staticcheck@${STATICCHECK_VERSION} \
    && staticcheck --version \
    && go install github.com/golangci/golangci-lint/cmd/golangci-lint@${GOLANGCI_LINT_VERSION} \
    && golangci-lint --version \
    && go install github.com/orijtech/httperroryzer/cmd/httperroryzer@${HTTPERRORYZER_VERSION} \
    && go install github.com/orijtech/structslop/cmd/structslop@${STRUCTSLOP_VERSION} \
    && go install github.com/pelletier/go-toml/cmd/tomll@${TOMLL_VERSION} \
    && go install github.com/fatih/errwrap@${ERRWRAP_VERSION}


FROM golang:1.18beta1 as final

ENV GOLANGCI_LINT_VERSION="v1.44.0"
ENV STATICCHECK_VERSION="v0.2.2"
ENV HTTPERRORYZER_VERSION="v0.0.1"
ENV STRUCTSLOP_VERSION="v0.0.6"
ENV TOMLL_VERSION="v1.9.4"
ENV ERRWRAP_VERSION="v1.3.1"

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
COPY --from=builder /go/bin/httperroryzer /usr/bin/httperroryzer
COPY --from=builder /go/bin/structslop /usr/bin/structslop
COPY --from=builder /go/bin/tomll /usr/bin/tomll
COPY --from=builder /go/bin/errwrap /usr/bin/errwrap

# Copy over linting config files to root of container to serve as a default.
# Projects bringing their own config files (e.g., via GitHub Actions) can
# easily override these files, while projects choosing to use these config
# files exclusively can omit their copy.
#
# These files are copied from the root of this repo alongside this Dockerfile
# via Makefile `build` recipe. This allows for maintaining a single copy of
# either file in this repo vs each Dockerfile build "context" having their own
# separate copy.
COPY .markdownlint.yml /

# This Dockerfile already has its own copy of the golangci-lint config file.
# This local copy is manually synced from the main config file in order to
# enable new checks for all containers, while enabling additional linters for
# testing prior to enabling for all container variants. See also GH-63.
#
COPY .golangci.yml /
