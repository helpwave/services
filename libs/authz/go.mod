module authz

go 1.23

replace (
	hwlocale => ../hwlocale
	hwutil => ../hwutil
	telemetry => ../telemetry
)

require github.com/openfga/go-sdk v0.5.0
require hwutil v0.0.0
