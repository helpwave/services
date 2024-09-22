package hwtesting

import (
	"common"
	"context"
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
type InsecureBearerToken string

func (t InsecureBearerToken) GetRequestMetadata(_ context.Context, _ ...string) (map[string]string, error) {
	return map[string]string{
		"authorization": "Bearer " + string(t),
	}, nil
}
func (t InsecureBearerToken) RequireTransportSecurity() bool {
	return false
}

// FakeToken is README's fake token
// it should be used for all tests where possible
const FakeToken = "eyJzdWIiOiIxODE1OTcxMy01ZDRlLTRhZDUtOTRhZC1mYmI2YmIxNDc5ODQiLCJlbWFpbCI6InRlc3RpbmUudGVzdEBoZWxwd2F2ZS5kZSIsIm5hbWUiOiJUZXN0aW5lIFRlc3QiLCJuaWNrbmFtZSI6InRlc3RpbmUudGVzdCIsIm9yZ2FuaXphdGlvbnMiOlsiM2IyNWM2ZjUtNDcwNS00MDc0LTlmYzYtYTUwYzI4ZWJhNDA2Il19"

func GetFakeTokenCredentials() InsecureBearerToken {
	return FakeToken
}

func GetGrpcConn() *grpc.ClientConn {
	conn, err := grpc.NewClient(
		common.ResolveAddrFromEnv(),
		grpc.WithPerRPCCredentials(GetFakeTokenCredentials()),
		grpc.WithTransportCredentials(insecure.NewCredentials()),
	)
	if err != nil {
		zlog.Fatal().Err(err).Msg("could not create grpc conn")
	}
	return conn
}
