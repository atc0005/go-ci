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
FROM golangci/golangci-lint:v1.41.1-alpine as builder

ENV STATICCHECK_VERSION="v0.2.0"

# Skip go clean step as the entire image will be tossed after we are finished
# and cleaning the modules cache takes extra time that won't help the final
# linting-only image.
RUN GO111MODULE="on" go install honnef.co/go/tools/cmd/staticcheck@${STATICCHECK_VERSION} \
    && staticcheck --version

# For CI "linting only" use
FROM golangci/golangci-lint:v1.41.1-alpine

# Intended to help identify the versions of the included linting tools
ENV GOLANGCI_LINT_VERSION="v1.41.1"
ENV STATICCHECK_VERSION="v0.2.0"

COPY --from=builder /go/bin/staticcheck /usr/bin/staticcheck

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
