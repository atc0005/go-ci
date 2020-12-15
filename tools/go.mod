module github.com/atc0005/go-ci/tools

go 1.13

require (

	// errwrap - provided as an optional linter
	github.com/fatih/errwrap v1.2.0
	// golangci-lint - used in our containers
	github.com/golangci/golangci-lint v1.33.0

	// httperroryzer - provided as an optional linter
	github.com/orijtech/httperroryzer v0.0.1

	// structslog - provided as an optional linter
	github.com/orijtech/structslop v0.0.5

	// tomll - provided as an optional linter
	github.com/pelletier/go-toml v1.8.1

	// staticcheck - used in our containers
	honnef.co/go/tools v0.1.0

)
