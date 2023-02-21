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

SHELL = /bin/bash

# https://gist.github.com/TheHippo/7e4d9ec4b7ed4c0d7a39839e6800cc16
REPO_VERSION 				= $(shell git describe --always --long --dirty)
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

DOCKER_IMAGE_NAME_CGO-MINGW-W64_BUILD		= go-ci-stable-cgo-mingw-w64-build
DOCKER_IMAGE_NAME_ALPINE_BUILDX86	= go-ci-stable-alpine-buildx86
DOCKER_IMAGE_NAME_ALPINE_BUILDX64	= go-ci-stable-alpine-buildx64

DOCKER_IMAGE_NAME_UNSTABLE_BUILD		= go-ci-unstable-build
DOCKER_IMAGE_NAME_OLDSTABLE_BUILD		= go-ci-oldstable-build
DOCKER_IMAGE_NAME_STABLE_BUILD		= go-ci-stable-build

DOCKER_IMAGE_NAME_STABLE 			= go-ci-stable
DOCKER_IMAGE_NAME_OLDSTABLE 		= go-ci-oldstable
DOCKER_IMAGE_NAME_UNSTABLE 			= go-ci-unstable
DOCKER_IMAGE_OWNER_LABEL 			= $(DOCKER_IMAGE_REGISTRY_USER).$(DOCKER_IMAGE_REPO)
DOCKER_IMAGE_REVISION_LABEL			= org.opencontainers.image.revision="$(LAST_COMMIT)"
DOCKER_IMAGE_CREATED_LABEL			= org.opencontainers.image.created="$(CREATED_TIME)"

DOCKER_FILES 						= oldstable/Dockerfile \
										stable/build/alpine-x64/Dockerfile \
										stable/build/alpine-x86/Dockerfile \
										stable/build/cgo-mingw-w64/Dockerfile \
										stable/combined/Dockerfile \
										unstable/Dockerfile \


DOCKER_IMAGE_REGISTRY_TOKEN_FILE	= ~/DH_TOKEN.txt
GITHUB_IMAGE_REGISTRY_TOKEN_FILE	= ~/GH_TOKEN.txt

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
	@sudo docker image prune --all --force --filter "label=$(DOCKER_IMAGE_OWNER_LABEL)"
	@echo
	@echo "Pruning build cache content older than 24 hours"
	@sudo docker buildx prune --all --force --filter=until=24h
	@echo
	@echo "Pruning all dangling images"
	@sudo docker image prune --force
	@echo
	@ echo "Removing temporary copies of linter config files"
	@rm -vf {oldstable/combined,unstable/combined,stable/combined}/.markdownlint.yml

.PHONY: prune
## prune: prune all Docker images & build cache, go build & modules cache and apt cache
prune: clean
	@echo "Pruning all Docker images"
	@sudo docker image prune -a -f

	@echo "Pruning all build cache contents"
	@sudo docker buildx prune --all --force

	@echo "Pruning go build and modules cache"
	@go clean -cache -modcache

	@echo "Pruning apt cache"
	@sudo apt-get clean

.PHONY: linting
## linting: lint all Dockerfiles
linting:
	@echo "Linting Dockerfiles ..."

	@for target in $(DOCKER_FILES); do \
		echo -e "\n* $$target" && \
		docker image pull --quiet $(DOCKER_IMAGE_HADOLINT) && \
		docker run --pull never --rm -i -v "$$PWD/$$target:$$PWD/$$target" $(DOCKER_IMAGE_HADOLINT) hadolint $$PWD/$$target; \
	done

.PHONY: build-stable
## build-stable: Build stable combined and release images
build-stable: pre-build

	@echo "Building $(DOCKER_IMAGE_NAME_STABLE) release"
	sudo docker image build \
		--pull \
		--no-cache \
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
	sudo docker image build \
		--pull \
		--no-cache \
		stable/build/release/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_BUILD) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_BUILD)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_STABLE_BUILD) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_STABLE_BUILD)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of $(DOCKER_IMAGE_NAME_STABLE_BUILD) release"

.PHONY: build-stable-alpine-buildx64
## build-stable-alpine-buildx64: Build Alpine x64 image
build-stable-alpine-buildx64: pre-build

	@echo "Building stable-alpine-buildx64 release"
	sudo docker image build \
		--pull \
		--no-cache \
		stable/build/alpine-x64/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX64) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX64)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX64) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX64)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of stable-alpine-buildx64 release"

