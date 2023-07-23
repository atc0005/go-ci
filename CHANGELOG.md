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

## [v0.13.0] - 2023-07-23

### Added

- (GH-756) CI: Setup automatic build & publish workflow for tagged releases

### Changed

- (GH-1103) Switch registry token access from file to env var

### Fixed

- (GH-1102) Fix syntax for v0.12.0 changes
- (GH-1104) Fix GHCR username variable reference

## [v0.12.0] - 2023-07-23

### Added

- (GH-1097) Add initial automated release notes config
- (GH-1098) Add `unstable` Alpine build image variants

## [v0.11.5] - 2023-07-18

### Changed

- Go versions
  - unstable images
    - Update `go-ci-unstable` from `1.21rc2` to `1.21rc3`
    - Update `go-ci-unstable-build` from `1.21rc2` to `1.21rc3`

## [v0.11.4] - 2023-07-14

### Changed

- Dependencies
  - `goreleaser/nfpm`
    - `v2.31.0` to `v2.32.0`
  - `golang.org/x/vuln` (`govulncheck`)
    - `v0.2.0` to `v1.0.0`
  - `pelletier/go-toml`
    - `v2.0.8` to `v2.0.9`

## [v0.11.3] - 2023-07-12

### Changed

- Go versions
  - oldstable images
    - Update `go-ci-oldstable-alpine-buildx86` from `1.19.10-alpine3.18` to
      `1.19.11-alpine3.18`
    - Update `go-ci-oldstable-alpine-buildx64` from `1.19.10-alpine3.18` to
      `1.19.11-alpine3.18`

### Fixed

- (GH-1081) Fix Go series used for Alpine oldstable images
- (GH-1084) Fix CHANGELOG entry for v0.11.2 release

## [v0.11.2] - 2023-07-12

### Changed

- Go versions
  - mirror build images
    - Update `go-ci-mirror-build-go1.19` from `1.19.10` to `1.19.11`
    - Update `go-ci-mirror-build-go1.20` from `1.20.5` to `1.20.6`
  - oldstable images
    - Update `go-ci-oldstable` from `1.19.10` to `1.19.11`
    - Update `go-ci-oldstable-build` from `1.19.10` to `1.19.11`
  - stable images
    - Update `go-ci-stable` from `1.20.5` to `1.20.6`
    - Update `go-ci-stable-build` from `1.20.5` to `1.20.6`
    - Update `go-ci-stable-cgo-mingw-w64-build` from `1.20.5` to `1.20.6`
    - Update `go-ci-stable-alpine-buildx86` from `1.20.5-alpine3.18` to
      `1.20.6-alpine3.18`
    - Update `go-ci-stable-alpine-buildx64` from `1.20.5-alpine3.18` to
      `1.20.6-alpine3.18`
  - unstable images
    - no change since the v0.11.1 release (`1.21rc2`)

- Dependencies
  - `goreleaser/nfpm`
    - `v2.28.0` to `v2.30.1`
  - `golang.org/x/vuln` (`govulncheck`)
    - `v0.1.0` to `v0.2.0`

### Fixed

- (GH-1078) Fix CHANGELOG entries for v0.10.6 and v0.11.0

## [v0.11.1] - 2023-06-26

### Changed

- Go versions
  - unstable images
    - Update `go-ci-unstable` from `1.20.5` to `1.21rc2`
    - Update `go-ci-unstable-build` from `1.20.5` to `1.21rc2`
- (GH-1057) Update Dockerfiles to reflect a chosen base image OS

### Fixed

- (GH-1060) ERROR: unable to select packages: `file-5.44-r4`: breaks:
  `world[file=5.44-r3]`

## [v0.11.0] - 2023-06-15

### Added

  (GH-1044) Add `oldstable` Alpine build image variants

### Changed

- Go versions
  - stable images
    - Update `go-ci-stable-alpine-buildx86` from `1.20.4-alpine3.16` to
      `1.20.5-alpine3.18`
    - Update `go-ci-stable-alpine-buildx64` from `1.20.4-alpine3.16` to
      `1.20.5-alpine3.18`
  - oldstable images
    - Add `go-ci-oldstable-alpine-buildx86` at `1.20.5-alpine3.18`
    - Add `go-ci-oldstable-alpine-buildx64` at `1.20.5-alpine3.18`

- Dependencies
  - `golangci/golangci-lint`
    - `v1.53.2` to `v1.53.3`
- (GH-1045) Update GitHub Actions workflows to allow image build CI jobs to be
  executed on-demand

### Fixed

- (GH-1041) Fix `build` recipe help text
- (GH-1043) Stable build images for Alpine x64 and x86 have outdated Go version
- (GH-1047) Debian-based images fail to build using current pinned dependency
  versions

## [v0.10.6] - 2023-06-07

### Changed

- Go versions
  - mirror build images
    - Update `go-ci-mirror-build-go1.19` from `1.19.9` to `1.19.10`
    - Update `go-ci-mirror-build-go1.20` from `1.20.4` to `1.20.5`
  - oldstable images
    - Update `go-ci-oldstable` from `1.19.9` to `1.19.10`
    - Update `go-ci-oldstable-build` from `1.19.9` to `1.19.10`
  - stable images
    - Update `go-ci-stable` from `1.20.4` to `1.20.5`
    - Update `go-ci-stable-build` from `1.20.4` to `1.20.5`
    - Update `go-ci-stable-cgo-mingw-w64-build` from `1.20.4` to `1.20.5`
  - unstable images
    - Update `go-ci-unstable` from `1.20.4` to `1.20.5`
    - Update `go-ci-unstable-build` from `1.20.4` to `1.20.5`

- Dependencies
  - `golangci/golangci-lint`
    - `v1.52.2` to `v1.53.2`
  - `goreleaser/nfpm`
    - `v2.28.0` to `v2.30.1`
  - `choffmeister/git-describe-semver`
    - `v0.3.9` to `v0.3.11`
  - `pelletier/go-toml`
    - `v2.0.7` to `v2.0.8`

### Fixed

- (GH-1018) ERROR: unable to select packages: `musl-dev-1.2.3-r3`: breaks:
  `world[musl-dev=1.2.3-r2]`
- (GH-1024) New version of depguard linter included in golangci-lint v1.53.0
  and newer fails when run without explicit configuration

## [v0.10.5] - 2023-05-05

### Changed

- Go versions
  - mirror build images
    - Update `go-ci-mirror-build-go1.19` from `1.19.8` to `1.19.9`
    - Update `go-ci-mirror-build-go1.20` from `1.20.3` to `1.20.4`
  - oldstable images
    - Update `go-ci-oldstable` from `1.19.8` to `1.19.9`
    - Update `go-ci-oldstable-build` from `1.19.8` to `1.19.9`
  - stable images
    - Update `go-ci-stable` from `1.20.3` to `1.20.4`
    - Update `go-ci-stable-build` from `1.20.3` to `1.20.4`
    - Update `go-ci-stable-cgo-mingw-w64-build` from `1.20.3` to `1.20.4`
    - Update `go-ci-stable-alpine-buildx86` from `1.20.3-alpine3.16` to
      `1.20.4-alpine3.16`
    - Update `go-ci-stable-alpine-buildx64` from `1.20.3-alpine3.16` to
      `1.20.4-alpine3.16`
  - unstable images
    - Update `go-ci-unstable` from `1.20.3` to `1.20.4`
    - Update `go-ci-unstable-build` from `1.20.3` to `1.20.4`

