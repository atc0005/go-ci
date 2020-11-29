module github.com/atc0005/go-ci/tools

go 1.13

require (
	// golangci-lint - used in our containers
	github.com/golangci/golangci-lint v1.33.0

	// staticcheck - used in our containers
	honnef.co/go/tools v0.0.1-2020.1.6

	// httperroryzer - provided as an optional linter
	github.com/orijtech/httperroryzer v0.0.0-20201128061256-9d75de8cdf66
)
