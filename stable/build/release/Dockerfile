# Copyright 2020 Adam Chalkley
#
# https://github.com/atc0005/go-ci
#
# Licensed under the MIT License. See LICENSE file in the project root for
# full license information.

# https://hub.docker.com/_/golang

FROM amd64/golang:1.24.5-bookworm

# https://docs.github.com/en/packages/learn-github-packages/connecting-a-repository-to-a-package
LABEL org.opencontainers.image.source="https://github.com/atc0005/go-ci"

# https://github.com/opencontainers/image-spec/blob/main/annotations.md#pre-defined-annotation-keys
LABEL org.opencontainers.image.documentation="https://github.com/atc0005/go-ci"
LABEL org.opencontainers.image.url="https://github.com/atc0005/go-ci"
LABEL org.opencontainers.image.title="go-ci-stable-build"
LABEL org.opencontainers.image.description="Docker container image used to build dev and stable \
    releases of Go code. Based on the latest version of the upstream stable golang image."
LABEL org.opencontainers.image.authors="Adam Chalkley (github.com/atc0005)"

# Explicitly disable automatic fetching of Go toolchains newer than the
# version explicitly provided by this container image.
#
# https://github.com/atc0005/go-ci/issues/1188
ENV GOTOOLCHAIN="local"

ENV APT_BSDMAINUTILS_VERSION="12.1.8"
ENV APT_TREE_VERSION="2.1.0-1"
ENV XZ_UTILS_VERSION="5.4.1-1"

# https://github.com/tc-hib/go-winres/releases
ENV GO_WINRES_VERSION="v0.3.3"

# https://github.com/goreleaser/nfpm/releases
ENV NFPM_VERSION="v2.43.0"

# https://github.com/choffmeister/git-describe-semver/releases
ENV GIT_DESCRIBE_SEMVER_VERSION="v0.4.0"

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    bsdmainutils="${APT_BSDMAINUTILS_VERSION}" \
    tree="${APT_TREE_VERSION}" \
    xz-utils="${XZ_UTILS_VERSION}" \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    \
    && echo "Installing go-winres@${GO_WINRES_VERSION}" \
    && go install github.com/tc-hib/go-winres@${GO_WINRES_VERSION} \
    && go version -m $(which go-winres) | awk '$1 == "mod" { print $3 }' \
    && echo "Installing nfpm@${NFPM_VERSION}" \
    && go install github.com/goreleaser/nfpm/v2/cmd/nfpm@${NFPM_VERSION} \
    && nfpm --version \
    && go install github.com/choffmeister/git-describe-semver@${GIT_DESCRIBE_SEMVER_VERSION} \
    && go version -m $(which git-describe-semver) | awk '$1 == "mod" { print $3 }' \
    && go clean -cache -modcache
