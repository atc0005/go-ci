# Changelog

## Overview

All notable changes to this project will be documented in this file.

The format is based on [Keep a
Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to
[Semantic Versioning](https://semver.org/spec/v2.0.0.html).

Please [open an issue](https://github.com/atc0005/go-ci/issues) for any
deviations that you spot; I'm still learning!.

## Types of changes

The following types of changes will be recorded in this file:

- `Added` for new features.
- `Changed` for changes in existing functionality.
- `Deprecated` for soon-to-be removed features.
- `Removed` for now removed features.
- `Fixed` for any bug fixes.
- `Security` in case of vulnerabilities.

## [Unreleased]

- placeholder

## [v0.3.15] - 2021-03-04

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.37.1` to `v1.38.0`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image

## [v0.3.14] - 2021-02-25

### Changed

- Go versions
  - Update `go-ci-stable-alpine-buildx86` from`1.15.8-alpine3.12` to
    `1.16.0-alpine3.12` (GH-248)

- Dependencies
  - `actions/setup-node`
    - `v2.1.4` to `v2.1.5`

### Fixed

- Update CHANGELOG entry for v0.3.12 to reflect that the
  `go-ci-stable-alpine-buildx86` image was *not* updated as intended

## [v0.3.13] - 2021-02-21

### Changed

- Dependencies
  - `honnef.co/go/tools`
    - `v0.1.1` to `v0.1.2`
  - `golangci/golangci-lint`
    - `v1.37.0` to `v1.37.1`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image

## [v0.3.12] - 2021-02-17

### Changed

- Go versions
  - Update `go-ci-stable` from `1.15.8` to `1.16.0`
  - Update `go-ci-oldstable` from `1.14.15` to `1.15.8`
  - Update `go-ci-stable-debian-build` from `1.15.8` to `1.16.0`
  - Update `go-ci-stable-alpine-buildx64` from `1.15.8-alpine3.12` to
    `1.16.0-alpine3.12`
- Dependencies
  - `golangci/golangci-lint`
    - `v1.36.0` to `v1.37.0`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image

**NOTE**: `go-ci-stable-alpine-buildx86` was not updated as intended.

## [v0.3.11] - 2021-02-05

### Changed

- Go versions
  - Update `go-ci-stable` from `1.15.7` to `1.15.8`
  - Update `go-ci-oldstable` from `1.14.14` to `1.14.15`
  - Update `go-ci-stable-debian-build` from `1.15.7` to `1.15.8`
  - Update `go-ci-stable-alpine-buildx86` from`1.15.7-alpine3.12` to
    `1.15.8-alpine3.12`
  - Update `go-ci-stable-alpine-buildx64` from `1.15.7-alpine3.12` to
    `1.15.8-alpine3.12`

NOTE: The `go-ci-lint-only` image is *not* updated in this release. We're
waiting on a new upstream release.

### Fixed

- update version listed in `v0.3.7` release

## [v0.3.10] - 2021-01-29

### Changed

- Go versions
  - Update `go-ci-unstable` from `1.16beta1` to `1.16rc1`

### Fixed

- CHANGELOG entry for `v0.3.7` which incorrectly inferred a change from
  `1.16beta1` to then current `1.15.7` Go version

## [v0.3.9] - 2021-01-27

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.35.2` to `v1.36.0`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image

## [v0.3.8] - 2021-01-21

### Changed

- Dependencies
  - `honnef.co/go/tools`
    - `v0.1.0` to `v0.1.1`

### Fixed

- Update Docker container build process to explicitly pull latest upstream
  when building new images

## [v0.3.7] - 2021-01-20

### Changed

- Move grouped Dockerfiles into separate subdirectories
  - workaround a bug in Dependabot which replaces separate Docker images with
    the same image (dependabot/dependabot-core#2179)

- Go versions
  - Update `go-ci-stable` from `1.15.6` to `1.15.7`
  - Update `go-ci-oldstable` from `1.14.13` to `1.14.14`
  - Update `go-ci-stable-debian-build` from `1.15.6` to `1.15.7`
  - Update `go-ci-stable-alpine-buildx86` from`1.15.6-alpine3.12` to
    `1.15.7-alpine3.12`
  - Update `go-ci-stable-alpine-buildx64` from `1.15.6-alpine3.12` to
    `1.15.7-alpine3.12`

NOTE: The `go-ci-lint-only` image is *not* updated in this release. We're
waiting on a new upstream release.

### Fixed

- Year in previous CHANGELOG version entries incorrect
- golangci-lint version in linters table outdated

## [v0.3.6] - 2021-01-11

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.35.0` to `v1.35.2`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image

## [v0.3.5] - 2021-01-08

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.34.1` to `v1.35.0`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image

## [v0.3.4] - 2020-12-29

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.33.0` to `v1.34.1`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image

### Fixed

- Update CHANGELOG versions list to include last release

## [v0.3.3] - 2020-12-19

### Changed

- Go versions
  - Update `go-ci-unstable` from `1.15.6` to `1.16beta1`

- Dependencies
  - `orijtech/structslop`
    - `v0.0.5` to `v0.0.6`
  - `actions/setup-node`
    - `v2.1.3` to `v2.1.4`

## [v0.3.2] - 2020-12-15

### Changed

- README
  - Update `staticcheck` linters table entry to reflect `2020.02` (`v0.1.0`)

- Dependencies
  - `go.mod`
    - Update Go version from `1.13` to `1.14`
  - `honnef.co/go/tools`
    - `v0.0.1-2020.1.6` to `v0.1.0`

## [v0.3.1] - 2020-12-04

### Changed

- README
  - Replace linters list with version table to act as a quick reference

- Go versions
  - Update `go-ci-stable` from `1.15.5` to `1.15.6`
  - Update `go-ci-oldstable` from `1.14.12` to `1.14.13`
  - Update `go-ci-unstable` from `1.15.5` to `1.15.6`
    - the plan is to swap out to the next unstable Go version when it becomes
      available
  - Update `go-ci-stable-debian-build` from `1.15.5` to `1.15.6`
  - Update `go-ci-stable-alpine-buildx86` from`1.15.5-alpine3.12` to
    `1.15.6-alpine3.12`
  - Update `go-ci-stable-alpine-buildx64` from `1.15.5-alpine3.12` to
    `1.15.6-alpine3.12`

NOTE: The `go-ci-lint-only` image is *not* updated in this release. We're
waiting on a new upstream release.

### Fixed

- Replace `orijtech/httperroryzer` pseudo-version with equivalent tag

- Dependabot: Invalid ignore condition (version range) specified for
  "oldstable" image

## [v0.3.0] - 2020-11-29

### Added

- New linters
  - `pelletier/go-toml/cmd/tomll` @`v1.8.1`
  - `orijtech/structslop` @`v0.0.5`
  - `orijtech/httperroryzer` @`9d75de8cdf66f34670c84aeef3c2b698b001fd44`
  - `fatih/errwrap` @`v1.2.0`

### Fixed

- README
  - update container image descriptions to better emphasize purpose
- gitignore
  - exclude Visual Studio Code workspace settings (`.vscode`)
  - exclude `scratch` directory

## [v0.2.16] - 2020-11-23

### Changed

- Update musl-dev pkg from 1.1.24-r9 to 1.1.24-r10

### Fixed

- Alpine build containers image build failure for v0.2.15 release

## [v0.2.15] - 2020-11-23

### Changed

- Update golangci/golangci-lint from `v1.32.2` to `v1.33.0`
  - binary installed within `oldstable`, `stable` and `unstable` images
  - Docker image used as a builder/base for `lint-only` image

## [v0.2.14] - 2020-11-13

### Changed

- Go versions
  - Update `go-ci-stable` from `1.15.4` to `1.15.5`
  - Update `go-ci-oldstable` from `1.14.11` to `1.14.12`
  - Update `go-ci-unstable` from `1.15.4` to `1.15.5`
    - the plan is to swap out to the next unstable Go version when it becomes
      available
  - Update `go-ci-stable-debian-build` from `1.15.4` to `1.15.5`
  - Update `go-ci-stable-alpine-buildx86` from`1.15.4-alpine3.12` to
    `1.15.5-alpine3.12`
  - Update `go-ci-stable-alpine-buildx64` from `1.15.4-alpine3.12` to
    `1.15.5-alpine3.12`

NOTE: The `go-ci-lint-only` image is *not* updated in this release. We're
waiting on a new upstream release.

## [v0.2.13] - 2020-11-08

### Changed

- Go versions
  - Update `go-ci-stable` from `1.15.3` to `1.15.4`
  - Update `go-ci-oldstable` from `1.14.10` to `1.14.11`
  - Update `go-ci-unstable` from `1.15.3` to `1.15.4`
    - the plan is to swap out to the next unstable Go version when it becomes
      available
  - Update `go-ci-stable-debian-build` from `1.15.3` to `1.15.4`
  - Update `go-ci-stable-alpine-buildx86` from`1.15.3-alpine3.12` to
    `1.15.4-alpine3.12`
  - Update `go-ci-stable-alpine-buildx64` from `1.15.3-alpine3.12` to
    `1.15.4-alpine3.12`

- Dependencies
  - `actions/checkout`
    - `v2.3.3` to `v2.3.4`

NOTE: The `go-ci-lint-only` image is *not* updated in this release. We're
waiting on a new upstream release.

## [v0.2.12] - 2020-11-03

### Changed

- Update golangci/golangci-lint from `v1.32.0` to `v1.32.2`
  - binary installed within `oldstable`, `stable` and `unstable` images
  - Docker image used as a builder/base for `lint-only` image

## [v0.2.11] - 2020-10-25

### Changed

- Update golangci/golangci-lint from `v1.31.0` to `v1.32.0`
  - binary installed within `oldstable`, `stable` and `unstable` images
  - Docker image used as a builder/base for `lint-only` image

## [v0.2.10] - 2020-10-17

### Changed

- Go versions
  - Update `go-ci-stable` from `1.15.2` to `1.15.3`
  - Update `go-ci-oldstable` from `1.14.9` to `1.14.10`
  - Update `go-ci-unstable` from `1.15.2` to `1.15.3`
    - the plan is to swap out to the next unstable Go version when it becomes
      available
  - Update `go-ci-stable-debian-build` from `1.15.2` to `1.15.3`
  - Update `go-ci-stable-alpine-buildx86` from`1.15.2-alpine3.12` to
    `1.15.3-alpine3.12`
  - Update `go-ci-stable-alpine-buildx64` from `1.15.2-alpine3.12` to
    `1.15.3-alpine3.12`

NOTE: The `go-ci-lint-only` image is *not* updated in this release. We're
waiting on a new upstream release.

### Fixed

- Dependabot: Invalid ignore condition (version range) specified for
  "oldstable" image

## [v0.2.9] - 2020-10-14

### Added

- Cross-platform Debian build image
  - used to generate cgo binaries for multiple architectures/platforms

### Fixed

- Dockerfiles using deprecated `ENV` syntax

## [v0.2.8] - 2020-10-12

### Changed

- Dependencies
  - `honnef.co/go/tools/cmd/staticcheck`
    - `2020.1.5` to `2020.1.6`

## [v0.2.7] - 2020-10-08

### Added

- new Alpine build images to support cgo builds
  - based on the latest version of the current stable `i386/golang` and
    `golang` `alpine` images.
  - used for building Go applications, both directly and via `Makefile`
    builds.
  - uses [musl libc](https://musl.libc.org/) instead of
    [glibc](https://www.gnu.org/software/libc/)
  - supports cross-platform, static cgo-enabled builds for Windows and Linux
  - new tags
    - `go-ci-stable-alpine-buildx86`
    - `go-ci-stable-alpine-buildx64`

### Changed

- Dependencies
  - `actions/checkout`
    - `v2.3.2` to `v2.3.3`
  - `actions/setup-node`
    - `v2.1.1` to `v2.1.2`

- Light README updates to describe new image
- Makefile changes to build/tag the new images

## [v0.2.6] - 2020-09-11

### Changed

- Go versions
  - Update `stable` container from `1.15.1` to `1.15.2`
  - Update `oldstable` container from `1.14.8` to `1.14.9`
  - Update `unstable` container from `1.15.1` to `1.15.2`
    - the plan is to swap out to the next unstable Go version when it becomes
      available

## [v0.2.5] - 2020-09-08

### Changed

- Update golangci/golangci-lint from `v1.30.0` to `v1.31.0`
  - binary installed within `oldstable`, `stable` and `unstable` images
  - Docker image used as a builder/base for `lint-only` image

## [v0.2.4] - 2020-09-02

### Added

- `golangci-lint` linters
  - `unstable` container
    - `errcheck`
    - `gocognit`
    - `gocyclo`
    - `goerr113`

### Changed

- Go versions
  - Update `stable` container from `1.15.0` to `1.15.1`
  - Update `oldstable` container from `1.14.7` to `1.14.8`
  - Update `unstable` container from `1.15rc2` to `1.15.1`
    - the plan is to swap out to the next unstable Go version when it becomes
      available

- `unstable` container
  - use latest stable Go version (see note above)
  - update linters (see above)
  - local copy of `golangci-lint` config file specific to this image variant

## [v0.2.3] - 2020-08-12

### Changed

- Go versions
  - Update `stable` container from `1.14.7` to `1.15.0`
  - Update `oldstable` container from `1.13.15` to `1.14.7`
  - NOTE: the `unstable` container is still at `1.15rc2` for now

- Dependencies
  - upgrade `actions/checkout`
    - `v2.3.1` to `v2.3.2`

## [v0.2.2] - 2020-08-08

### Changed

- Go versions
  - Update "stable" container from 1.14.6 to 1.14.7
  - Update "oldstable" container from 1.13.14 to 1.13.15
  - Update "unstable" container from 1.15rc1 to 1.15rc2

## [v0.2.1] - 2020-08-03

### Changed

- Update golangci/golangci-lint from `v1.29.0` to `v1.30.0`
  - binary installed within `oldstable`, `stable` and `unstable` images
  - Docker image used as a builder/base for `lint-only` image

## [v0.2.0] - 2020-08-02

### Added

- Bundle `golangci-lint` and `markdownlint` config files
  - provide a usable default baseline for our projects, hopefully for others
    also

### Fixed

- Fix Makefile recipe description

## [v0.1.1] - 2020-07-31

### Changed

- `lint-only` image
  - swap base image from `golang` and `alpine` to `golangci/golangci-lint`
    - the intent is to provide a working environment for `golangci-lint`

### Fixed

- `lint-only` image
  - `golangci-lint` requires working go environment

## [v0.1.0] - 2020-07-31

### Added

- Add Docker containers for linting, testing, building in place of
  `actions/setup-go` provided environment currently used by most of my Go
  projects
  - "old stable"
    - Go 1.13.x series (currently)
  - "stable"
    - Go 1.14.x series (currently)
  - "linting-only"
    - bundles `staticcheck`, `golangci-lint` linting tools into a thin image
  - "unstable"
    - Go 1.15rc1 (currently)

- Include common linting tools used by my Go projects
  - `staticcheck`, `golangci-lint`

- Add GitHub Actions workflows
  - lint Markdown documentation
  - lint Dockerfile files

- Add Dependabot updates
  - GitHub Actions
  - Go modules
    - using a "trick" to have a `tools` module that depends on the linting
      tools that we include in our container images
  - Dockerfile base images

[Unreleased]: https://github.com/atc0005/go-ci/compare/v0.3.15...HEAD
[v0.3.15]: https://github.com/atc0005/go-ci/releases/tag/v0.3.15
[v0.3.14]: https://github.com/atc0005/go-ci/releases/tag/v0.3.14
[v0.3.13]: https://github.com/atc0005/go-ci/releases/tag/v0.3.13
[v0.3.12]: https://github.com/atc0005/go-ci/releases/tag/v0.3.12
[v0.3.11]: https://github.com/atc0005/go-ci/releases/tag/v0.3.11
[v0.3.10]: https://github.com/atc0005/go-ci/releases/tag/v0.3.10
[v0.3.9]: https://github.com/atc0005/go-ci/releases/tag/v0.3.9
[v0.3.8]: https://github.com/atc0005/go-ci/releases/tag/v0.3.8
[v0.3.7]: https://github.com/atc0005/go-ci/releases/tag/v0.3.7
[v0.3.6]: https://github.com/atc0005/go-ci/releases/tag/v0.3.6
[v0.3.5]: https://github.com/atc0005/go-ci/releases/tag/v0.3.5
[v0.3.4]: https://github.com/atc0005/go-ci/releases/tag/v0.3.4
[v0.3.3]: https://github.com/atc0005/go-ci/releases/tag/v0.3.3
[v0.3.2]: https://github.com/atc0005/go-ci/releases/tag/v0.3.2
[v0.3.1]: https://github.com/atc0005/go-ci/releases/tag/v0.3.1
[v0.3.0]: https://github.com/atc0005/go-ci/releases/tag/v0.3.0
[v0.2.16]: https://github.com/atc0005/go-ci/releases/tag/v0.2.16
[v0.2.15]: https://github.com/atc0005/go-ci/releases/tag/v0.2.15
[v0.2.14]: https://github.com/atc0005/go-ci/releases/tag/v0.2.14
[v0.2.13]: https://github.com/atc0005/go-ci/releases/tag/v0.2.13
[v0.2.12]: https://github.com/atc0005/go-ci/releases/tag/v0.2.12
[v0.2.11]: https://github.com/atc0005/go-ci/releases/tag/v0.2.11
[v0.2.10]: https://github.com/atc0005/go-ci/releases/tag/v0.2.10
[v0.2.9]: https://github.com/atc0005/go-ci/releases/tag/v0.2.9
[v0.2.8]: https://github.com/atc0005/go-ci/releases/tag/v0.2.8
[v0.2.7]: https://github.com/atc0005/go-ci/releases/tag/v0.2.7
[v0.2.6]: https://github.com/atc0005/go-ci/releases/tag/v0.2.6
[v0.2.5]: https://github.com/atc0005/go-ci/releases/tag/v0.2.5
[v0.2.4]: https://github.com/atc0005/go-ci/releases/tag/v0.2.4
[v0.2.3]: https://github.com/atc0005/go-ci/releases/tag/v0.2.3
[v0.2.2]: https://github.com/atc0005/go-ci/releases/tag/v0.2.2
[v0.2.1]: https://github.com/atc0005/go-ci/releases/tag/v0.2.1
[v0.2.0]: https://github.com/atc0005/go-ci/releases/tag/v0.2.0
[v0.1.1]: https://github.com/atc0005/go-ci/releases/tag/v0.1.1
[v0.1.0]: https://github.com/atc0005/go-ci/releases/tag/v0.1.0
