package authz

import (
	openfga "github.com/openfga/go-sdk"
	"hwutil"
)

func Setup() error {
	configuration, err := openfga.NewConfiguration(openfga.Configuration{
			ApiUrl: hwutil.MustGetEnv("FGA_API_URL"), // required, e.g. https://api.fga.example
	})

	if err != nil {
		return fmt.Errorf("authz setup: could not create new configuration: %w", err)
	}
}
