# Copyright 2020 Adam Chalkley
#
# https://github.com/atc0005/go-ci
#
# Licensed under the MIT License. See LICENSE file in the project root for
# full license information.

# https://hub.docker.com/_/golang

FROM golang:1.15.14

ENV GOLANGCI_LINT_VERSION="v1.41.1"
ENV STATICCHECK_VERSION="v0.2.0"
ENV HTTPERRORYZER_VERSION="v0.0.1"
ENV STRUCTSLOP_VERSION="v0.0.6"
ENV TOMLL_VERSION="v1.9.3"

# TODO: Re-enable once Go 1.17 is released and 1.16 is then the "oldstable" release
# ENV ERRWRAP_VERSION="v1.3.1"

ENV APT_BSDMAINUTILS_VERSION="11.1.2+b1"
ENV APT_TREE_VERSION="1.8.0-1"

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    bsdmainutils=${APT_BSDMAINUTILS_VERSION} \
    tree=${APT_TREE_VERSION} \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    \
    && GO111MODULE="on" go get honnef.co/go/tools/cmd/staticcheck@${STATICCHECK_VERSION} \
    && staticcheck --version \
    && curl -sSfLO https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh \
    && sh install.sh -b "$(go env GOPATH)/bin" ${GOLANGCI_LINT_VERSION} \
    && golangci-lint --version \
    && GO111MODULE="on" go get github.com/orijtech/httperroryzer/cmd/httperroryzer@${HTTPERRORYZER_VERSION} \
    && GO111MODULE="on" go get github.com/orijtech/structslop/cmd/structslop@${STRUCTSLOP_VERSION} \
    && GO111MODULE="on" go get github.com/pelletier/go-toml/cmd/tomll@${TOMLL_VERSION} \
    && go clean -cache -modcache

# TODO: Re-enable once Go 1.17 is released and 1.16 is then the "oldstable" release
#     && GO111MODULE="on" go get github.com/fatih/errwrap@${ERRWRAP_VERSION} \

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
COPY .golangci.yml /
