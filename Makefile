# Copyright 2020 Adam Chalkley
#
# https://github.com/atc0005/go-ci
#
# Licensed under the MIT License. See LICENSE file in the project root for
# full license information.

# References:
#
# https://golang.org/cmd/go/#hdr-Compile_packages_and_dependencies
# https://github.com/mapnik/sphinx-docs/blob/master/Makefile
# https://stackoverflow.com/questions/23843106/how-to-set-child-process-environment-variable-in-makefile
# https://stackoverflow.com/questions/3267145/makefile-execute-another-target
# https://unix.stackexchange.com/questions/124386/using-a-make-rule-to-call-another
# https://www.gnu.org/software/make/manual/html_node/Phony-Targets.html
# https://www.gnu.org/software/make/manual/html_node/Recipe-Syntax.html#Recipe-Syntax
# https://www.gnu.org/software/make/manual/html_node/Special-Variables.html#Special-Variables
# https://danishpraka.sh/2019/12/07/using-makefiles-for-go.html
# https://gist.github.com/subfuzion/0bd969d08fe0d8b5cc4b23c795854a13
# https://stackoverflow.com/questions/10858261/abort-makefile-if-variable-not-set
# https://stackoverflow.com/questions/38801796/makefile-set-if-variable-is-empty
# https://stackoverflow.com/questions/14348741/testing-if-a-file-exists-in-makefile-target-and-quitting-if-not-present
# https://docs.github.com/en/packages/using-github-packages-with-your-projects-ecosystem/configuring-docker-for-use-with-github-packages
# https://stackoverflow.com/questions/38801796/how-to-conditionally-set-makefile-variable-to-something-if-it-is-empty
# https://stackoverflow.com/questions/10292132/get-exit-code-1-on-makefile-if-statement
# https://www.gnu.org/software/make/manual/html_node/Origin-Function.html
# https://www.gnu.org/software/gnu/make/manual/html_node/Flavor-Function.html
# https://stackoverflow.com/questions/4728810/how-to-ensure-makefile-variable-is-set-as-a-prerequisite

SHELL = /bin/bash

# https://gist.github.com/TheHippo/7e4d9ec4b7ed4c0d7a39839e6800cc16
# REPO_VERSION 				= $(shell git describe --always --long --dirty)

# Use https://github.com/choffmeister/git-describe-semver to generate
# semantic version compatible tag values for use as image suffix.
#
# Attempt to use environment variable. This is set within GitHub Actions
# Workflows, but not via local Makefile use. If environment variable is not
# set, use local installation of choffmeister/git-describe-semver tool.
REPO_VERSION 				?= $(shell git-describe-semver)
LAST_COMMIT					= $(shell git rev-parse HEAD)
CREATED_TIME				= $(shell date --rfc-3339=seconds --utc)

#DOCKER_IMAGE_REGISTRY 				= docker.pkg.github.com
DOCKER_IMAGE_REGISTRY 				= registry-1.docker.io
#DOCKER_IMAGE_REGISTRY 				= index.docker.io
GITHUB_IMAGE_REGISTRY				= ghcr.io
DOCKER_IMAGE_REGISTRY_USER 			= atc0005
GITHUB_IMAGE_REGISTRY_USER 			= atc0005
DOCKER_IMAGE_REPO 					= go-ci
GITHUB_PROJECT_REPO					= go-ci

DOCKER_IMAGE_NAME_OLDSTABLE_MIRROR_BUILD		= go-ci-oldstable-mirror-build
DOCKER_IMAGE_NAME_STABLE_MIRROR_BUILD		= go-ci-stable-mirror-build
DOCKER_IMAGE_NAME_MIRROR_BUILD_GO114		= go-ci-mirror-build-go1.14
DOCKER_IMAGE_NAME_MIRROR_BUILD_GO115		= go-ci-mirror-build-go1.15
DOCKER_IMAGE_NAME_MIRROR_BUILD_GO116		= go-ci-mirror-build-go1.16
DOCKER_IMAGE_NAME_MIRROR_BUILD_GO117		= go-ci-mirror-build-go1.17
DOCKER_IMAGE_NAME_MIRROR_BUILD_GO118		= go-ci-mirror-build-go1.18
DOCKER_IMAGE_NAME_MIRROR_BUILD_GO119		= go-ci-mirror-build-go1.19
DOCKER_IMAGE_NAME_MIRROR_BUILD_GO120		= go-ci-mirror-build-go1.20
DOCKER_IMAGE_NAME_MIRROR_BUILD_GO121		= go-ci-mirror-build-go1.21
DOCKER_IMAGE_NAME_MIRROR_BUILD_GO122		= go-ci-mirror-build-go1.22
DOCKER_IMAGE_NAME_MIRROR_BUILD_GO123		= go-ci-mirror-build-go1.23
DOCKER_IMAGE_NAME_MIRROR_BUILD_GO124		= go-ci-mirror-build-go1.24

