package main

import (
	"common"
	"hwgorm"
	"hwutil"

	zlog "github.com/rs/zerolog/log"
)

const ServiceName = "emergency-room-svc"

// Version is set at compile time
var Version string

func main() {
	common.Setup(ServiceName, Version, true)

	hwgorm.SetupDatabase(
		hwutil.GetEnvOr("POSTGRES_HOST", "localhost"),
		hwutil.GetEnvOr("POSTGRES_USER", "postgres"),
		hwutil.GetEnvOr("POSTGRES_PASSWORD", "postgres"),
		hwutil.GetEnvOr("POSTGRES_DB", "postgres"),
		hwutil.GetEnvOr("POSTGRES_PORT", "5432"),
	)

	addr := ":" + hwutil.GetEnvOr("PORT", "8080")
	service := common.NewDaprService(addr)

	// TODO

	zlog.Info().Str("addr", addr).Msg("starting dapr service")
	common.MustStartService(service)
}

//
// Handlers
//

// TODO
