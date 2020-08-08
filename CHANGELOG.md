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

[Unreleased]: https://github.com/atc0005/go-ci/compare/v0.2.2...HEAD
[v0.2.2]: https://github.com/atc0005/go-ci/releases/tag/v0.2.2
[v0.2.1]: https://github.com/atc0005/go-ci/releases/tag/v0.2.1
[v0.2.0]: https://github.com/atc0005/go-ci/releases/tag/v0.2.0
[v0.1.1]: https://github.com/atc0005/go-ci/releases/tag/v0.1.1
[v0.1.0]: https://github.com/atc0005/go-ci/releases/tag/v0.1.0
