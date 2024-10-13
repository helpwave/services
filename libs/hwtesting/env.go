package hwtesting

import (
	zlog "github.com/rs/zerolog/log"
	"os"
)

func SetCommonEnv() {
	errs := make([]error, 0)

	errs = append(errs, os.Setenv("MODE", "development"))
	errs = append(errs, os.Setenv("LOG_LEVEL", "trace"))
	errs = append(errs, os.Setenv("INSECURE_FAKE_TOKEN_ENABLE", "true"))
	errs = append(errs, os.Setenv("INSECURE_REDIS_NO_TLS", "true"))

	for _, err := range errs {
		if err != nil {
			zlog.Fatal().Err(err).Msg("could not set common env")
		}
	}
}