- Dependencies
  - `goreleaser/nfpm`
    - `v2.27.1` to `v2.28.0`
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20230404205743-41aec7335792` to `v0.1.0`
  - `orijtech/structslop`
    - `v0.0.7` to `v0.0.8`

### Fixed

- (GH-962) structslop linter failing on Go 1.20 with `internal error: package
  "errors" without types was imported from ...`
- (GH-1007) ERROR: unable to select packages: git-2.36.6-r0: breaks:
  world[git=2.36.5-r0]

## [v0.10.4] - 2023-04-05

### Changed

- Go versions
  - mirror build images
    - Update `go-ci-mirror-build-go1.19` from `1.19.7` to `1.19.8`
    - Update `go-ci-mirror-build-go1.20` from `1.20.2` to `1.20.3`
  - oldstable images
    - Update `go-ci-oldstable` from `1.19.7` to `1.19.8`
    - Update `go-ci-oldstable-build` from `1.19.7` to `1.19.8`
  - stable images
    - Update `go-ci-stable` from `1.20.2` to `1.20.3`
    - Update `go-ci-stable-build` from `1.20.2` to `1.20.3`
    - Update `go-ci-stable-cgo-mingw-w64-build` from `1.20.2` to `1.20.3`
    - Update `go-ci-stable-alpine-buildx86` from `1.20.2-alpine3.16` to
      `1.20.3-alpine3.16`
    - Update `go-ci-stable-alpine-buildx64` from `1.20.2-alpine3.16` to
      `1.20.3-alpine3.16`
  - unstable images
    - Update `go-ci-unstable` from `1.20.2` to `1.20.3`
    - Update `go-ci-unstable-build` from `1.20.2` to `1.20.3`

- Dependencies
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20230308034057-d4ed0a4fab9e` to
    - `v0.0.0-20230404205743-41aec7335792`

## [v0.10.3] - 2023-03-27

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.52.1` to `v1.52.2`

## [v0.10.2] - 2023-03-23

### Fixed

- (GH-965) `orijtech/tickeryzer` missing from `unstable` image

## [v0.10.1] - 2023-03-22

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.52.0` to `v1.52.1`
  - `goreleaser/nfpm`
    - `v2.26.0` to `v2.27.1`

## [v0.10.0] - 2023-03-18

### Added

- Enable `golangci-lint` linters
  - `unstable` "combined" image
    - `nilnil`
    - `predeclared`

- New linters
  - `orijtech/tickeryzer` @`v0.0.3`

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.51.2` to `v1.52.0`

### Fixed

- (GH-949) go mod tidy flags `golang.org/x/vuln/vulncheck` as problematic

## [v0.9.2] - 2023-03-16

### Changed

- Dependencies
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.4.2` to `v0.4.3`
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20230308034057-d4ed0a4fab9e` to
    - `v0.0.0-20230313161840-8a73a7e4f203`

## [v0.9.1] - 2023-03-08

### Changed

- Go versions
  - mirror build images
    - Update `go-ci-mirror-build-go1.19` from `1.19.6` to `1.19.7`
    - Update `go-ci-mirror-build-go1.20` from `1.20.1` to `1.20.2`
  - oldstable images
    - Update `go-ci-oldstable` from `1.19.6` to `1.19.7`
    - Update `go-ci-oldstable-build` from `1.19.6` to `1.19.7`
  - stable images
    - Update `go-ci-stable` from `1.20.1` to `1.20.2`
    - Update `go-ci-stable-build` from `1.20.1` to `1.20.2`
    - Update `go-ci-stable-cgo-mingw-w64-build` from `1.20.1` to `1.20.2`
    - Update `go-ci-stable-alpine-buildx86` from `1.20.1-alpine3.16` to
      `1.20.2-alpine3.16`
    - Update `go-ci-stable-alpine-buildx64` from `1.20.1-alpine3.16` to
      `1.20.2-alpine3.16`
  - unstable images
    - Update `go-ci-unstable` from `1.20.1` to `1.20.2`
    - Update `go-ci-unstable-build` from `1.20.1` to `1.20.2`

- Dependencies
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20230217204342-b91abcc5ae3c` to
    - `v0.0.0-20230308034057-d4ed0a4fab9e`
  - `pelletier/go-toml`
    - `v2.0.6` to `v2.0.7`

- Misc
  - (GH-895) Update tracked tools for Dependabot PRs
  - (GH-897) Minor tweaks to Makefile build tasks status output
  - (GH-898) Simplify Dockerfile linting
  - (GH-924) Update tools/go.mod monitoring config

### Fixed

- (GH-932) Dependabot monitoring of multiple build images not working

## [v0.9.0] - 2023-02-23

### Added

- (GH-891) Add `choffmeister/git-describe-semver` to build images

### Changed

- (GH-889) Change versioned tags to support Dependabot updates

## [v0.8.1] - 2023-02-22

### Changed

- (GH-882) Add `xz` to builder images
- (GH-884) Add quoting for installed package version vars

### Fixed

- (GH-881) Fix build-unstable recipe syntax
- (GH-885) Fix paths referenced in `DOCKER_FILES` var
- (GH-886) Add missing ghcr.io image upload steps

## [v0.8.0] - 2023-02-21

### Added

- Tools
  - (GH-818) Add `goreleaser/nfpm` tool to build images
  - (GH-873) Add `tc-hib/go-winres` tool to build images