DOCKER_IMAGE_NAME_OLDSTABLE_CGO-MINGW-W64_BUILDX86		= go-ci-oldstable-cgo-mingw-w64-buildx86
DOCKER_IMAGE_NAME_OLDSTABLE_CGO-MINGW-W64_BUILDX64		= go-ci-oldstable-cgo-mingw-w64-buildx64
DOCKER_IMAGE_NAME_STABLE_CGO-MINGW-W64_BUILDX86			= go-ci-stable-cgo-mingw-w64-buildx86
DOCKER_IMAGE_NAME_STABLE_CGO-MINGW-W64_BUILDX64			= go-ci-stable-cgo-mingw-w64-buildx64
DOCKER_IMAGE_NAME_UNSTABLE_CGO-MINGW-W64_BUILDX86		= go-ci-unstable-cgo-mingw-w64-buildx86
DOCKER_IMAGE_NAME_UNSTABLE_CGO-MINGW-W64_BUILDX64		= go-ci-unstable-cgo-mingw-w64-buildx64

DOCKER_IMAGE_NAME_OLDSTABLE_ALPINE_BUILDX86	= go-ci-oldstable-alpine-buildx86
DOCKER_IMAGE_NAME_OLDSTABLE_ALPINE_BUILDX64	= go-ci-oldstable-alpine-buildx64
DOCKER_IMAGE_NAME_STABLE_ALPINE_BUILDX86	= go-ci-stable-alpine-buildx86
DOCKER_IMAGE_NAME_STABLE_ALPINE_BUILDX64	= go-ci-stable-alpine-buildx64
DOCKER_IMAGE_NAME_UNSTABLE_ALPINE_BUILDX86	= go-ci-unstable-alpine-buildx86
DOCKER_IMAGE_NAME_UNSTABLE_ALPINE_BUILDX64	= go-ci-unstable-alpine-buildx64

DOCKER_IMAGE_NAME_UNSTABLE_BUILD		= go-ci-unstable-build
DOCKER_IMAGE_NAME_OLDSTABLE_BUILD		= go-ci-oldstable-build
DOCKER_IMAGE_NAME_STABLE_BUILD		= go-ci-stable-build

DOCKER_IMAGE_NAME_STABLE 			= go-ci-stable
DOCKER_IMAGE_NAME_OLDSTABLE 		= go-ci-oldstable
DOCKER_IMAGE_NAME_UNSTABLE 			= go-ci-unstable
DOCKER_IMAGE_OWNER_LABEL 			= $(DOCKER_IMAGE_REGISTRY_USER).$(DOCKER_IMAGE_REPO)
DOCKER_IMAGE_REVISION_LABEL			= org.opencontainers.image.revision="$(LAST_COMMIT)"
DOCKER_IMAGE_CREATED_LABEL			= org.opencontainers.image.created="$(CREATED_TIME)"

# https://github.com/hadolint/hadolint
# DOCKER_IMAGE_HADOLINT				= hadolint/hadolint
DOCKER_IMAGE_HADOLINT				= ghcr.io/hadolint/hadolint

.DEFAULT_GOAL := help

  ##########################################################################
  # Targets will not work properly if a file with the same name is ever
  # created in this directory. We explicitly declare our targets to be phony
  # by making them a prerequisite of the special target .PHONY
  ##########################################################################

.PHONY: help
## help: prints this help message
help:
	@echo "Usage:"
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

