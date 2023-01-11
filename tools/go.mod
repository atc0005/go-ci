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
	golang.org/x/vuln v0.0.0-20221122171214-05fb7250142c

	// staticcheck - intended as a primary linter
	honnef.co/go/tools v0.3.3
)

require (
	github.com/BurntSushi/toml v1.2.1 // indirect
	github.com/dave/dst v0.27.0 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/fatih/color v1.13.0 // indirect
	github.com/fsnotify/fsnotify v1.6.0 // indirect
	github.com/hashicorp/go-version v1.6.0 // indirect
	github.com/hashicorp/hcl v1.0.0 // indirect
	github.com/ldez/gomoddirectives v0.2.3 // indirect
	github.com/magiconair/properties v1.8.6 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.16 // indirect
	github.com/mitchellh/go-homedir v1.1.0 // indirect
	github.com/mitchellh/mapstructure v1.5.0 // indirect
	github.com/pelletier/go-toml v1.9.5 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/sirupsen/logrus v1.9.0 // indirect
	github.com/spf13/afero v1.8.2 // indirect
	github.com/spf13/cast v1.5.0 // indirect
	github.com/spf13/jwalterweatherman v1.1.0 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/spf13/viper v1.13.0 // indirect
	github.com/stretchr/objx v0.5.0 // indirect
	github.com/stretchr/testify v1.8.1 // indirect
	github.com/subosito/gotenv v1.4.1 // indirect
	golang.org/x/exp v0.0.0-20220722155223-a9213eeb770e // indirect
	golang.org/x/mod v0.6.0 // indirect
	golang.org/x/sys v0.1.0 // indirect
	golang.org/x/text v0.3.8 // indirect
	golang.org/x/tools v0.2.1-0.20221108172846-9474ca31d0df // indirect
	gopkg.in/ini.v1 v1.67.0 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)