- Images
  - (GH-865) Rework mirror images
    - add Go 1.14 "legacy" mirror image
    - add Go 1.15 "legacy" mirror image
    - add Go 1.16 "legacy" mirror image
    - add Go 1.17 "legacy" mirror image
    - add Go 1.18 "legacy" mirror image
    - add Go 1.19 mirror image
    - add Go 1.20 mirror image
  - (GH-874) Rework images
    - add `go-ci-stable-build` image
    - add `go-ci-oldstable-build` image
    - add `go-ci-unstable-build` image

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.51.1` to `v1.51.2`
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.4.1` to `v0.4.2`
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20230213165600-1a019b0c7f30` to
    - `v0.0.0-20230217204342-b91abcc5ae3c`
  - `fatih/errwrap`
    - `v1.4.0` to `v1.5.0`

- Images
  - (GH-869) Rebrand, update `go-ci-stable-debian-build` image
    - rename `go-ci-stable-debian-build` image to
      `go-ci-stable-cgo-mingw-w64-build`
  - (GH-874) Rework images
    - update `go-ci-stable-alpine-buildx64` image
      - provide build tools
    - update `go-ci-stable-alpine-buildx86` image
      - provide build tools
    - update `go-ci-stable-cgo-mingw-w64-build` image
      - provide build tools

- Build
  - (GH-868) Update Makefile `clean` recipe to prune BuildKit cache of
    content older than 24 hours
  - (GH-874) Rework images
    - add `prune` recipe to aggressively reclaim disk space on image build
      host

- Workflows
  - (GH-860) Rework workflow scheduling
    - Add `scheduled-weekly.yml` workflow
    - Add `scheduled-monthly.yml` workflow
    - update project-analysis.yml
      - remove schedule
      - remove "on push"
      - apply jobs for PRs against ANY branch
  - (GH-861) Use local job defs for scheduled jobs
    - re-enable make build as a monthly task to build all images
    - remove imports for shared `scheduled-*.yml` workflow files and define
      local jobs to this repo
      - the jobs for this repo are different enough that pulling in a blanket
        "org-wide" set of tasks is unlikely to end well
  - (GH-866) Update CI jobs to build legacy images
  - (GH-870) Process all images when building
    - build legacy mirror images alongside other mirror images (and other
      images in general)

### Removed

- (GH-867) Remove `go-ci-lint-only` image
  - remove `go-ci-lint-only` Dockerfile
  - remove mention of `go-ci-lint-only` from the README
  - remove related Makefile recipe and settings for the `go-ci-lint-only`
    image
  - remove related GitHub Actions Workflow entry

### Fixed

- (GH-864) Remove stray space in image title LABEL

## [v0.7.11] - 2023-02-15

### Changed

- Go versions
  - Update `go-ci-stable` from `1.20.0` to `1.20.1`
  - Update `go-ci-unstable` from `1.20.0` to `1.20.1`
  - Update `go-ci-oldstable` from `1.19.5` to `1.19.6`
  - Update `go-ci-lint-only` from `1.20.0` to `1.20.1`
  - Update `go-ci-stable-mirror-build` from `1.20.0` to `1.20.1`
  - Update `go-ci-stable-debian-build` from `1.20.0` to `1.20.1`
  - Update `go-ci-stable-alpine-buildx86` from `1.20.0-alpine3.16` to
    `1.20.1-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.20.0-alpine3.16` to
    `1.20.1-alpine3.16`

- Dependencies
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.4.0` to `v0.4.1`
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20230209185747-5884084d81cd` to
    - `v0.0.0-20230213165600-1a019b0c7f30`

### Fixed

- (GH-851) Update Go Dockerfile version thresholds
- (GH-848) CI jobs failing after v0.7.10 images were published
  - workaround applied to explicitly set CWD as trusted by Git
- (GH-849) Fix Project Analysis README badge
- (GH-854) ERROR: unable to select packages: git-2.36.5-r0: breaks:
  world[git=2.36.4-r0]

## [v0.7.10] - 2023-02-10

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.51.0` to `v1.51.1`
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20230201222900-4c848edceff1` to
    - `v0.0.0-20230209185747-5884084d81cd`

- (GH-844) Re-enable disabled linters in golangci-lint config files

## [v0.7.9] - 2023-02-03

### Changed

- Go versions
  - Update `go-ci-stable` from `1.19.5` to `1.20`
  - Update `go-ci-unstable` from `1.20rc3` to `1.20`
  - Update `go-ci-oldstable` from `1.18.10` to `1.19.5`
  - Update `go-ci-lint-only` from `1.19.5` to `1.20`
  - Update `go-ci-stable-mirror-build` from `1.19.5` to `1.20`
  - Update `go-ci-stable-debian-build` from `1.19.5` to `1.20`
  - Update `go-ci-stable-alpine-buildx86` from `1.19.5-alpine3.16` to
    `1.20-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.19.5-alpine3.16` to
    `1.20-alpine3.16`

- Dependencies
  - `golangci/golangci-lint`
    - `v1.50.1` to `v1.51.0`
      - stable, oldstable images
    - `dev feat/go1.20 branch` to `v1.51.0`
      - unstable image
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.3.3` to `v0.4.0`
      - stable, oldstable images
    - commit `58c4d7e4b720c21f21f0d68e60a31117995fcd0b` to `v0.4.0`
      - unstable image
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20230110180137-6ad3e3d07815` to
    - `v0.0.0-20230201222900-4c848edceff1`

- (GH-825) Disable `Build all images using Makefile` CI job

### Fixed

- (GH-822) ERROR: unable to select packages: git-2.36.4-r0: breaks:
  world[git=2.36.3-r0]

## [v0.7.8] - 2023-01-13

### Changed

- Go versions
  - Update `go-ci-unstable` from `1.20rc2` to `1.20rc3`

- Dependencies
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20230109202529-975d4c73dae3` to
    - `v0.0.0-20230110180137-6ad3e3d07815`

## [v0.7.7] - 2023-01-12

### Changed

- Dependencies
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.3.3` to `master` branch commit
      `58c4d7e4b720c21f21f0d68e60a31117995fcd0b`
      - `unstable` image

## [v0.7.6] - 2023-01-11

### Changed

- Go versions
  - Update `go-ci-unstable` from `1.20rc1` to `1.20rc2`
  - Update `go-ci-stable` from `1.19.4` to `1.19.5`
  - Update `go-ci-oldstable` from `1.18.9` to `1.18.10`
  - Update `go-ci-lint-only` from `1.19.4` to `1.19.5`
  - Update `go-ci-stable-mirror-build` from `1.19.4` to `1.19.5`
  - Update `go-ci-stable-debian-build` from `1.19.4` to `1.19.5`
  - Update `go-ci-stable-alpine-buildx86` from `1.19.4-alpine3.16` to
    `1.19.5-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.19.4-alpine3.16` to
    `1.19.5-alpine3.16`

- Dependencies
  - `golangci/golangci-lint`
    - `stable`, `oldstable` images remain at `v1.50.1`
    - updated `unstable` image from `v1.50.1` to `feat/go1.20` dev branch
      (github.com/atc0005/golangci-lint@v0.0.0-20230110030621-1af8a004961f)
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20221122171214-05fb7250142c` to
    - `v0.0.0-20230109202529-975d4c73dae3`

## [v0.7.5] - 2022-12-09

### Changed

- Go versions
  - Update `go-ci-unstable` from `1.19.4` to `1.20rc1`

## [v0.7.4] - 2022-12-08

### Changed

- Go versions
  - Update `go-ci-stable` from `1.19.3` to `1.19.4`
  - Update `go-ci-oldstable` from `1.18.8` to `1.18.9`
  - Update `go-ci-lint-only` from `1.19.3` to `1.19.4`
  - Update `go-ci-stable-mirror-build` from `1.19.3` to `1.19.4`
  - Update `go-ci-stable-debian-build` from `1.19.3` to `1.19.4`
  - Update `go-ci-stable-alpine-buildx86` from `1.19.3-alpine3.16` to
    `1.19.4-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.19.3-alpine3.16` to
    `1.19.4-alpine3.16`

- Dependencies
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20221111165027-50a0e29f49cc` to
    - `v0.0.0-20221122171214-05fb7250142c`
  - `pelletier/go-toml`
    - `v2.0.5` to `v2.0.6`

## [v0.7.3] - 2022-11-15

### Changed

- Go versions
  - Update `go-ci-stable` from `1.19.2` to `1.19.3`
  - Update `go-ci-oldstable` from `1.18.7` to `1.18.8`
  - Update `go-ci-lint-only` from `1.19.2` to `1.19.3`
  - Update `go-ci-stable-mirror-build` from `1.19.2` to `1.19.3`
  - Update `go-ci-stable-debian-build` from `1.19.2` to `1.19.3`
  - Update `go-ci-stable-alpine-buildx86` from `1.19.2-alpine3.16` to
    `1.19.3-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.19.2-alpine3.16` to
    `1.19.3-alpine3.16`

- Dependencies
  - `golangci/golangci-lint`
    - `v1.50.0` to `v1.50.1`
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20221006005703-27389ae96df4` to
      `v0.0.0-20221111165027-50a0e29f49cc`

- (GH-758) Update README to include status badge for `Build Images` workflow
- (GH-769) Update git version for Alpine container images
- (GH-770) Update musl-dev package in Alpine images

## [v0.7.2] - 2022-10-07

### Changed

- Go versions
  - Update `go-ci-stable` from `1.19.1` to `1.19.2`
  - Update `go-ci-oldstable` from `1.18.6` to `1.18.7`
  - Update `go-ci-lint-only` from `1.19.1` to `1.19.2`
  - Update `go-ci-stable-mirror-build` from `1.19.1` to `1.19.2`
  - Update `go-ci-stable-debian-build` from `1.19.1` to `1.19.2`
  - Update `go-ci-stable-alpine-buildx86` from `1.19.1-alpine3.16` to
    `1.19.2-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.19.1-alpine3.16` to
    `1.19.2-alpine3.16`