.PHONY: clean
## clean: prune all dangling Docker images and those with our custom "owner" label
clean:
	@echo "Pruning all Docker images with label $(DOCKER_IMAGE_OWNER_LABEL)"
	@docker image prune --all --force --filter "label=$(DOCKER_IMAGE_OWNER_LABEL)"
	@echo
	@echo "Pruning build cache content older than 24 hours"
	@docker buildx prune --all --force --filter=until=24h
	@echo
	@echo "Pruning all dangling images"
	@docker image prune --force
	@echo
	@ echo "Removing temporary copies of linter config files"
	@rm -vf {oldstable/combined,unstable/combined,stable/combined}/.markdownlint.yml

.PHONY: prune
## prune: prune all Docker images & build cache, go build & modules cache and apt cache
prune: clean
	@echo "Pruning all Docker images"
	@docker image prune -a -f

	@echo "Pruning all build cache contents"
	@docker buildx prune --all --force

	@echo "Pruning go build and modules cache"
	@go clean -cache -modcache

	@echo "Pruning apt cache"
	@sudo apt-get clean

.PHONY: linting
## linting: lint all Dockerfiles
linting:
	@echo "Linting Dockerfiles ..."

	@docker image pull --quiet $(DOCKER_IMAGE_HADOLINT)
	@find $$PWD \
		-name "Dockerfile" \
		-type f \
		-print \
		-exec docker run --pull never --rm -i -v "{}:{}" $(DOCKER_IMAGE_HADOLINT) hadolint {} \;

.PHONY: build-stable
## build-stable: Build stable combined and release images (no Alpine)
build-stable: pre-build

	@echo "Building $(DOCKER_IMAGE_NAME_STABLE) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		stable/combined/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):latest \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):latest \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_STABLE) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_STABLE)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_STABLE) release"

	@echo "Building $(DOCKER_IMAGE_NAME_STABLE_BUILD) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		stable/build/release/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_BUILD) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_BUILD)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_STABLE_BUILD) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_STABLE_BUILD)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_STABLE_BUILD) release"

.PHONY: build-oldstable-alpine-buildx64
## build-oldstable-alpine-buildx64: Build oldstable Alpine x64 image
build-oldstable-alpine-buildx64: pre-build

	@echo "Building $(DOCKER_IMAGE_NAME_OLDSTABLE_ALPINE_BUILDX64) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		oldstable/build/alpine-x64/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_ALPINE_BUILDX64) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_ALPINE_BUILDX64)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_ALPINE_BUILDX64) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_ALPINE_BUILDX64)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_OLDSTABLE_ALPINE_BUILDX64) release"

.PHONY: build-oldstable-alpine-buildx86
## build-oldstable-alpine-buildx86: Build oldstable Alpine x86 image
build-oldstable-alpine-buildx86: pre-build

	@echo "Building $(DOCKER_IMAGE_NAME_OLDSTABLE_ALPINE_BUILDX86) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/386" \
		oldstable/build/alpine-x86/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_ALPINE_BUILDX86) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_ALPINE_BUILDX86)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_ALPINE_BUILDX86) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_ALPINE_BUILDX86)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_OLDSTABLE_ALPINE_BUILDX86) release"

.PHONY: build-stable-alpine-buildx64
## build-stable-alpine-buildx64: Build stable Alpine x64 image
build-stable-alpine-buildx64: pre-build

	@echo "Building $(DOCKER_IMAGE_NAME_STABLE_ALPINE_BUILDX64) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		stable/build/alpine-x64/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_ALPINE_BUILDX64) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_ALPINE_BUILDX64)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_STABLE_ALPINE_BUILDX64) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_STABLE_ALPINE_BUILDX64)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_STABLE_ALPINE_BUILDX64) release"

.PHONY: build-stable-alpine-buildx86
## build-stable-alpine-buildx86: Build stable Alpine x86 image
build-stable-alpine-buildx86: pre-build

	@echo "Building $(DOCKER_IMAGE_NAME_STABLE_ALPINE_BUILDX86) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/386" \
		stable/build/alpine-x86/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_ALPINE_BUILDX86) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_ALPINE_BUILDX86)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_STABLE_ALPINE_BUILDX86) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_STABLE_ALPINE_BUILDX86)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_STABLE_ALPINE_BUILDX86) release"

