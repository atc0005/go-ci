module github.com/atc0005/go-ci/tools

// Use the current stable Go version
go 1.19

require (
	// errwrap - provided as an optional linter
	github.com/fatih/errwrap v1.4.0
	// golangci-lint - intended as a primary linter
	github.com/golangci/golangci-lint v1.50.1

	// httperroryzer - provided as an optional linter
	github.com/orijtech/httperroryzer v0.0.1

	// structslog - provided as an optional linter
	github.com/orijtech/structslop v0.0.7

	// tomll - provided as an optional linter
	github.com/pelletier/go-toml/v2 v2.0.6

	// govulncheck - provided as an optional vulnerability analyzer
	// https://pkg.go.dev/golang.org/x/vuln/cmd/govulncheck?tab=versions
	golang.org/x/vuln v0.0.0-20230110180137-6ad3e3d07815

	// staticcheck - intended as a primary linter
	honnef.co/go/tools v0.3.3
)