- Dependencies
  - `golangci/golangci-lint`
    - `v1.49.0` to `v1.50.0`
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20220922224308-abdd677224e4` to
      `v0.0.0-20221006005703-27389ae96df4`

- (GH-742) GitHub Actions Workflows refactor
- (GH-752) Adjust timeout value for `Build all images using Makefile` job

## [v0.7.1] - 2022-09-23

### Changed

- Dependencies
  - `orijtech/structslop`
    - `v0.0.6` to `v0.0.7`
  - `golang.org/x/vuln/cmd/govulncheck`
    - `v0.0.0-20220908210932-64dbbd7bba4f` to
      `v0.0.0-20220922224308-abdd677224e4`

## [v0.7.0] - 2022-09-12

### Added

- New linters
  - [`golang.org/x/vuln/cmd/govulncheck`](https://go.dev/blog/vuln)
    @`v0.0.0-20220908210932-64dbbd7bba4f`

## [v0.6.26] - 2022-09-07

### Changed

- Go versions
  - Update `go-ci-stable` from `1.19.0` to `1.19.1`
  - Update `go-ci-oldstable` from `1.18.5` to `1.18.6`
  - Update `go-ci-lint-only` from `1.19.0` to `1.19.1`
  - Update `go-ci-stable-mirror-build` from `1.19.0` to `1.19.1`
  - Update `go-ci-stable-debian-build` from `1.19.0` to `1.19.1`
  - Update `go-ci-stable-alpine-buildx86` from `1.19.0-alpine3.16` to
    `1.19.1-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.19.0-alpine3.16` to
    `1.19.1-alpine3.16`
- (GH-466) Setup GitHub Actions workflow(s) to build images for CI purposes
- (GH-720) Swap Docker registry upload order
  (GH-723) Split makefile build recipe into sub recipes, call each from GHAW

## [v0.6.25] - 2022-09-04

### Changed

- Dependencies
  - `pelletier/go-toml`
    - `v2.0.4` to `v2.0.5`

### Fixed

- (GH-716) Explicitly setting Go version for golangci-lint causes issues with
  projects using deprecated Go versions

## [v0.6.24] - 2022-08-26

### Changed

- Dependencies
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.3.2` to `v0.3.3`
      - `oldstable` image
  - `pelletier/go-toml`
    - `v2.0.3` to `v2.0.4`

### Fixed

- (GH-711) Outdated `staticcheck` version (v0.2.2) fails to run in `oldstable`
  image

## [v0.6.23] - 2022-08-25

### Changed

- Go versions
  - Update `go-ci-stable` from `1.18.5` to `1.19.0`
  - Update `go-ci-oldstable` from `1.17.13` to `1.18.5`
  - Update `go-ci-lint-only` from `1.18.5` to `1.19.0`
  - Update `go-ci-stable-mirror-build` from `1.18.5` to `1.19.0`
  - Update `go-ci-stable-debian-build` from `1.18.5` to `1.19.0`
  - Update `go-ci-stable-alpine-buildx86` from `1.18.5-alpine3.16` to
    `1.19.0-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.18.5-alpine3.16` to
    `1.19.0-alpine3.16`

- Dependencies
  - `golangci/golangci-lint`
    - `v1.47.3` to `v1.49.0`
  - `pelletier/go-toml`
    - `v2.0.2` to `v2.0.3`

## [v0.6.22] - 2022-08-15

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.48.0` to `v1.47.3`

## [v0.6.21] - 2022-08-09

### Changed

- Go versions
  - Update `go-ci-stable` from `1.18.4` to `1.18.5`
  - Update `go-ci-unstable` from `1.19rc2` to `1.19.0`
  - Update `go-ci-oldstable` from `1.17.12` to `1.17.13`
  - Update `go-ci-lint-only` from `1.18.4` to `1.18.5`
  - Update `go-ci-stable-mirror-build` from `1.18.4` to `1.18.5`
  - Update `go-ci-stable-debian-build` from `1.18.4` to `1.18.5`
  - Update `go-ci-stable-alpine-buildx86` from `1.18.4-alpine3.16` to
    `1.18.5-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.18.4-alpine3.16` to
    `1.18.5-alpine3.16`

- Dependencies
  - `golangci/golangci-lint`
    - `v1.47.2` to `v1.48.0`
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.3.2` to `v0.3.3`

### Fixed

- (GH-696) README: Update pelletier/go-toml to v2.0.2

## [v0.6.20] - 2022-07-22

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.47.1` to `v1.47.2`

## [v0.6.19] - 2022-07-20

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.47.0` to `v1.47.1`

- Linters
  - (GH-681) Refresh list of disabled linters (due to Go 1.18+
    incompatibilities) for golangci-lint v1.47.1 release

## [v0.6.18] - 2022-07-19

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.46.2` to `v1.47.0`

- Linters
  - (GH-676) Refresh list of disabled linters (due to Go 1.18+
    incompatibilities) for golangci-lint v1.47.0 release

## [v0.6.17] - 2022-07-13

### Changed

- Go versions
  - Update `go-ci-stable` from `1.18.3` to `1.18.4`
  - Update `go-ci-unstable` from `1.19rc1` to `1.19rc2`
  - Update `go-ci-oldstable` from `1.17.11` to `1.17.12`
  - Update `go-ci-lint-only` from `1.18.3` to `1.18.4`
  - Update `go-ci-stable-mirror-build` from `1.18.3` to `1.18.4`
  - Update `go-ci-stable-debian-build` from `1.18.3` to `1.18.4`
  - Update `go-ci-stable-alpine-buildx86` from `1.18.3-alpine3.16` to
    `1.18.4-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.18.3-alpine3.16` to
    `1.18.4-alpine3.16`

## [v0.6.16] - 2022-07-11

### Changed

- Go versions
  - Update `go-ci-unstable` from `1.19beta1` to `1.19rc1`

## [v0.6.15] - 2022-06-20

### Fixed

- (GH-665) Add missing "from" to CHANGELOG entry
- (GH-666) `stable` containers unintentionally enable *all* `govet` analyzers

## [v0.6.14] - 2022-06-20

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.11` to `1.18.3`
  - Update `go-ci-unstable` from `1.18.3` to `1.19beta1`
  - Update `go-ci-oldstable` from `1.16.15` to `1.17.11`
  - Update `go-ci-lint-only` from `1.17.11` to `1.18.3`
  - Update `go-ci-stable-mirror-build` from `1.17.11` to `1.18.3`
  - Update `go-ci-stable-debian-build` from `1.17.11` to `1.18.3`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.11-alpine3.16` to
    `1.18.3-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.11-alpine3.16` to
    `1.18.3-alpine3.16`

- Linters
  - (GH-658) Refresh list of disabled linters due to Go 1.18+
    incompatibilities

- Dependencies
  - `pelletier/go-toml`
    - `v2.0.1` to `v2.0.2`

## [v0.6.13] - 2022-06-02

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.10` to `1.17.11`
  - Update `go-ci-unstable` from `1.18.2` to `1.18.3`
  - NOTE: No changes to `go-ci-oldstable`
    - still using `1.16.15` until atc0005/go-ci#557 is resolved
  - Update `go-ci-lint-only` from `1.17.10` to `1.17.11`
    - continue to use `golang:1.17` series in place of
      `golangci/golangci-lint:vX.Y.Z-alpine` series until atc0005/go-ci#557
      is resolved
  - Update `go-ci-stable-mirror-build` from `1.17.10` to `1.17.11`
  - Update `go-ci-stable-debian-build` from `1.17.10` to `1.17.11`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.10-alpine3.14` to
    `1.17.11-alpine3.16`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.10-alpine3.14` to
    `1.17.11-alpine3.16`

## [v0.6.12] - 2022-05-18

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.46.1` to `v1.46.2`
    - binary installed within `oldstable`, `stable` and `unstable` images
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.3.1` to `v0.3.2`
      - `oldstable` image (based on Go `1.16` base image) remains at `v0.2.2`
        due to incompatibility with `v0.3.0` and newer