.PHONY: build-unstable-alpine-buildx64
## build-unstable-alpine-buildx64: Build unstable Alpine x64 image
build-unstable-alpine-buildx64: pre-build

	@echo "Building $(DOCKER_IMAGE_NAME_UNSTABLE_ALPINE_BUILDX64) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		unstable/build/alpine-x64/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_ALPINE_BUILDX64) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_ALPINE_BUILDX64)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_ALPINE_BUILDX64) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_ALPINE_BUILDX64)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_UNSTABLE_ALPINE_BUILDX64) release"

.PHONY: build-unstable-alpine-buildx86
## build-unstable-alpine-buildx86: Build unstable Alpine x86 image
build-unstable-alpine-buildx86: pre-build

	@echo "Building $(DOCKER_IMAGE_NAME_UNSTABLE_ALPINE_BUILDX86) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/386" \
		unstable/build/alpine-x86/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_ALPINE_BUILDX86) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_ALPINE_BUILDX86)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_ALPINE_BUILDX86) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_ALPINE_BUILDX86)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_UNSTABLE_ALPINE_BUILDX86) release"

.PHONY: oldstable-cgo-mingw-w64-buildx64
## oldstable-cgo-mingw-w64-buildx64: Build cgo-mingw-w64 oldstable image
oldstable-cgo-mingw-w64-buildx64: pre-build

	@echo "Building $(DOCKER_IMAGE_NAME_OLDSTABLE_CGO-MINGW-W64_BUILDX64) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		oldstable/build/cgo-mingw-w64-x64/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_CGO-MINGW-W64_BUILDX64) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_CGO-MINGW-W64_BUILDX64)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_CGO-MINGW-W64_BUILDX64) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_CGO-MINGW-W64_BUILDX64)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_OLDSTABLE_CGO-MINGW-W64_BUILDX64) release"

.PHONY: oldstable-cgo-mingw-w64-buildx86
## oldstable-cgo-mingw-w64-buildx86: Build cgo-mingw-w64 oldstable image
oldstable-cgo-mingw-w64-buildx86: pre-build

	@echo "Building $(DOCKER_IMAGE_NAME_OLDSTABLE_CGO-MINGW-W64_BUILDX86) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/386" \
		oldstable/build/cgo-mingw-w64-x86/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_CGO-MINGW-W64_BUILDX86) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_CGO-MINGW-W64_BUILDX86)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_CGO-MINGW-W64_BUILDX86) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_CGO-MINGW-W64_BUILDX86)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_OLDSTABLE_CGO-MINGW-W64_BUILDX86) release"

.PHONY: stable-cgo-mingw-w64-buildx64
## stable-cgo-mingw-w64-buildx64: Build cgo-mingw-w64 stable image
stable-cgo-mingw-w64-buildx64: pre-build

	@echo "Building $(DOCKER_IMAGE_NAME_STABLE_CGO-MINGW-W64_BUILDX64) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		stable/build/cgo-mingw-w64-x64/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_CGO-MINGW-W64_BUILDX64) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_CGO-MINGW-W64_BUILDX64)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_STABLE_CGO-MINGW-W64_BUILDX64) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_STABLE_CGO-MINGW-W64_BUILDX64)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_STABLE_CGO-MINGW-W64_BUILDX64) release"

.PHONY: stable-cgo-mingw-w64-buildx86
## stable-cgo-mingw-w64-buildx86: Build cgo-mingw-w64 stable image
stable-cgo-mingw-w64-buildx86: pre-build

	@echo "Building $(DOCKER_IMAGE_NAME_STABLE_CGO-MINGW-W64_BUILDX86) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/386" \
		stable/build/cgo-mingw-w64-x86/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_CGO-MINGW-W64_BUILDX86) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_CGO-MINGW-W64_BUILDX86)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_STABLE_CGO-MINGW-W64_BUILDX86) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_STABLE_CGO-MINGW-W64_BUILDX86)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_STABLE_CGO-MINGW-W64_BUILDX86) release"