.PHONY: build-stable-alpine-buildx86
## build-stable-alpine-buildx86: Build Alpine x86 image
build-stable-alpine-buildx86: pre-build

	@echo "Building stable-alpine-buildx86 release"
	sudo docker image build \
		--pull \
		--no-cache \
		stable/build/alpine-x86/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX86) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX86)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX86) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX86)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of stable-alpine-buildx86 release"

.PHONY: stable-cgo-mingw-w64-build
## stable-cgo-mingw-w64-build: Build cgo-mingw-w64 image
stable-cgo-mingw-w64-build: pre-build

	@echo "Building stable-cgo-mingw-w64-build release"
	sudo docker image build \
		--pull \
		--no-cache \
		stable/build/cgo-mingw-w64/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_CGO-MINGW-W64_BUILD) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_CGO-MINGW-W64_BUILD)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_CGO-MINGW-W64_BUILD) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_CGO-MINGW-W64_BUILD)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of stable-cgo-mingw-w64-build release"

.PHONY: legacy-mirror-build
## legacy-mirror-build: Build legacy mirror images
legacy-mirror-build: pre-build

	@echo "Building legacy-mirror-build images"

	sudo docker image build \
		--pull \
		--no-cache \
		mirror/1.14/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO114) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO114)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO114) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO114)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL)

	sudo docker image build \
		--pull \
		--no-cache \
		mirror/1.15/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO115) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO115)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO115) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO115)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL)

	sudo docker image build \
		--pull \
		--no-cache \
		mirror/1.16/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO116) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO116)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO116) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO116)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL)
	sudo docker image build \
		--pull \
		--no-cache \
		mirror/1.17/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO117) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO117)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO117) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO117)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL)

	sudo docker image build \
		--pull \
		--no-cache \
		mirror/1.18/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO118) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO118)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO118) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO118)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL)

	@sudo docker image ls --filter "label=$(DOCKER_IMAGE_OWNER_LABEL)"

	@echo "Completed build of legacy-mirror-build images"

.PHONY: stable-mirror-build
## stable-mirror-build: Build stable mirror images
stable-mirror-build: pre-build

	@echo "Building stable-mirror-build images"

	sudo docker image build \
		--pull \
		--no-cache \
		mirror/1.19/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_MIRROR_BUILD) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_MIRROR_BUILD)-$(REPO_VERSION) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO119) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO119)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_MIRROR_BUILD) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_MIRROR_BUILD)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO119) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO119)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)

	sudo docker image build \
		--pull \
		--no-cache \
		mirror/1.20/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_MIRROR_BUILD) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_MIRROR_BUILD)-$(REPO_VERSION) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO120) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO120)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_STABLE_MIRROR_BUILD) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_STABLE_MIRROR_BUILD)-$(REPO_VERSION) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO120) \
		-t $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO120)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)

	@echo "Completed build of stable-mirror-build images"

.PHONY: build-oldstable
## build-oldstable: Build oldstable combined and build images
build-oldstable: pre-build

	@echo "Building $(DOCKER_IMAGE_NAME_OLDSTABLE) release"
	sudo docker image build \
		--pull \
		--no-cache \
		oldstable/combined/ \
		-t  $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE) \
		-t  $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE)-$(REPO_VERSION) \
		-t  $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE) \
		-t  $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of$(DOCKER_IMAGE_NAME_OLDSTABLE) release"

	@echo "Building $(DOCKER_IMAGE_NAME_OLDSTABLE_BUILD) release"
	sudo docker image build \
		--pull \
		--no-cache \
		oldstable/build/release/ \
		-t  $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_BUILD) \
		-t  $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_BUILD)-$(REPO_VERSION) \
		-t  $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_BUILD) \
		-t  $(GITHUB_IMAGE_REGISTRY)/$(GITHUB_IMAGE_REGISTRY_USER)/$(GITHUB_PROJECT_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_BUILD)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_OWNER_LABEL) \
		--label=$(DOCKER_IMAGE_REVISION_LABEL) \
		--label=$(DOCKER_IMAGE_CREATED_LABEL)
	@echo "Completed build of$(DOCKER_IMAGE_NAME_OLDSTABLE_BUILD) release"


.PHONY: build-unstable
## build-unstable: Build unstable combined and release images
build-unstable: pre-build

	@echo "Building $(DOCKER_IMAGE_NAME_UNSTABLE) release"
	sudo docker image build \
		--pull \
		--no-cache \
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
	sudo docker image build \
		--pull \
		--no-cache \
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