## [v0.6.11] - 2022-05-13

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.46.0` to `v1.46.1`
    - binary installed within `oldstable`, `stable` and `unstable` images

## [v0.6.10] - 2022-05-11

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.9` to `1.17.10`
  - Update `go-ci-unstable` from `1.18.1` to `1.18.2`
  - NOTE: No changes to `go-ci-oldstable`
    - still using `1.16.15` until atc0005/go-ci#557 is resolved
  - Update `go-ci-lint-only` from `1.17.9` to `1.17.10`
    - continue to use `golang:1.17` series in place of
      `golangci/golangci-lint:vX.Y.Z-alpine` series until atc0005/go-ci#557
      is resolved
  - Update `go-ci-stable-mirror-build` from `1.17.9` to `1.17.10`
  - Update `go-ci-stable-debian-build` from `1.17.9` to `1.17.10`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.9-alpine3.14` to
    `1.17.10-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.9-alpine3.14` to
    `1.17.10-alpine3.14`

- Dependencies
  - `pelletier/go-toml`
    - `v2.0.0` to `v2.0.1`

## [v0.6.9] - 2022-05-10

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.45.2` to `v1.46.0`
    - binary installed within `oldstable`, `stable` and `unstable` images
  - `pelletier/go-toml`
    - `v1.9.5` to `v2.0.0`

- (GH-622) Enable staticcheck linter in `unstable` Go 1.18 image

## [v0.6.8] - 2022-04-25

### Changed

- Dependencies
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.3.0` to `v0.3.1`
      - `oldstable` image (based on Go `1.16` base image) remains at `v0.2.2`
        due to incompatibility with `v0.3.0` and newer
  - `pelletier/go-toml`
    - `v1.9.4` to `v1.9.5`

### Fixed

- (GH-609) Dependabot ignores version constraint for i386 Docker image

## [v0.6.7] - 2022-04-13

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.8` to `1.17.9`
  - Update `go-ci-unstable` from `1.18.0` to `1.18.1`
  - NOTE: No changes to `go-ci-oldstable`
    - still using `1.16.15` until atc0005/go-ci#557 is resolved
  - Update `go-ci-lint-only` from `1.17.8` to `1.17.9`
    - continue to use `golang:1.17` series in place of
      `golangci/golangci-lint:vX.Y.Z-alpine` series until atc0005/go-ci#557
      is resolved
  - Update `go-ci-stable-mirror-build` from `1.17.8` to `1.17.9`
  - Update `go-ci-stable-debian-build` from `1.17.8` to `1.17.9`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.8-alpine3.14` to
    `1.17.9-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.8-alpine3.14` to
    `1.17.9-alpine3.14`

### Fixed

- (GH-603) ERROR: unable to select packages: `git-2.32.1-r0`: breaks:
  `world[git=2.32.0-r0]`
- (GH-605) Dependabot incorrectly updated `i386/golang` from
  `1.17.8-alpine3.14` to `1.18.1-alpine3.14` in `/stable/build/alpine-x86`

## [v0.6.6] - 2022-03-30

### Changed

- Dependencies
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.2.2` to `v0.3.0`
      - `oldstable` image (based on Go `1.16` base image) remains at `v0.2.2`
        due to incompatibility with `v0.3.0` and newer

- (GH-590) Add debugging output for tooling installation

### Fixed

- (GH-583) Conflicting golangci-lint config file settings for `unstable` image
- (GH-588) Makefile `build` recipe for `oldstable` image fails to build with
  `pkg/mod/honnef.co/go/tools@v0.3.0/go/ir/builder.go:36:2: //go:build comment
  without // +build comment`
- (GH-593) Fix broken chained RUN directive

## [v0.6.5] - 2022-03-25

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.45.0` to `v1.45.2`
    - binary installed within `oldstable`, `stable` and `unstable` images

### Fixed

- (GH-572) Update description of `unstable` image
- (GH-574) Conflicting golangci-lint config file settings for `unstable` image
- (GH-575) Disable go-critic analyzers incompatible with Go 1.18
- (GH-581) ERROR: unable to select packages: bash-5.1.16-r0: breaks:
  world[bash=5.1.4-r0]

## [v0.6.4] - 2022-03-21

### Changed

- Go versions
  - Update `go-ci-unstable` from `1.18rc1` to `1.18.0`
  - Update `go-ci-lint-only` from `1.17.7` to `1.17.8`
    - temporarily switch from `golangci/golangci-lint:v1.45.0-alpine` to
      `golang:1.17` series

- Dependencies
  - `golangci/golangci-lint`
    - `v1.44.2` to `v1.45.0`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image
      - upstream `golang:1.17` series is used until golangci-lint fully
        supports Go 1.18
    - Docker image used as a builder/base for `unstable` image
      - builder/base workflow currently used to work around golangci-lint
        incompatibilities with Go 1.18

## [v0.6.3] - 2022-03-07

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.7` to `1.17.8`
  - Update `go-ci-oldstable` from `1.16.14` to `1.16.15`
  - Update `go-ci-lint-only` from `1.17.7` to `1.17.8`
  - Update `go-ci-stable-mirror-build` from `1.17.7` to `1.17.8`
  - Update `go-ci-stable-debian-build` from `1.17.7` to `1.17.8`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.7-alpine3.14` to
    `1.17.8-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.7-alpine3.14` to
    `1.17.8-alpine3.14`

- Dependencies
  - `actions/checkout`
    - `v2.5.1` to `v3`
  - `actions/setup-node`
    - `v2.5.1` to `v3`
  - `fatih/errwrap`
    - `v1.3.1` to `v1.4.0`

## [v0.6.2] - 2022-02-18

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.44.0` to `v1.44.2`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image
    - Docker image used as a builder/base for `unstable` image
      - this is used until golangci-lint officially supports Go 1.18

- Go versions
  - Update `go-ci-unstable` from `1.18beta2` to `1.18rc1`

### Fixed

- (GH-528) ERROR: unable to select packages: `util-linux-2.37.4-r0`: breaks:
  `world[util-linux=2.37.3-r0]`