.PHONY: unstable-cgo-mingw-w64-buildx64
## unstable-cgo-mingw-w64-buildx64: Build cgo-mingw-w64 unstable image
unstable-cgo-mingw-w64-buildx64: pre-build

	@echo "Building $(DOCKER_IMAGE_NAME_UNSTABLE_CGO-MINGW-W64_BUILDX64) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		unstable/build/cgo-mingw-w64-x64/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_CGO-MINGW-W64_BUILDX64) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_CGO-MINGW-W64_BUILDX64)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_CGO-MINGW-W64_BUILDX64) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_CGO-MINGW-W64_BUILDX64)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_UNSTABLE_CGO-MINGW-W64_BUILDX64) release"

.PHONY: unstable-cgo-mingw-w64-buildx86
## unstable-cgo-mingw-w64-buildx86: Build cgo-mingw-w64 unstable image
unstable-cgo-mingw-w64-buildx86: pre-build

	@echo "Building $(DOCKER_IMAGE_NAME_UNSTABLE_CGO-MINGW-W64_BUILDX86) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/386" \
		unstable/build/cgo-mingw-w64-x86/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_CGO-MINGW-W64_BUILDX86) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_CGO-MINGW-W64_BUILDX86)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_CGO-MINGW-W64_BUILDX86) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_CGO-MINGW-W64_BUILDX86)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_UNSTABLE_CGO-MINGW-W64_BUILDX86) release"

.PHONY: legacy-mirror-build
## legacy-mirror-build: Build legacy mirror images
legacy-mirror-build: pre-build

	@echo "Building legacy-mirror-build images"

	@echo "Building $(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO114) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		mirror/1.14/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO114) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO114)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO114) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO114)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO114) release"

	@echo "Building $(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO115) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		mirror/1.15/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO115) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO115)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO115) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO115)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO115) release"

	@echo "Building $(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO116) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		mirror/1.16/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO116) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO116)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO116) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO116)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO116) release"

	@echo "Building $(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO117) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		mirror/1.17/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO117) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO117)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO117) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO117)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO117) release"

	@echo "Building $(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO118) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		mirror/1.18/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO118) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO118)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO118) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO118)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO118) release"

	@echo "Building $(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO119) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		mirror/1.19/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO119) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO119)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO119) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO119)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO119) release"

	@echo "Building $(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO120) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		mirror/1.20/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO120) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO120)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO120) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO120)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO120) release"

	@echo "Building $(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO121) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		mirror/1.21/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO121) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO121)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO121) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO121)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO121) release"

	@echo "Building $(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO122) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		mirror/1.22/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO122) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO122)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO122) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO122)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO122) release"

	@docker image ls --filter "label=$(DOCKER_IMAGE_OWNER_LABEL)"

	@echo "Completed build of legacy-mirror-build images"

.PHONY: stable-mirror-build
## stable-mirror-build: Build stable mirror images
stable-mirror-build: pre-build

	@echo "Building stable-mirror-build images"

	@echo "Building $(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO123) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		mirror/1.23/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_MIRROR_BUILD) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_MIRROR_BUILD)-$(REPO_VERSION) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO123) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO123)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_MIRROR_BUILD) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_MIRROR_BUILD)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO123) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO123)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO123) release"

	@echo "Building $(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO124) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		mirror/1.24/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_MIRROR_BUILD) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_MIRROR_BUILD)-$(REPO_VERSION) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO124) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO124)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_STABLE_MIRROR_BUILD) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_STABLE_MIRROR_BUILD)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO124) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO124)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO124) release"

	@echo "Completed build of stable-mirror-build images"

.PHONY: build-oldstable
## build-oldstable: Build oldstable combined and build images (no Alpine)
build-oldstable: pre-build

	@echo "Building $(DOCKER_IMAGE_NAME_OLDSTABLE) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		oldstable/combined/ \
		-t  $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE) \
		-t  $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE)-$(REPO_VERSION) \
		-t  $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE) \
		-t  $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_OLDSTABLE) release"

	@echo "Building $(DOCKER_IMAGE_NAME_OLDSTABLE_BUILD) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		oldstable/build/release/ \
		-t  $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_BUILD) \
		-t  $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_BUILD)-$(REPO_VERSION) \
		-t  $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_BUILD) \
		-t  $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_BUILD)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_OLDSTABLE_BUILD) release"


