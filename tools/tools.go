//go:build tools
// +build tools

package tools

// Manage tool dependencies via go.mod.
//
// https://github.com/golang/go/wiki/Modules#how-can-i-track-tool-dependencies-for-a-module
// https://github.com/golang/go/issues/25922
//
// nolint
import (
	_ "github.com/bitfield/gotestdox/cmd/gotestdox"
	_ "github.com/choffmeister/git-describe-semver"
	_ "github.com/golangci/golangci-lint/v2/pkg/config"
	_ "github.com/goreleaser/nfpm/v2"
	_ "github.com/pelletier/go-toml/v2"
	_ "github.com/tc-hib/go-winres"
	_ "golang.org/x/tools/cmd/deadcode"
	_ "golang.org/x/vuln/cmd/govulncheck"
	_ "honnef.co/go/tools/config"
)
