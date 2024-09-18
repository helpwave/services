package stories

import (
	"common"
	"context"
	pb "gen/services/property_svc/v1"
	"github.com/rs/zerolog/log"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"hwutil"
	"sort"
)

type InsecureBearerToken string

func (t InsecureBearerToken) GetRequestMetadata(_ context.Context, _ ...string) (map[string]string, error) {
	return map[string]string{
		"authorization": "Bearer " + string(t),
	}, nil
}
func (t InsecureBearerToken) RequireTransportSecurity() bool {
	return false
}

func getGrpcConn() *grpc.ClientConn {
	// README's fake token
	token := "eyJzdWIiOiIxODE1OTcxMy01ZDRlLTRhZDUtOTRhZC1mYmI2YmIxNDc5ODQiLCJlbWFpbCI6InRlc3RpbmUudGVzdEBoZWxwd2F2ZS5kZSIsIm5hbWUiOiJUZXN0aW5lIFRlc3QiLCJuaWNrbmFtZSI6InRlc3RpbmUudGVzdCIsIm9yZ2FuaXphdGlvbnMiOlsiM2IyNWM2ZjUtNDcwNS00MDc0LTlmYzYtYTUwYzI4ZWJhNDA2Il19"

	conn, err := grpc.NewClient(
		common.ResolveAddrFromEnv(),
		grpc.WithPerRPCCredentials(InsecureBearerToken(token)),
		grpc.WithTransportCredentials(insecure.NewCredentials()),
	)
	if err != nil {
		log.Fatal().Err(err).Msg("could not create grpc conn")
	}
	return conn
}

func propertyServiceClient() pb.PropertyServiceClient {
	return pb.NewPropertyServiceClient(getGrpcConn())
}

func propertyViewServiceClient() pb.PropertyViewsServiceClient {
	return pb.NewPropertyViewsServiceClient(getGrpcConn())
}

func propertyValueServiceClient() pb.PropertyValueServiceClient {
	return pb.NewPropertyValueServiceClient(getGrpcConn())
}

func NamesOf(arr []*pb.GetAttachedPropertyValuesResponse_Value_SelectValueOption) []string {
	strs := hwutil.Map(arr, func(v *pb.GetAttachedPropertyValuesResponse_Value_SelectValueOption) string {
		return v.Name
	})
	sort.Strings(strs)
	return strs
}
