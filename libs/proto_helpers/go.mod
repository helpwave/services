module proto_helpers

go 1.22

replace (
	gen => ../../gen/go
	hwgorm => ../hwgorm
	hwutil => ../hwutil
	telemetry => ../telemetry
)