.PHONY: build-unstable
## build-unstable: Build unstable combined and release images
build-unstable: pre-build

	@echo "Building $(DOCKER_IMAGE_NAME_UNSTABLE) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		unstable/combined/ \
		-t  $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE) \
		-t  $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE)-$(REPO_VERSION) \
		-t  $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE) \
		-t  $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_UNSTABLE) release"

	@echo "Building $(DOCKER_IMAGE_NAME_UNSTABLE_BUILD) release"
	docker image build \
		--pull \
		--no-cache \
		--platform "linux/amd64" \
		unstable/build/release/ \
		-t  $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_BUILD) \
		-t  $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_BUILD)-$(REPO_VERSION) \
		-t  $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_BUILD) \
		-t  $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_BUILD)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_UNSTABLE_BUILD) release"

.PHONY: pre-build
## pre-build: pre-build tasks
pre-build:

	@echo "Building Docker container images"

	@echo "Bundle linter config files to provide baseline default settings"
	@for version in {oldstable/combined,unstable/combined,stable/combined}; do cp -vf .markdownlint.yml $$version/; done

	@echo "List Docker version"
	@docker version

.PHONY: build-mirror-images
## build-mirror-images: build all mirror Docker container images (legacy included)
build-mirror-images: pre-build legacy-mirror-build stable-mirror-build

.PHONY: build-alpine-images
## build-alpine-images: build all Alpine Docker container images
build-alpine-images: pre-build build-oldstable-alpine-buildx64 build-oldstable-alpine-buildx86 build-stable-alpine-buildx64 build-stable-alpine-buildx86 build-unstable-alpine-buildx64 build-unstable-alpine-buildx86

.PHONY: build-mingw-images
## build-mingw-images: build all mingw-w64 Docker container images
build-mingw-images: pre-build oldstable-cgo-mingw-w64-buildx64 oldstable-cgo-mingw-w64-buildx86 stable-cgo-mingw-w64-buildx64 stable-cgo-mingw-w64-buildx86 unstable-cgo-mingw-w64-buildx64 unstable-cgo-mingw-w64-buildx86

.PHONY: build-standard-images
## build-standard-images: build all standard Docker container images
build-standard-images: pre-build build-stable build-oldstable build-unstable

.PHONY: build
## build: build all current Docker container images (legacy included)
build: pre-build build-mirror-images build-alpine-images build-mingw-images build-standard-images

	@echo "Remove temporary copies of bundled files"
	@rm -vf {oldstable/combined,unstable/combined,stable/combined}/.markdownlint.yml

	@echo "Finished building Docker container images"

	@docker image ls --filter "label=$(DOCKER_IMAGE_OWNER_LABEL)"

.PHONY: upload-mirror-images
## upload-mirror-images: uploads mirror Docker images
upload-mirror-images:

	@set -e; \
		if [[ "$(DH_TOKEN)" == "" ]]; \
		then echo "ERROR: DH_TOKEN is not set!"; \
		false; \
		else echo "OK: DH_TOKEN is set"; \
		fi; \
		if [[ "$(GHCR_TOKEN)" == "" ]] ; \
		then echo "ERROR: GHCR_TOKEN is not set!"; \
		false; \
		else echo "OK: GHCR_TOKEN is set"; \
		fi

	@echo "Uploading mirror Docker container images to $(GITHUB_IMAGE_REGISTRY) ..."
	@echo $(GHCR_TOKEN) | docker login $(GITHUB_IMAGE_REGISTRY) --username atc0005 --password-stdin

	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_MIRROR_BUILD)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_MIRROR_BUILD)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_MIRROR_BUILD)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_MIRROR_BUILD)-$(REPO_VERSION)

	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO114)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO114)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO115)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO115)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO116)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO116)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO117)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO117)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO118)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO118)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO119)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO119)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO120)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO120)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO121)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO121)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO122)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO122)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO123)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO123)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO124)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO124)-$(REPO_VERSION)

	@echo "Completed mirror Docker container image uploads to $(GITHUB_IMAGE_REGISTRY)"

	@echo "Uploading mirror Docker container images to $(DOCKER_IMAGE_REGISTRY) ..."
	@echo $(DH_TOKEN) | docker login $(DOCKER_IMAGE_REGISTRY) --username atc0005 --password-stdin

	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_MIRROR_BUILD)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_MIRROR_BUILD)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_MIRROR_BUILD)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_MIRROR_BUILD)-$(REPO_VERSION)

	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO114)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO114)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO115)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO115)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO116)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO116)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO117)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO117)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO118)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO118)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO119)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO119)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO120)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO120)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO121)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO121)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO122)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO122)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO123)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO123)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO124)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO124)-$(REPO_VERSION)

	@echo "Completed mirror Docker container image uploads to $(DOCKER_IMAGE_REGISTRY)"

