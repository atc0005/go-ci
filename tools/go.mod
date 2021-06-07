module github.com/atc0005/go-ci/tools

go 1.15

require (
	// errwrap - provided as an optional linter
	github.com/fatih/errwrap v1.3.1

	// golangci-lint - used in our containers
	github.com/golangci/golangci-lint v1.40.1

	// httperroryzer - provided as an optional linter
	github.com/orijtech/httperroryzer v0.0.1

	// structslog - provided as an optional linter
	github.com/orijtech/structslop v0.0.6

	// tomll - provided as an optional linter
	github.com/pelletier/go-toml v1.9.2

	// staticcheck - used in our containers
	honnef.co/go/tools v0.2.0

)
