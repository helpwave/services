package hwtesting

import (
	"common"
	"context"
	"encoding/base64"
	"encoding/json"
	"fmt"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
)

// InsecureBearerToken implements credentials.PerRPCCredentials
// to be used in grpc.WithPerRPCCredentials:
//
//	conn, err := grpc.NewClient(
//		common.ResolveAddrFromEnv(),
//		grpc.WithPerRPCCredentials(hwtesting.InsecureBearerToken(token)),
//		grpc.WithTransportCredentials(insecure.NewCredentials()),
//	)
//
// Also see GetFakeTokenCredentials
type InsecureBearerToken struct {
	bearer string
	orgMD  string
}

func (t InsecureBearerToken) GetRequestMetadata(_ context.Context, _ ...string) (map[string]string, error) {
	return map[string]string{
		"authorization": "Bearer " + t.bearer,
	}, nil
}
func (t InsecureBearerToken) RequireTransportSecurity() bool {
	return false
}

const FakeTokenUser = "18159713-5d4e-4ad5-94ad-fbb6bb147984"

func GetFakeTokenCredentials(subOverride, orgOverride string) InsecureBearerToken {
	sub := FakeTokenUser
	if subOverride != "" {
		sub = subOverride
	}

	org := "3b25c6f5-4705-4074-9fc6-a50c28eba406"
	if orgOverride != "" {
		org = orgOverride
	}

	// README's fake token
	m := map[string]interface{}{
		"sub":                sub,
		"email":              "max.mustermann@helpwave.de",
		"email_verified":     true,
		"name":               "Max Mustermann",
		"preferred_username": "max.mustermann",
		"given_name":         "Max",
		"family_name":        "Mustermann",
		"organization": map[string]interface{}{
			"id":   org,
			"name": "helpwave test",
		},
	}

	bytes, err := json.Marshal(m)
	if err != nil {
		panic(fmt.Errorf("GetFakeTokenCredentials failed: %w", err))
	}
	dist := make([]byte, base64.StdEncoding.EncodedLen(len(bytes)))
	base64.StdEncoding.Encode(dist, bytes)
	return InsecureBearerToken{
		bearer: string(dist),
		orgMD:  orgOverride,
	}
}

func GetGrpcConn(subOverride, orgOverride string) *grpc.ClientConn {
	conn, err := grpc.NewClient(
		common.ResolveAddrFromEnv(),
		grpc.WithPerRPCCredentials(GetFakeTokenCredentials(subOverride, orgOverride)),
		grpc.WithTransportCredentials(insecure.NewCredentials()),
	)
	if err != nil {
		zlog.Fatal().Err(err).Msg("could not create grpc conn")
	}
	return conn
}
