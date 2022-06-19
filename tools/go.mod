module github.com/atc0005/go-ci/tools

// Use the current stable Go version
go 1.18

require (
	// errwrap - provided as an optional linter
	github.com/fatih/errwrap v1.4.0
	// golangci-lint - intended as a primary linter
	github.com/golangci/golangci-lint v1.46.2

	// httperroryzer - provided as an optional linter
	github.com/orijtech/httperroryzer v0.0.1

	// structslog - provided as an optional linter
	github.com/orijtech/structslop v0.0.6

	// tomll - provided as an optional linter
	github.com/pelletier/go-toml/v2 v2.0.1

	// staticcheck - intended as a primary linter
	honnef.co/go/tools v0.3.2

)
