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

#DOCKER_IMAGE_REGISTRY 				= docker.pkg.github.com
DOCKER_IMAGE_REGISTRY 				= registry-1.docker.io
#DOCKER_IMAGE_REGISTRY 				= index.docker.io
DOCKER_IMAGE_REGISTRY_USER 			= atc0005
DOCKER_IMAGE_REPO 					= go-ci
DOCKER_IMAGE_NAME_DEBIAN_BUILD		= go-ci-stable-debian-build
DOCKER_IMAGE_NAME_ALPINE_BUILDX86	= go-ci-stable-alpine-buildx86
DOCKER_IMAGE_NAME_ALPINE_BUILDX64	= go-ci-stable-alpine-buildx64
DOCKER_IMAGE_NAME_STABLE 			= go-ci-stable
DOCKER_IMAGE_NAME_STABLE_LINT_ONLY	= go-ci-lint-only
DOCKER_IMAGE_NAME_OLDSTABLE 		= go-ci-oldstable
DOCKER_IMAGE_NAME_UNSTABLE 			= go-ci-unstable
DOCKER_IMAGE_LABEL 					= $(DOCKER_IMAGE_REGISTRY_USER).$(DOCKER_IMAGE_REPO)

DOCKER_IMAGE_REGISTRY_TOKEN_FILE	= ~/GH_TOKEN.txt

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

.PHONE: clean
## clean: prune all Docker containers with our labels
clean:
	@echo "Pruning all Docker images with label $(DOCKER_IMAGE_LABEL)"
	@sudo docker image prune --all --force --filter "label=$(DOCKER_IMAGE_LABEL)"

.PHONE: build
## build: build all Docker containers
build:
	@echo "Building Docker containers"

	@echo "Bundle linter config files to provide baseline default settings"
	@for version in {oldstable,unstable}; do cp -vf .markdownlint.yml $$version/; done
	@for version in {stable/linting,stable/combined,stable/build/alpine-x64,stable/build/alpine-x86,stable/build/debian}; do cp -vf .markdownlint.yml $$version/; done

	# unstable container has its own copy of this file
	@cp -vf .golangci.yml oldstable/
	@for version in {stable/linting,stable/combined,stable/build/alpine-x64,stable/build/alpine-x86,stable/build/debian}; do cp -vf .golangci.yml $$version/; done

	@echo "Building stable release"
	sudo docker build \
		--no-cache \
		stable/combined/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):latest \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_LABEL)

	@echo "Building stable-alpine-build.x64 release"
	sudo docker build \
		--no-cache \
		stable/build/alpine-x64/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX64) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX64)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_LABEL)

	@echo "Building stable-alpine-build x86 release"
	sudo docker build \
		--no-cache \
		stable/build/alpine-x86/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX86) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX86)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_LABEL)

	@echo "Building stable-debian-build release"
	sudo docker build \
		--no-cache \
		stable/build/debian/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_DEBIAN_BUILD) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_DEBIAN_BUILD)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_LABEL)

	@echo "Building stable linting-only release"
	sudo docker build \
		--no-cache \
		stable/linting/ \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_LINT_ONLY) \
		-t $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_LINT_ONLY)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_LABEL)

	@echo "Building oldstable release"
	sudo docker build \
		--no-cache \
		oldstable/ \
		-t  $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE) \
		-t  $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_LABEL)

	@echo "Building unstable release"
	sudo docker build \
		--no-cache \
		unstable/ \
		-t  $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE) \
		-t  $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE)-$(REPO_VERSION) \
		--label=$(DOCKER_IMAGE_LABEL)

	@echo "Remove temporary copies of bundled files"
	@rm -vf {stable,oldstable,unstable}/.markdownlint.yml

	# unstable container has its own copy of this file
	@rm -vf {stable,oldstable}/.golangci.yml

	@echo "Finished building containers"

	@sudo docker image ls --filter "label=$(DOCKER_IMAGE_LABEL)"


.PHONY: all
# https://stackoverflow.com/questions/3267145/makefile-execute-another-target
## all: generates fresh containers and uploads to Docker image repo
all: build upload
	@echo "Completed all tasks ..."

.PHONY: push
## push: alias for upload
push: upload

.PHONY: upload
## upload: uploads containers to Docker image repo
upload:
# ifeq (,$(wildcard $(DOCKER_IMAGE_REGISTRY_TOKEN_FILE)))
#     $(error GitHub token file does not exist!)
# endif

	@echo "Uploading container images to $(DOCKER_IMAGE_REGISTRY) ..."

	#@cat $(DOCKER_IMAGE_REGISTRY_TOKEN_FILE) | sudo docker login $(DOCKER_IMAGE_REGISTRY) -u atc0005 --password-stdin

	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):latest
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE)-$(REPO_VERSION)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX86)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX86)-$(REPO_VERSION)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX64)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_ALPINE_BUILDX64)-$(REPO_VERSION)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_DEBIAN_BUILD)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_DEBIAN_BUILD)-$(REPO_VERSION)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_LINT_ONLY)
	@sudo docker push $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_STABLE_LINT_ONLY)-$(REPO_VERSION)
	@sudo docker push  $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE)
	@sudo docker push  $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_OLDSTABLE)-$(REPO_VERSION)
	@sudo docker push  $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE)
	@sudo docker push  $(DOCKER_IMAGE_REGISTRY)/$(DOCKER_IMAGE_REGISTRY_USER)/$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_NAME_UNSTABLE)-$(REPO_VERSION)

	@echo "Completed container uploads"
