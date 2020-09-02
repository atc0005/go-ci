<!-- omit in toc -->
# go-ci

Tooling for linting, testing and building Go applications

[![Latest Release](https://img.shields.io/github/release/atc0005/go-ci.svg?style=flat-square)](https://github.com/atc0005/go-ci/releases/latest)
![Linting](https://github.com/atc0005/go-ci/workflows/Linting/badge.svg)
![Validate Docs](https://github.com/atc0005/go-ci/workflows/Validate%20Docs/badge.svg)

<!-- omit in toc -->
## Table of contents

- [Project home](#project-home)
- [Overview](#overview)
- [Linting tools included](#linting-tools-included)
- [Docker images](#docker-images)
  - [`go-ci-stable`](#go-ci-stable)
  - [`go-ci-oldstable`](#go-ci-oldstable)
  - [`go-ci-unstable`](#go-ci-unstable)
  - [`go-ci-lint-only`](#go-ci-lint-only)
- [Examples / How to use these images](#examples--how-to-use-these-images)
- [Changelog](#changelog)
- [Requirements](#requirements)
- [References](#references)

## Project home

See [our GitHub repo](https://github.com/atc0005/go-ci) for the latest
content, to file an issue or submit improvements for review and potential
inclusion into the project.

See [our Docker Hub
repo](https://hub.docker.com/repository/docker/atc0005/go-ci) for the full
listing of available container images.

## Overview

A mix of GitHub Actions / CI focused Docker containers primarily intended to
simplify linting/testing/building other Go projects that I maintain. I am
developing the content in the open in case what I learn here in this project
is useful to others.

## Linting tools included

- [`staticcheck`](https://github.com/dominikh/go-tools)
- [`golangci-lint`](https://github.com/golangci/golangci-lint)

## Docker images

See [our Docker Hub
repo](https://hub.docker.com/repository/docker/atc0005/go-ci) for the full
listing of available container images.

### `go-ci-stable`

- built from the latest version of the current stable `golang` image.
- used for building Go applications, both directly and via `Makefile` builds.

### `go-ci-oldstable`

- built from the latest version of the current outgoing stable `golang` image.
- used for building Go applications, both directly and via `Makefile` builds.

### `go-ci-unstable`

- built from the latest available non-stable `golang:rc` image *or* if not
  recently available, the latest stable `golang` image
- used for building Go applications, both directly and via `Makefile` builds.
- used to test new linters prior to inclusion in the `stable` and `oldstable`
  container variants

### `go-ci-lint-only`

- smaller image
- uses `golangci/golangci-lint:vX.Y.Z-alpine` image as base
- created as part of a multi-stage container build

## Examples / How to use these images

For a real-world example of how these images are used, please see the
[`atc0005/dnsc`](https://github.com/atc0005/dnsc) project. Specifically,
examine the files
[here](https://github.com/atc0005/dnsc/tree/master/.github/workflows):

<https://github.com/atc0005/dnsc/tree/master/.github/workflows>

## Changelog

See the [`CHANGELOG.md`](CHANGELOG.md) file for the changes associated with
each release of this application. Changes that have been merged to `master`,
but not yet an official release may also be noted in the file under the
`Unreleased` section. A helpful link to the Git commit history since the last
official release is also provided for further review.

## Requirements

- Docker
  - for building images
- `make`
  - if using the provided `Makefile`

## References

- Linting
  - <https://github.com/dominikh/go-tools>
  - <https://github.com/golangci/golangci-lint>

- Images
  - <https://fabianlee.org/2020/01/26/golang-using-multi-stage-builds-to-create-clean-docker-images/>
  - <https://hub.docker.com/r/golangci/golangci-lint>
  - <https://hub.docker.com/_/golang>
