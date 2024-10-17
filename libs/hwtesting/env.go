package hwtesting

import (
	"os"

	zlog "github.com/rs/zerolog/log"
)

func SetCommonEnv() {
	errs := make([]error, 0)

	errs = append(errs, os.Setenv("MODE", "development"))
	errs = append(errs, os.Setenv("LOG_LEVEL", "trace"))
	errs = append(errs, os.Setenv("INSECURE_FAKE_TOKEN_ENABLE", "true"))
	errs = append(errs, os.Setenv("INSECURE_REDIS_NO_TLS", "true"))
	errs = append(errs, os.Setenv("ORGANIZATION_ID", "3b25c6f5-4705-4074-9fc6-a50c28eba405"))

	for _, err := range errs {
		if err != nil {
			zlog.Fatal().Err(err).Msg("could not set common env")
		}
	}
}