.PHONY: build
## build: build all current Docker container images (legacy not included)
build: pre-build build-stable build-stable-alpine-buildx64 build-stable-alpine-buildx86 stable-cgo-mingw-w64-build legacy-mirror-build stable-mirror-build build-oldstable build-unstable

	@echo "Remove temporary copies of bundled files"
	@rm -vf {oldstable/combined,unstable/combined,stable/combined}/.markdownlint.yml

	@echo "Finished building Docker container images"

	@sudo docker image ls --filter "label=$(DOCKER_IMAGE_OWNER_LABEL)"


.PHONY: all
# https://stackoverflow.com/questions/3267145/makefile-execute-another-target
## all: generates and uploads fresh Docker images to one or more repos
all: build upload
	@echo "Completed all tasks ..."

.PHONY: push
## push: alias for upload
push: upload

.PHONY: upload
## upload: uploads Docker images to one or more repos
upload:
# ifeq (,$(wildcard $(DOCKER_IMAGE_REGISTRY_TOKEN_FILE)))
#     $(error GitHub token file does not exist!)
# endif

	@echo "Uploading Docker container images to $(GITHUB_IMAGE_REGISTRY) ..."
	@cat $(GITHUB_IMAGE_REGISTRY_TOKEN_FILE) | sudo docker login $(GITHUB_IMAGE_REGISTRY) --username atc0005 --password-stdin

	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX86)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX86)-$(REPO_VERSION)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX64)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX64)-$(REPO_VERSION)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_CGO-MINGW-W64_BUILD)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_CGO-MINGW-W64_BUILD)-$(REPO_VERSION)

	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_MIRROR_BUILD)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_MIRROR_BUILD)-$(REPO_VERSION)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_MIRROR_BUILD)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_MIRROR_BUILD)-$(REPO_VERSION)

	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO114)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO114)-$(REPO_VERSION)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO115)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO115)-$(REPO_VERSION)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO116)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO116)-$(REPO_VERSION)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO117)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO117)-$(REPO_VERSION)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO118)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO118)-$(REPO_VERSION)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO119)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO119)-$(REPO_VERSION)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO120)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO120)-$(REPO_VERSION)

	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE)-$(REPO_VERSION)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE)-$(REPO_VERSION)

	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_BUILD)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_BUILD)-$(REPO_VERSION)

# Upload this image last so that GitHub displays it (and uses its metadata) as the suggested image.
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):latest
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE)
	@sudo docker push $(GITHUB_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE)-$(REPO_VERSION)

	@echo "Completed Docker container image uploads to $(GITHUB_IMAGE_REGISTRY)"


	@echo "Uploading Docker container images to $(DOCKER_IMAGE_REGISTRY) ..."
	@cat $(DOCKER_IMAGE_REGISTRY_TOKEN_FILE) | sudo docker login $(DOCKER_IMAGE_REGISTRY) --username atc0005 --password-stdin

	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX86)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX86)-$(REPO_VERSION)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX64)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX64)-$(REPO_VERSION)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_CGO-MINGW-W64_BUILD)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_CGO-MINGW-W64_BUILD)-$(REPO_VERSION)

	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_MIRROR_BUILD)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_MIRROR_BUILD)-$(REPO_VERSION)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_MIRROR_BUILD)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_MIRROR_BUILD)-$(REPO_VERSION)

	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO114)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO114)-$(REPO_VERSION)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO115)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO115)-$(REPO_VERSION)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO116)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO116)-$(REPO_VERSION)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO117)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO117)-$(REPO_VERSION)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO118)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO118)-$(REPO_VERSION)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO119)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO119)-$(REPO_VERSION)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO120)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_MIRROR_BUILD_GO120)-$(REPO_VERSION)

	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE)-$(REPO_VERSION)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_BUILD)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE_BUILD)-$(REPO_VERSION)

	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE)-$(REPO_VERSION)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_BUILD)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE_BUILD)-$(REPO_VERSION)

	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_BUILD)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_BUILD)-$(REPO_VERSION)

# Upload this image last. GitHub displays the last image uploaded as the suggested one, so adopting that practice for these uploads
# also on the offchance that it has a useful effect (now or in the future).
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):latest
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE)-$(REPO_VERSION)

	@echo "Completed Docker container image uploads to $(DOCKER_IMAGE_REGISTRY)"
