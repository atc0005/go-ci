// +build tools

package tools

// Manage tool dependencies via go.mod.
//
// https://github.com/golang/go/wiki/Modules#how-can-i-track-tool-dependencies-for-a-module
// https://github.com/golang/go/issues/25922
//
// nolint
import (
	_ "github.com/fatih/errwrap"
	_ "github.com/golangci/golangci-lint/pkg/config"
	_ "github.com/orijtech/httperroryzer"
	_ "github.com/orijtech/structslop"
	_ "github.com/pelletier/go-toml"
	_ "honnef.co/go/tools/config"
)
