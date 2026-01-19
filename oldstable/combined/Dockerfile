# Copyright 2020 Adam Chalkley
#
# https://github.com/atc0005/go-ci
#
# Licensed under the MIT License. See LICENSE file in the project root for
# full license information.

# https://hub.docker.com/_/golang

# Unlike the build-specific images (e.g., those which include nfpm), this
# image does not use the very latest upstream Go version (e.g., Go 1.25 when
# Go 1.24 is the "oldstable" series). This is because we build these tools
# using the same version of Go that will be used to lint and build Go
# applications which rely on this image.
FROM amd64/golang:1.24.12-bookworm AS builder

# Explicitly disable automatic fetching of Go toolchains newer than the
# version explicitly provided by this container image.
#
# https://github.com/atc0005/go-ci/issues/1188
ENV GOTOOLCHAIN="local"

ENV GOLANGCI_LINT_VERSION="v2.8.0"
ENV STATICCHECK_VERSION="v0.6.1"
ENV DEADCODE_VERSION="v0.41.0"
ENV GOVULNCHECK_VERSION="v1.1.4"
ENV TOMLL_VERSION="v2.2.4"
ENV GOTESTDOX_VERSION="v0.2.2"

RUN echo "Installing staticcheck@${STATICCHECK_VERSION}" \
    && go install honnef.co/go/tools/cmd/staticcheck@${STATICCHECK_VERSION} \
    && staticcheck --version

RUN echo "Installing govulncheck@${GOVULNCHECK_VERSION}" \
    && go install golang.org/x/vuln/cmd/govulncheck@${GOVULNCHECK_VERSION} \
    && govulncheck --version

RUN echo "Installing deadcode@${DEADCODE_VERSION}" \
    && go install golang.org/x/tools/cmd/deadcode@${DEADCODE_VERSION} \
    && go version -m $(which deadcode)

RUN echo "Installing tomll@${TOMLL_VERSION}" \
    && go install github.com/pelletier/go-toml/v2/cmd/tomll@${TOMLL_VERSION} \
    && go version -m $(which tomll)

RUN echo "Installing gotestdox@${GOTESTDOX_VERSION}" \
    && go install github.com/bitfield/gotestdox/cmd/gotestdox@${GOTESTDOX_VERSION} \
    && go version -m $(which gotestdox)

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


FROM amd64/golang:1.24.12-bookworm AS final

# https://docs.github.com/en/packages/learn-github-packages/connecting-a-repository-to-a-package
LABEL org.opencontainers.image.source="https://github.com/atc0005/go-ci"

# https://github.com/opencontainers/image-spec/blob/main/annotations.md#pre-defined-annotation-keys
LABEL org.opencontainers.image.documentation="https://github.com/atc0005/go-ci"
LABEL org.opencontainers.image.url="https://github.com/atc0005/go-ci"
LABEL org.opencontainers.image.title="go-ci-oldstable"
LABEL org.opencontainers.image.description="Docker container image used to lint, build and test Go code. \
    Based on the latest version of the current outgoing stable golang image."
LABEL org.opencontainers.image.authors="Adam Chalkley (github.com/atc0005)"

# Explicitly disable automatic fetching of Go toolchains newer than the
# version explicitly provided by this container image.
#
# https://github.com/atc0005/go-ci/issues/1188
ENV GOTOOLCHAIN="local"

ENV GOLANGCI_LINT_VERSION="v2.8.0"
ENV STATICCHECK_VERSION="v0.6.1"
ENV DEADCODE_VERSION="v0.41.0"
ENV GOVULNCHECK_VERSION="v1.1.4"
ENV TOMLL_VERSION="v2.2.4"
ENV GOTESTDOX_VERSION="v0.2.2"
ENV APT_BSDMAINUTILS_VERSION="12.1.8"
ENV APT_TREE_VERSION="2.1.0-1"
ENV APT_FILE_VERSION="1:5.44-3"

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    bsdmainutils=${APT_BSDMAINUTILS_VERSION} \
    tree=${APT_TREE_VERSION} \
    file=${APT_FILE_VERSION} \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY --from=builder /go/bin/staticcheck /usr/bin/staticcheck
COPY --from=builder /go/bin/golangci-lint /usr/bin/golangci-lint
COPY --from=builder /go/bin/govulncheck /usr/bin/govulncheck
COPY --from=builder /go/bin/deadcode /usr/bin/deadcode
COPY --from=builder /go/bin/gotestdox /usr/bin/gotestdox
COPY --from=builder /go/bin/tomll /usr/bin/tomll

# Copy over linting config files to root of container image to serve as a
# default. Projects bringing their own config files (e.g., via GitHub Actions)
# can easily override these files, while projects choosing to use these config
# files exclusively can omit their copy.
COPY .markdownlint.yml /
COPY .golangci.yml /