.PHONY: upload-alpine-images
## upload-alpine-images: uploads Alpine Docker images
upload-alpine-images:

	@set -e; \
		if [[ "$(DH_TOKEN)" == "" ]]; \
		then echo "ERROR: DH_TOKEN is not set!"; \
		false; \
		else echo "OK: DH_TOKEN is set"; \
		fi; \
		if [[ "$(GHCR_TOKEN)" == "" ]] ; \
		then echo "ERROR: GHCR_TOKEN is not set!"; \
		false; \
		else echo "OK: GHCR_TOKEN is set"; \
		fi

	@echo "Uploading Alpine Docker container images to $(GITHUB_IMAGE_REGISTRY) ..."
	@echo $(GHCR_TOKEN) | docker login $(GITHUB_IMAGE_REGISTRY) --username atc0005 --password-stdin

	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_ALPINE_BUILDX86)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_ALPINE_BUILDX86)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_ALPINE_BUILDX64)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_ALPINE_BUILDX64)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_ALPINE_BUILDX86)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_ALPINE_BUILDX86)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_ALPINE_BUILDX64)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_ALPINE_BUILDX64)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_ALPINE_BUILDX86)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_ALPINE_BUILDX86)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_ALPINE_BUILDX64)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_ALPINE_BUILDX64)-$(REPO_VERSION)

	@echo "Completed Alpine Docker container image uploads to $(GITHUB_IMAGE_REGISTRY)"

	@echo "Uploading Alpine Docker container images to $(DOCKER_IMAGE_REGISTRY) ..."
	@echo $(DH_TOKEN) | docker login $(DOCKER_IMAGE_REGISTRY) --username atc0005 --password-stdin

	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_ALPINE_BUILDX86)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_ALPINE_BUILDX86)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_ALPINE_BUILDX64)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_ALPINE_BUILDX64)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_ALPINE_BUILDX86)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_ALPINE_BUILDX86)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_ALPINE_BUILDX64)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_ALPINE_BUILDX64)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_ALPINE_BUILDX86)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_ALPINE_BUILDX86)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_ALPINE_BUILDX64)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_ALPINE_BUILDX64)-$(REPO_VERSION)

	@echo "Completed Alpine Docker container image uploads to $(DOCKER_IMAGE_REGISTRY)"

