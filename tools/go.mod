module github.com/atc0005/go-ci/tools

go 1.15

require (
	// errwrap - provided as an optional linter
	github.com/fatih/errwrap v1.4.0
	// golangci-lint - intended as a primary linter
	github.com/golangci/golangci-lint v1.45.2

	// httperroryzer - provided as an optional linter
	github.com/orijtech/httperroryzer v0.0.1

	// structslog - provided as an optional linter
	github.com/orijtech/structslop v0.0.6

	// tomll - provided as an optional linter
	github.com/pelletier/go-toml v1.9.4

	// staticcheck - intended as a primary linter
	honnef.co/go/tools v0.2.2

)
