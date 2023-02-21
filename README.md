<!-- omit in toc -->
# go-ci

Tooling for linting, testing and building Go applications

[![Latest Release](https://img.shields.io/github/release/atc0005/go-ci.svg?style=flat-square)](https://github.com/atc0005/go-ci/releases/latest)
[![Project Analysis](https://github.com/atc0005/go-ci/actions/workflows/project-analysis.yml/badge.svg)](https://github.com/atc0005/go-ci/actions/workflows/project-analysis.yml)
[![Build images](https://github.com/atc0005/go-ci/actions/workflows/build-images.yml/badge.svg)](https://github.com/atc0005/go-ci/actions/workflows/build-images.yml)

<!-- omit in toc -->
## Table of contents

- [Project home](#project-home)
- [Docker images](#docker-images)
- [Overview](#overview)
- [Linting tools included](#linting-tools-included)
- [Build tools included](#build-tools-included)
  - [Matrix images](#matrix-images)
    - [`go-ci-stable`](#go-ci-stable)
    - [`go-ci-oldstable`](#go-ci-oldstable)
    - [`go-ci-unstable`](#go-ci-unstable)
  - [General build images](#general-build-images)
    - [`go-ci-stable-alpine-buildx86`](#go-ci-stable-alpine-buildx86)
    - [`go-ci-stable-alpine-buildx64`](#go-ci-stable-alpine-buildx64)
    - [`go-ci-stable-cgo-mingw-w64-build`](#go-ci-stable-cgo-mingw-w64-build)
  - [Mirror build images](#mirror-build-images)
    - [`go-ci-mirror-build-*`](#go-ci-mirror-build-)
    - [`go-ci-oldstable-mirror-build`](#go-ci-oldstable-mirror-build)
    - [`go-ci-stable-mirror-build`](#go-ci-stable-mirror-build)
  - [Release build images](#release-build-images)
    - [`go-ci-stable-build`](#go-ci-stable-build)
    - [`go-ci-oldstable-build`](#go-ci-oldstable-build)
    - [`go-ci-unstable-build`](#go-ci-unstable-build)
- [Examples / How to use these images](#examples--how-to-use-these-images)
- [Changelog](#changelog)
- [Requirements](#requirements)
- [References](#references)

## Project home

See [our GitHub repo](https://github.com/atc0005/go-ci) for the latest
content, to file an issue or submit improvements for review and potential
inclusion into the project.

## Docker images

See these container image registries for the full listing of available images:

- [GitHub repo](https://github.com/atc0005/go-ci/pkgs/container/go-ci)
- [Docker Hub repo](https://hub.docker.com/r/atc0005/go-ci)

## Overview

A mix of GitHub Actions / CI focused Docker container images primarily
intended to simplify linting/testing/building other Go projects that I
maintain. I am developing the content in the open in case it is useful to
others.

## Linting tools included

The following linting tools are included in the `go-ci-stable`,
`go-ci-oldstable` and `go-ci-unstable` images:

| Linter                                                                | Version                              |
| --------------------------------------------------------------------- | ------------------------------------ |
| [`staticcheck`](https://github.com/dominikh/go-tools)                 | `2023.1.2` (`v0.4.2`)                |
| [`golangci-lint`](https://github.com/golangci/golangci-lint)          | `v1.51.2`                            |
| [`govulncheck`](https://pkg.go.dev/golang.org/x/vuln/cmd/govulncheck) | `v0.0.0-20230213165600-1a019b0c7f30` |
| [`orijtech/httperroryzer`](https://github.com/orijtech/httperroryzer) | `v0.0.1`                             |
| [`orijtech/structslop`](https://github.com/orijtech/structslop)       | `v0.0.7`                             |
| [`pelletier/go-toml`](https://github.com/pelletier/go-toml)           | `v2.0.6`                             |
| [`fatih/errwrap`](https://github.com/fatih/errwrap)                   | `v1.5.0`                             |

## Build tools included

The following build tools are included in all `*-build*` images *except* for
the `*-mirror-*` images:

| Build tool                                                | Version   |
| --------------------------------------------------------- | --------- |
| [`tc-hib/go-winres`](https://github.com/tc-hib/go-winres) | `v0.3.1`  |
| [`goreleaser/nfpm`](https://github.com/goreleaser/nfpm)   | `v2.26.0` |

### Matrix images

#### `go-ci-stable`

- built from the latest version of the current stable `golang` image.
- used for building and testing Go applications, both directly and via
  `Makefile` builds.
- intended for use in a build/test matrix of prior, current and upcoming Go
  releases
- ✔️ provides [multiple linters](#linting-tools-included)
- ❌ does not include [custom build tools](#build-tools-included)

#### `go-ci-oldstable`

- built from the latest version of the current outgoing stable `golang` image.
- used for building and testing Go applications, both directly and via
  `Makefile` builds.
- intended for use in a build/test matrix of prior, current and upcoming Go
  releases
- ✔️ provides [multiple linters](#linting-tools-included)
- ❌ does not include [custom build tools](#build-tools-included)

#### `go-ci-unstable`

- built from the latest available non-stable `golang:beta` image, `golang:rc`
  image *or* if not recently available, the latest stable `golang` image
  - intended to test whether new Go versions break existing code or surface
    problems in existing code that current Go releases do not
- used for building and testing Go applications, both directly and via
  `Makefile` builds
- intended for use in a build/test matrix of prior, current and upcoming Go
  releases
- ✔️ provides [multiple linters](#linting-tools-included)
- ❌ does not include [custom build tools](#build-tools-included)
- used to test new or additional `golangci-lint` linters prior to inclusion in
  the `stable` and `oldstable` container image variants
  - new linters as a whole may be added to multiple image variants, not just
    this image unless it is suspected that the new linters are highly
    experimental/unstable

### General build images

#### `go-ci-stable-alpine-buildx86`

- based on the latest version of the current stable `i386/golang` `alpine`
  image.
- used for building and testing Go applications, both directly and via
  `Makefile` builds.
- uses [musl libc](https://musl.libc.org/) instead of
  [glibc](https://www.gnu.org/software/libc/)
  - see [Comparison of C/POSIX standard library implementations for
    Linux](https://www.etalabs.net/compare_libcs.html)
- supports cross-platform, static cgo-enabled builds for Windows and Linux
  - Windows 32-bit: `i686-w64-mingw32-gcc`
  - Windows 64-bit: `x86_64-w64-mingw32-gcc`
- ✔️ provides multiple [custom build tools](#build-tools-included)
- ❌ does not include [linters](#linting-tools-included)

#### `go-ci-stable-alpine-buildx64`

- same as `go-ci-stable-alpine-buildx86`, but specific to x64 architecture
- ✔️ provides multiple [custom build tools](#build-tools-included)
- ❌ does not include [linters](#linting-tools-included)

#### `go-ci-stable-cgo-mingw-w64-build`

- built from the latest version of the current stable `golang` image.
- used for building and testing Go applications, both directly and via
  `Makefile` builds.
- supports cross-platform, static cgo-enabled builds for Windows and Linux
  - Windows 32-bit: `i686-w64-mingw32-gcc`
  - Windows 64-bit: `x86_64-w64-mingw32-gcc`
- ✔️ provides multiple [custom build tools](#build-tools-included)
- ❌ does not include [linters](#linting-tools-included)

### Mirror build images

#### `go-ci-mirror-build-*`

- built from the latest version of the `golang` image for that series
  - e.g., the `go-ci-mirror-build-go1.14` image is built from the final
    release version in the 1.14 series (1.14.15)
- intended to mirror the upstream `golang` image for Makefile-driven testing,
  linting and build tasks.
- few (if any) customizations are intended for this image, instead relying on
  a project's Makefile or other build tool to setup the environment for tasks
  such as testing, linting & building source code
- ❌ does not include [linters](#linting-tools-included)
- ❌ does not include [custom build tools](#build-tools-included)

These images are intended to assist with asserting that projects build with
the latest version in a specific series.

#### `go-ci-oldstable-mirror-build`

Unlike most other images, the `go-ci-oldstable-mirror-build` name is not the
title of an image (such as `go-ci-stable`), but rather an additional tag for
the latest version of the `golang` image for the `oldstable` series.

------

- built from the latest version of the `golang` image for the `oldstable`
  series
  - e.g., if the latest `oldstable` version of the Go toolchain is 1.19.6 and
    1.20.1 is the latest in the `stable` series, the
    `go-ci-oldstable-mirror-build` image will refer to the 1.19.6 image
- intended to mirror the latest `oldstable` (outgoing) upstream `golang`
  image for Makefile-driven testing, linting and build tasks.
- few (if any) customizations are intended for this image, instead relying on
  a project's Makefile or other build tool to setup the environment for tasks
  such as testing, linting & building source code
- ❌ does not include [linters](#linting-tools-included)
- ❌ does not include [custom build tools](#build-tools-included)

These images are intended to assist with asserting that projects build with
the latest version in the outgoing stable (aka, `oldstable`) series.

#### `go-ci-stable-mirror-build`

Unlike most other images, the `go-ci-stable-mirror-build` name is not the
title of an image (such as `go-ci-stable`), but rather an additional tag for
the latest version of the `golang` image for the `stable` series.

------

- built from the latest version of the `golang` image for the current `stable`
  series
  - e.g., if the latest `oldstable` version of the Go toolchain is 1.19.6 and
    1.20.1 is the latest in the `stable` series, the
    `go-ci-stable-mirror-build` image tag will refer to the 1.20.1 image
- intended to mirror the latest `stable` (current) upstream `golang` image for
  Makefile-driven testing, linting and build tasks.
- few (if any) customizations are intended for this image, instead relying on
  a project's Makefile or other build tool to setup the environment for tasks
  such as testing, linting & building source code
- ❌ does not include [linters](#linting-tools-included)
- ❌ does not include [custom build tools](#build-tools-included)

These images are intended to assist with asserting that projects build with
the latest version in the current stable series.

### Release build images

#### `go-ci-stable-build`

- built from the latest version of the current stable `golang` image.
- used for building dev and stable releases of Go code
- ✔️ provides multiple [custom build tools](#build-tools-included)
- ❌ does not include [linters](#linting-tools-included)

#### `go-ci-oldstable-build`

- built from the latest version of the current outgoing stable `golang` image.
- used for building dev and stable releases of Go code
- ✔️ provides multiple [custom build tools](#build-tools-included)
- ❌ does not include [linters](#linting-tools-included)

#### `go-ci-unstable-build`

- built from the latest available non-stable `golang:beta` image, `golang:rc`
  image *or* if not recently available, the latest stable `golang` image
  - intended to test whether new Go versions break existing code or surface
    problems in existing code that current Go releases do not
- used for building dev and stable releases of Go code
- ✔️ provides multiple [custom build tools](#build-tools-included)
- ❌ does not include [linters](#linting-tools-included)

## Examples / How to use these images

For real-world examples of how these images are used, please see the workflows for these projects:

- <https://github.com/atc0005/shared-project-resources/tree/master/.github/workflows>
- <https://github.com/atc0005/check-cert/blob/master/.github/workflows>
- <https://github.com/atc0005/check-vmware/blob/master/.github/workflows>
- <https://github.com/atc0005/check-mail/blob/master/.github/workflows>
- <https://github.com/atc0005/dnsc/tree/master/.github/workflows>
- <https://github.com/atc0005/mysql2sqlite/tree/master/.github/workflows>

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
- At *least* 10 GB free disk space
  - if building all images
  - 15+ GB free disk space recommended

## References

- Linting
  - Primary
    - [staticcheck](https://github.com/dominikh/go-tools)
    - [golangci-lint](https://github.com/golangci/golangci-lint)
    - [govulncheck](https://pkg.go.dev/golang.org/x/vuln/cmd/govulncheck)
  - Additional
    - [orijtech/httperroryzer](https://github.com/orijtech/httperroryzer)
    - [orijtech/structslop](https://github.com/orijtech/structslop)
    - [pelletier/go-toml](https://github.com/pelletier/go-toml)
    - [fatih/errwrap](https://github.com/fatih/errwrap)

- Build Tools
  - [`tc-hib/go-winres`](https://github.com/tc-hib/go-winres)
  - [`goreleaser/nfpm`](https://github.com/goreleaser/nfpm)

- Images
  - <https://fabianlee.org/2020/01/26/golang-using-multi-stage-builds-to-create-clean-docker-images/>
  - <https://hub.docker.com/r/golangci/golangci-lint>
  - <https://hub.docker.com/_/golang>