.PHONY: upload-mingw-images
## upload-mingw-images: uploads mingw-w64 Docker images
upload-mingw-images:

	@set -e; \
		if [[ "$(DH_TOKEN)" == "" ]]; \
		then echo "ERROR: DH_TOKEN is not set!"; \
		false; \
		else echo "OK: DH_TOKEN is set"; \
		fi; \
		if [[ "$(GHCR_TOKEN)" == "" ]] ; \
		then echo "ERROR: GHCR_TOKEN is not set!"; \
		false; \
		else echo "OK: GHCR_TOKEN is set"; \
		fi

	@echo "Uploading mingw-w64 Docker container images to $(GITHUB_IMAGE_REGISTRY) ..."
	@echo $(GHCR_TOKEN) | docker login $(GITHUB_IMAGE_REGISTRY) --username atc0005 --password-stdin

	@docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_CGO-MINGW-W64_BUILDX86)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_CGO-MINGW-W64_BUILDX86)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_CGO-MINGW-W64_BUILDX64)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_CGO-MINGW-W64_BUILDX64)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_CGO-MINGW-W64_BUILDX86)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_CGO-MINGW-W64_BUILDX86)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_CGO-MINGW-W64_BUILDX64)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_CGO-MINGW-W64_BUILDX64)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_CGO-MINGW-W64_BUILDX86)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_CGO-MINGW-W64_BUILDX86)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_CGO-MINGW-W64_BUILDX64)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_CGO-MINGW-W64_BUILDX64)-$(REPO_VERSION)

	@echo "Completed mingw-w64 Docker container image uploads to $(GITHUB_IMAGE_REGISTRY)"

	@echo "Uploading Docker container images to $(DOCKER_IMAGE_REGISTRY) ..."
	@echo $(DH_TOKEN) | docker login $(DOCKER_IMAGE_REGISTRY) --username atc0005 --password-stdin

	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_CGO-MINGW-W64_BUILDX86)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_CGO-MINGW-W64_BUILDX86)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_CGO-MINGW-W64_BUILDX64)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_CGO-MINGW-W64_BUILDX64)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_CGO-MINGW-W64_BUILDX86)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_CGO-MINGW-W64_BUILDX86)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_CGO-MINGW-W64_BUILDX64)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_CGO-MINGW-W64_BUILDX64)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_CGO-MINGW-W64_BUILDX86)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_CGO-MINGW-W64_BUILDX86)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_CGO-MINGW-W64_BUILDX64)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_CGO-MINGW-W64_BUILDX64)-$(REPO_VERSION)

	@echo "Completed mingw-w64 Docker container image uploads to $(DOCKER_IMAGE_REGISTRY)"

.PHONY: upload-standard-images
## upload-standard-images: uploads Docker images
upload-standard-images:

	@set -e; \
		if [[ "$(DH_TOKEN)" == "" ]]; \
		then echo "ERROR: DH_TOKEN is not set!"; \
		false; \
		else echo "OK: DH_TOKEN is set"; \
		fi; \
		if [[ "$(GHCR_TOKEN)" == "" ]] ; \
		then echo "ERROR: GHCR_TOKEN is not set!"; \
		false; \
		else echo "OK: GHCR_TOKEN is set"; \
		fi

	@echo "Uploading standard Docker container images to $(GITHUB_IMAGE_REGISTRY) ..."
	@echo $(GHCR_TOKEN) | docker login $(GITHUB_IMAGE_REGISTRY) --username atc0005 --password-stdin

	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_BUILD)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_BUILD)-$(REPO_VERSION)

	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE)-$(REPO_VERSION)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_BUILD)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_BUILD)-$(REPO_VERSION)

	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_BUILD)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_BUILD)-$(REPO_VERSION)

# Upload this image last so that GitHub displays it (and uses its metadata) as the suggested image.
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):latest
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE)
	@docker push $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE)-$(REPO_VERSION)

	@echo "Completed standard Docker container image uploads to $(GITHUB_IMAGE_REGISTRY)"


	@echo "Uploading standard Docker container images to $(DOCKER_IMAGE_REGISTRY) ..."
	@echo $(DH_TOKEN) | docker login $(DOCKER_IMAGE_REGISTRY) --username atc0005 --password-stdin

	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_BUILD)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_BUILD)-$(REPO_VERSION)

	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE)-$(REPO_VERSION)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_BUILD)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_BUILD)-$(REPO_VERSION)

	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_BUILD)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_BUILD)-$(REPO_VERSION)

# Upload this image last. GitHub displays the last image uploaded as the suggested one, so adopting that practice for these uploads
# also on the offchance that it has a useful effect (now or in the future).
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):latest
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE)
	@docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE)-$(REPO_VERSION)

	@echo "Completed standard Docker container image uploads to $(DOCKER_IMAGE_REGISTRY)"

.PHONY: upload
## upload: uploads all Docker images
upload: upload-mirror-images upload-alpine-images upload-mingw-images upload-standard-images

.PHONY: push
## push: alias for upload
push: upload

.PHONY: all
# https://stackoverflow.com/questions/3267145/makefile-execute-another-target
## all: generates and uploads fresh Docker images to one or more repos
all: build upload
	@echo "Completed all tasks ..."