- CHANGELOG
  - `v0.6.1` `unstable` image listed as updated (it wasn't)

## [v0.6.1] - 2022-02-11

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.6` to `1.17.7`
  - Update `go-ci-oldstable` from `1.16.13` to `1.16.14`
  - Update `go-ci-lint-only` from `1.17.6` to `1.17.7`
  - Update `go-ci-stable-mirror-build` from `1.17.6` to `1.17.7`
  - Update `go-ci-stable-debian-build` from `1.17.6` to `1.17.7`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.6-alpine3.14` to
    `1.17.7-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.6-alpine3.14` to
    `1.17.7-alpine3.14`

### Fixed

- (GH-518) ERROR: unable to select packages: `util-linux-2.37.3-r0`: breaks:
  `world[util-linux=2.37.2-r0]`
- (GH-520) Inconsistency in image name/title for "upstream mirror" image

## [v0.6.0] - 2022-02-03

### Added

- (GH-509) Mirror current `latest` version of official `golang` image from
  Docker Hub

### Fixed

- (GH-508) Dockerfiles, README, Makefile incorrectly refer to images as
  "containers"

## [v0.5.0] - 2022-02-03

### Added

- (GH-4) Support uploading to both Docker Hub and GitHub Container Registry
- (GH-498) Connect GitHub repo to container images using Dockerfile `LABEL`
- (GH-501) Add additional "Pre-Defined annotation Keys" to Dockerfiles

### Changed

- (GH-503) Expand `clean` Makefile recipe

### Fixed

- (GH-497) Tweak doc comments for linter config files for `unstable` image

## [v0.4.1] - 2022-02-01

### Changed

- Disable `golangci-lint` linters, analyzers
  - (GH-494) oldstable, stable images
    - `gocyclo`
    - `gocognit`
    - `goerr113`

- Go versions
  - Update `go-ci-unstable` from `1.18beta1` to `1.18beta2`
    - NOTE: There are known issues with pre-releases of Go 1.18 and
      `golangci-lint`. See
      <https://github.com/golangci/golangci-lint/pull/2438> for additional
      details.

## [v0.4.0] - 2022-01-27

### Added

- Enable `golangci-lint` linters, analyzers
  - stable image
    - `gocyclo`
    - `gocognit`
    - `goerr113`
    - `revive`
  - unstable image
    - `gochecknoglobals`
    - `govet`
      - explicitly disable `fieldalignment` analyzer
      - enable all other `govet` analyzers
    - `revive`
- Remove `golangci-lint` linter
  - `golint`

### Fixed

- Add missing section header for v0.3.43 release

## [v0.3.43] - 2022-01-26

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.43.0` to `v1.44.0`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image

## [v0.3.42] - 2022-01-07

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.5` to `1.17.6`
  - Update `go-ci-unstable` from `1.17.5` to `1.17.6`
  - Update `go-ci-oldstable` from `1.16.12` to `1.16.13`
  - Update `go-ci-stable-debian-build` from `1.17.5` to `1.17.6`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.5-alpine3.14` to
    `1.17.6-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.5-alpine3.14` to
    `1.17.6-alpine3.14`

## [v0.3.41] - 2022-01-04

### Changed

- Go versions
  - Update `go-ci-unstable` from `1.17.5` to `1.18beta1`
    - NOTE: There are known issues with Go 1.18beta1 and `golangci-lint`. See
      <https://github.com/golangci/golangci-lint/pull/2438> for additional
      details.

- README
  - note that the `unstable` container uses the latest available `beta` or
    `rc` base image before falling back to mirroring the same base image as
    the `stable` release

## [v0.3.40] - 2021-12-10

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.4` to `1.17.5`
  - Update `go-ci-unstable` from `1.17.4` to `1.17.5`
  - Update `go-ci-oldstable` from `1.16.11` to `1.16.12`
  - Update `go-ci-stable-debian-build` from `1.17.4` to `1.17.5`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.4-alpine3.14` to
    `1.17.5-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.4-alpine3.14` to
    `1.17.5-alpine3.14`

## [v0.3.39] - 2021-12-06

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.3` to `1.17.4`
  - Update `go-ci-unstable` from `1.17.3` to `1.17.4`
  - Update `go-ci-oldstable` from `1.16.10` to `1.16.11`
  - Update `go-ci-stable-debian-build` from `1.17.3` to `1.17.4`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.3-alpine3.14` to
    `1.17.4-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.3-alpine3.14` to
    `1.17.4-alpine3.14`

## [v0.3.38] - 2021-11-12

### Changed

- Dependencies
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.2.1` to `v0.2.2`
  - `hadolint/hadolint`
    - `latest-debian` to `v2.8.0-debian`

## [v0.3.37] - 2021-11-09

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.2` to `1.17.3`
  - Update `go-ci-unstable` from `1.17.2` to `1.17.3`
  - Update `go-ci-oldstable` from `1.16.9` to `1.16.10`
  - Update `go-ci-stable-debian-build` from `1.17.2` to `1.17.3`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.2-alpine3.14` to
    `1.17.3-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.2-alpine3.14` to
    `1.17.3-alpine3.14`

### Fixed

- (GH-442) ERROR: unable to select packages: util-linux-2.37.2-r0: breaks:
  world[util-linux=2.37-r0]

## [v0.3.36] - 2021-11-04

- Dependencies
  - `golangci/golangci-lint`
    - `v1.42.1` to `v1.43.0`
    - binary installed within `oldstable`, `stable` and `unstable` images

## [v0.3.35] - 2021-11-04

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.42.1` to `v1.43.0`
    - Docker image used as a builder/base for `lint-only` image
  - `actions/checkout`
    - `v2.3.4` to `v2.4.0`

## [v0.3.34] - 2021-10-08

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.1` to `1.17.2`
  - Update `go-ci-unstable` from `1.17.1` to `1.17.2`
  - Update `go-ci-oldstable` from `1.16.8` to `1.16.9`
  - Update `go-ci-stable-debian-build` from `1.17.1` to `1.17.2`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.1-alpine3.14` to
    `1.17.2-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.1-alpine3.14` to
    `1.17.2-alpine3.14`

- Dependencies
  - `actions/setup-node`
    - `v2.4.0` to `v2.4.1`

## [v0.3.33] - 2021-09-10

### Changed

- Go versions
  - Update `go-ci-stable` from `1.17.0` to `1.17.1`
  - Update `go-ci-unstable` from `1.17.0` to `1.17.1`
  - Update `go-ci-oldstable` from `1.16.7` to `1.16.8`
  - Update `go-ci-stable-debian-build` from `1.17.0` to `1.17.1`
  - Update `go-ci-stable-alpine-buildx86` from `1.17.0-alpine3.14` to
    `1.17.1-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.17.0-alpine3.14` to
    `1.17.1-alpine3.14`

### Fixed

- CHANGELOG
  - Formatting
    - Add missing space between text and formatted version string in multiple
      prior sections

## [v0.3.32] - 2021-09-07

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.42.0` to `v1.42.1`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image
  - `pelletier/go-toml`
    - `v1.9.3` to `v1.9.4`

## [v0.3.31] - 2021-08-19

### Changed

- Go versions
  - Update `go-ci-stable` from `1.16.7` to `1.17.0`
  - Update `go-ci-unstable` from `1.17.rc2` to `1.17.0`
  - Update `go-ci-oldstable` from `1.15.15` to `1.16.7`
  - Update `go-ci-stable-debian-build` from `1.16.7` to `1.17.0`
  - Update `go-ci-stable-alpine-buildx86` from `1.16.7-alpine3.14` to
    `1.17.0-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.16.7-alpine3.14` to
    `1.17.0-alpine3.14`

- Dependencies
  - `golangci/golangci-lint`
    - `v1.41.1` to `v1.42.0`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.2.0` to `v0.2.1`

- Remove `GO111MODULE` env var usage

- Replace `oldstable` image `go get` calls used for installation with `go
  install`

- Update dependabot monitoring for `oldstable` version to reflect promotion
  of `oldstable` to Go 1.16

- Add back `errwrap` to `oldstable` image

- Update Debian-based images to reference current dependency versions for
  `Bullseye` release

## [v0.3.30] - 2021-08-06

### Changed

- Go versions
  - Update `go-ci-stable` from `1.16.6` to `1.16.7`
  - Update `go-ci-oldstable` from `1.15.14` to `1.15.15`
  - Update `go-ci-stable-debian-build` from `1.16.6` to `1.16.7`
  - Update `go-ci-stable-alpine-buildx86` from `1.16.6-alpine3.14` to
    `1.16.7-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.16.6-alpine3.14` to
    `1.16.7-alpine3.14`

- Dependencies
  - `actions/setup-node`
    - `v2.3.2` to `v2.4.0`

## [v0.3.29] - 2021-08-05

### Changed

- Go versions
  - Update `go-ci-unstable` from `1.17rc1` to `1.17rc2`

- Dependencies
  - `actions/setup-node`
    - `v2.2.0` to `v2.3.2`
    - update `node-version` value to always use latest LTS version instead of
      hard-coded version

### Fixed

- remove incorrect `go-ci-unstable` entry from `Changed` list for `v0.3.28`
  release

## [v0.3.28] - 2021-07-14

### Changed

- Go versions
  - Update `go-ci-stable` from `1.16.5` to `1.16.6`
  - Update `go-ci-unstable` from `1.17beta1` to `1.17rc1`
  - Update `go-ci-oldstable` from `1.15.13` to `1.15.14`
  - Update `go-ci-stable-debian-build` from `1.16.5` to `1.16.6`
  - Update `go-ci-stable-alpine-buildx86` from `1.16.5-alpine3.12` to
    `1.16.6-alpine3.14`
  - Update `go-ci-stable-alpine-buildx64` from `1.16.5-alpine3.12` to
    `1.16.6-alpine3.14`

- Dependencies
  - `actions/setup-node`
    - `v2.1.5` to `v2.2.0`

### Fixed

- README
  - Update `golangci/golangci-lint` linters table entry to reflect `v1.41.1`
    release included in `v0.3.27` images

## [v0.3.27] - 2021-06-23

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.41.0` to `v1.41.1`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image

## [v0.3.26] - 2021-06-17

### Added

- `linting` Makefile recipe
  - uses `hadolint/hadolint` to run linting checks against project Dockerfiles

### Changed

- Dependencies
  - `pelletier/go-toml`
    - `v1.9.2` to `v1.9.3`
  - `golangci/golangci-lint`
    - `v1.40.1` to `v1.41.0`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image

### Fixed

- Incorrect target names (typos)
- hadolint linting errors | `DL3059 info: Multiple consecutive RUN
  instructions. Consider consolidation`

## [v0.3.25] - 2021-06-11

### Changed

- Go versions
  - Update `go-ci-unstable` from `1.16.5` to `1.17beta1`

### Fixed

- go get: installing executables with 'go get' in module mode is deprecated
- CHANGELOG entries missing for recent `go-ci-unstable` Go version updates

## [v0.3.24] - 2021-06-10

### Changed

- Go versions
  - Update `go-ci-stable` from `1.16.4` to `1.16.5`
  - Update `go-ci-unstable` from `1.16.4` to `1.16.5`
  - Update `go-ci-oldstable` from `1.15.12` to `1.15.13`
  - Update `go-ci-stable-debian-build` from `1.16.4` to `1.16.5`
  - Update `go-ci-stable-alpine-buildx86` from `1.16.4-alpine3.12` to
    `1.16.5-alpine3.12`
  - Update `go-ci-stable-alpine-buildx64` from `1.16.4-alpine3.12` to
    `1.16.5-alpine3.12`

- Dependencies
  - `pelletier/go-toml`
    - `v1.9.1` to `v1.9.2`

## [v0.3.23] - 2021-06-02

### Changed

- Dependencies
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.1.4` to `v0.2.0`

## [v0.3.22] - 2021-05-19

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.40.0` to `v1.40.1`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image

## [v0.3.21] - 2021-05-13

### Changed

- Go versions
  - Update `go-ci-stable` from `1.16.3` to `1.16.4`
  - Update `go-ci-unstable` from `1.16.3` to `1.16.4`
  - Update `go-ci-oldstable` from `1.15.11` to `1.15.12`
  - Update `go-ci-stable-debian-build` from `1.16.3` to `1.16.4`
  - Update `go-ci-stable-alpine-buildx86` from `1.16.3-alpine3.12` to
    `1.16.4-alpine3.12`
  - Update `go-ci-stable-alpine-buildx64` from `1.16.3-alpine3.12` to
    `1.16.4-alpine3.12`

- Dependencies
  - `honnef.co/go/tools` (`staticcheck`)
    - `v0.1.3` to `v0.1.4`
  - `golangci/golangci-lint`
    - `v1.39.0` to `v1.40.0`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image
  - `pelletier/go-toml`
    - `v1.9.0` to `v1.9.1`

### Fixed

- Explicitly use public Docker Hub repo link

## [v0.3.20] - 2021-04-15

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - re-enable deprecated `maligned` linter, disable `govet: fieldalignment`
  - `pelletier/go-toml`
    - `v1.8.1` to `v1.9.0`

## [v0.3.19] - 2021-04-02

### Changed

- Go versions
  - Update `go-ci-stable` from `1.16.2` to `1.16.3`
  - Update `go-ci-unstable` from `1.16.2` to `1.16.3`
  - Update `go-ci-oldstable` from `1.15.10` to `1.15.11`
  - Update `go-ci-stable-debian-build` from `1.16.2` to `1.16.3`
  - Update `go-ci-stable-alpine-buildx86` from `1.16.2-alpine3.12` to
    `1.16.3-alpine3.12`
  - Update `go-ci-stable-alpine-buildx64` from `1.16.2-alpine3.12` to
    `1.16.3-alpine3.12`

- Dependencies
  - `golangci/golangci-lint`
    - replace deprecated `maligned` linter with `govet: fieldalignment`
    - replace deprecated `scopelint` linter with `exportloopref`

NOTE: The `go-ci-lint-only` image is *not* updated in this release. We're
waiting on a new upstream release.

## [v0.3.18] - 2021-03-26

### Changed

- Dependencies
  - `golangci/golangci-lint`
    - `v1.38.0` to `v1.39.0`
    - binary installed within `oldstable`, `stable` and `unstable` images
    - Docker image used as a builder/base for `lint-only` image
  - `fatih/errwrap`
    - `v1.2.0` to `v1.3.1`
      - for images other than `oldstable` (see Removed section)

### Removed

- Dependencies
  - `fatih/errwrap`
    - removed from the `oldstable` image since it now requires Go 1.16
    - the plan is to restore this once Go 1.17 is released and Go 1.16 becomes
      the `oldstable` version

## [v0.3.17] - 2021-03-12

### Changed

- Update `git` pkg from `2.26.2-r0` to `2.26.3-r0`

### Fixed

- Alpine build containers
  - image build failure for v0.3.16 release

## [v0.3.16] - 2021-03-12

### Changed

- Go versions
  - Update `go-ci-stable` from `1.16.0` to `1.16.2`
  - Update `go-ci-unstable` from `1.16.0` to `1.16.2`
  - Update `go-ci-oldstable` from `1.15.8` to `1.15.10`
  - Update `go-ci-stable-debian-build` from `1.16.0` to `1.16.2`
  - Update `go-ci-stable-alpine-buildx86` from `1.16.0-alpine3.12` to
    `1.16.2-alpine3.12`
  - Update `go-ci-stable-alpine-buildx64` from `1.16.0-alpine3.12` to
    `1.16.2-alpine3.12`

- Dependencies
  - `go.mod`
    - Update Go version from `1.14` to `1.15`
  - `honnef.co/go/tools`
    - `v0.1.2` to `v0.1.3`

NOTE: The `go-ci-lint-only` image is *not* updated in this release. We're
waiting on a new upstream release.

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
  - Update `go-ci-stable-alpine-buildx86` from `1.15.8-alpine3.12` to
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
  - Update `go-ci-unstable` from `1.16rc1` to `1.16.0`
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
  - Update `go-ci-stable-alpine-buildx86` from `1.15.7-alpine3.12` to
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
  - Update `go-ci-stable-alpine-buildx86` from `1.15.6-alpine3.12` to
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
  - Update `go-ci-stable-alpine-buildx86` from `1.15.5-alpine3.12` to
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
  - Update `go-ci-stable-alpine-buildx86` from `1.15.4-alpine3.12` to
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
  - Update `go-ci-stable-alpine-buildx86` from `1.15.3-alpine3.12` to
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
  - Update `go-ci-stable-alpine-buildx86` from `1.15.2-alpine3.12` to
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

[Unreleased]: https://github.com/atc0005/go-ci/compare/v0.13.0...HEAD
[v0.13.0]: https://github.com/atc0005/go-ci/releases/tag/v0.13.0
[v0.12.0]: https://github.com/atc0005/go-ci/releases/tag/v0.12.0
[v0.11.5]: https://github.com/atc0005/go-ci/releases/tag/v0.11.5
[v0.11.4]: https://github.com/atc0005/go-ci/releases/tag/v0.11.4
[v0.11.3]: https://github.com/atc0005/go-ci/releases/tag/v0.11.3
[v0.11.2]: https://github.com/atc0005/go-ci/releases/tag/v0.11.2
[v0.11.1]: https://github.com/atc0005/go-ci/releases/tag/v0.11.1
[v0.11.0]: https://github.com/atc0005/go-ci/releases/tag/v0.11.0
[v0.10.6]: https://github.com/atc0005/go-ci/releases/tag/v0.10.6
[v0.10.5]: https://github.com/atc0005/go-ci/releases/tag/v0.10.5
[v0.10.4]: https://github.com/atc0005/go-ci/releases/tag/v0.10.4
[v0.10.3]: https://github.com/atc0005/go-ci/releases/tag/v0.10.3
[v0.10.2]: https://github.com/atc0005/go-ci/releases/tag/v0.10.2
[v0.10.1]: https://github.com/atc0005/go-ci/releases/tag/v0.10.1
[v0.10.0]: https://github.com/atc0005/go-ci/releases/tag/v0.10.0
[v0.9.2]: https://github.com/atc0005/go-ci/releases/tag/v0.9.2
[v0.9.1]: https://github.com/atc0005/go-ci/releases/tag/v0.9.1
[v0.9.0]: https://github.com/atc0005/go-ci/releases/tag/v0.9.0
[v0.8.1]: https://github.com/atc0005/go-ci/releases/tag/v0.8.1
[v0.8.0]: https://github.com/atc0005/go-ci/releases/tag/v0.8.0
[v0.7.11]: https://github.com/atc0005/go-ci/releases/tag/v0.7.11
[v0.7.10]: https://github.com/atc0005/go-ci/releases/tag/v0.7.10
[v0.7.9]: https://github.com/atc0005/go-ci/releases/tag/v0.7.9
[v0.7.8]: https://github.com/atc0005/go-ci/releases/tag/v0.7.8
[v0.7.7]: https://github.com/atc0005/go-ci/releases/tag/v0.7.7
[v0.7.6]: https://github.com/atc0005/go-ci/releases/tag/v0.7.6
[v0.7.5]: https://github.com/atc0005/go-ci/releases/tag/v0.7.5
[v0.7.4]: https://github.com/atc0005/go-ci/releases/tag/v0.7.4
[v0.7.3]: https://github.com/atc0005/go-ci/releases/tag/v0.7.3
[v0.7.2]: https://github.com/atc0005/go-ci/releases/tag/v0.7.2
[v0.7.1]: https://github.com/atc0005/go-ci/releases/tag/v0.7.1
[v0.7.0]: https://github.com/atc0005/go-ci/releases/tag/v0.7.0
[v0.6.26]: https://github.com/atc0005/go-ci/releases/tag/v0.6.26
[v0.6.25]: https://github.com/atc0005/go-ci/releases/tag/v0.6.25
[v0.6.24]: https://github.com/atc0005/go-ci/releases/tag/v0.6.24
[v0.6.23]: https://github.com/atc0005/go-ci/releases/tag/v0.6.23
[v0.6.22]: https://github.com/atc0005/go-ci/releases/tag/v0.6.22
[v0.6.21]: https://github.com/atc0005/go-ci/releases/tag/v0.6.21
[v0.6.20]: https://github.com/atc0005/go-ci/releases/tag/v0.6.20
[v0.6.19]: https://github.com/atc0005/go-ci/releases/tag/v0.6.19
[v0.6.18]: https://github.com/atc0005/go-ci/releases/tag/v0.6.18
[v0.6.17]: https://github.com/atc0005/go-ci/releases/tag/v0.6.17
[v0.6.16]: https://github.com/atc0005/go-ci/releases/tag/v0.6.16
[v0.6.15]: https://github.com/atc0005/go-ci/releases/tag/v0.6.15
[v0.6.14]: https://github.com/atc0005/go-ci/releases/tag/v0.6.14
[v0.6.13]: https://github.com/atc0005/go-ci/releases/tag/v0.6.13
[v0.6.12]: https://github.com/atc0005/go-ci/releases/tag/v0.6.12
[v0.6.11]: https://github.com/atc0005/go-ci/releases/tag/v0.6.11
[v0.6.10]: https://github.com/atc0005/go-ci/releases/tag/v0.6.10
[v0.6.9]: https://github.com/atc0005/go-ci/releases/tag/v0.6.9
[v0.6.8]: https://github.com/atc0005/go-ci/releases/tag/v0.6.8
[v0.6.7]: https://github.com/atc0005/go-ci/releases/tag/v0.6.7
[v0.6.6]: https://github.com/atc0005/go-ci/releases/tag/v0.6.6
[v0.6.5]: https://github.com/atc0005/go-ci/releases/tag/v0.6.5
[v0.6.4]: https://github.com/atc0005/go-ci/releases/tag/v0.6.4
[v0.6.3]: https://github.com/atc0005/go-ci/releases/tag/v0.6.3
[v0.6.2]: https://github.com/atc0005/go-ci/releases/tag/v0.6.2
[v0.6.1]: https://github.com/atc0005/go-ci/releases/tag/v0.6.1
[v0.6.0]: https://github.com/atc0005/go-ci/releases/tag/v0.6.0
[v0.5.0]: https://github.com/atc0005/go-ci/releases/tag/v0.5.0
[v0.4.1]: https://github.com/atc0005/go-ci/releases/tag/v0.4.1
[v0.4.0]: https://github.com/atc0005/go-ci/releases/tag/v0.4.0
[v0.3.43]: https://github.com/atc0005/go-ci/releases/tag/v0.3.43
[v0.3.42]: https://github.com/atc0005/go-ci/releases/tag/v0.3.42
[v0.3.41]: https://github.com/atc0005/go-ci/releases/tag/v0.3.41
[v0.3.40]: https://github.com/atc0005/go-ci/releases/tag/v0.3.40
[v0.3.39]: https://github.com/atc0005/go-ci/releases/tag/v0.3.39
[v0.3.38]: https://github.com/atc0005/go-ci/releases/tag/v0.3.38
[v0.3.37]: https://github.com/atc0005/go-ci/releases/tag/v0.3.37
[v0.3.36]: https://github.com/atc0005/go-ci/releases/tag/v0.3.36
[v0.3.35]: https://github.com/atc0005/go-ci/releases/tag/v0.3.35
[v0.3.34]: https://github.com/atc0005/go-ci/releases/tag/v0.3.34
[v0.3.33]: https://github.com/atc0005/go-ci/releases/tag/v0.3.33
[v0.3.32]: https://github.com/atc0005/go-ci/releases/tag/v0.3.32
[v0.3.31]: https://github.com/atc0005/go-ci/releases/tag/v0.3.31
[v0.3.30]: https://github.com/atc0005/go-ci/releases/tag/v0.3.30
[v0.3.29]: https://github.com/atc0005/go-ci/releases/tag/v0.3.29
[v0.3.28]: https://github.com/atc0005/go-ci/releases/tag/v0.3.28
[v0.3.27]: https://github.com/atc0005/go-ci/releases/tag/v0.3.27
[v0.3.26]: https://github.com/atc0005/go-ci/releases/tag/v0.3.26
[v0.3.25]: https://github.com/atc0005/go-ci/releases/tag/v0.3.25
[v0.3.24]: https://github.com/atc0005/go-ci/releases/tag/v0.3.24
[v0.3.23]: https://github.com/atc0005/go-ci/releases/tag/v0.3.23
[v0.3.22]: https://github.com/atc0005/go-ci/releases/tag/v0.3.22
[v0.3.21]: https://github.com/atc0005/go-ci/releases/tag/v0.3.21
[v0.3.20]: https://github.com/atc0005/go-ci/releases/tag/v0.3.20
[v0.3.19]: https://github.com/atc0005/go-ci/releases/tag/v0.3.19
[v0.3.18]: https://github.com/atc0005/go-ci/releases/tag/v0.3.18
[v0.3.17]: https://github.com/atc0005/go-ci/releases/tag/v0.3.17
[v0.3.16]: https://github.com/atc0005/go-ci/releases/tag/v0.3.16
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
