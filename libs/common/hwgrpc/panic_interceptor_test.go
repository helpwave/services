package hwgrpc

import (
	"context"
	"telemetry"
	"testing"

	"github.com/grpc-ecosystem/go-grpc-middleware/v2/testing/testpb"
	"github.com/stretchr/testify/suite"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type recoveryAssertService struct {
	testpb.TestServiceServer
}

const PanicValue = "panic"

func (s *recoveryAssertService) Ping(ctx context.Context, ping *testpb.PingRequest) (*testpb.PingResponse, error) {
	if ping.GetValue() == PanicValue {
		panic("very bad thing happened")
	}
	return s.TestServiceServer.Ping(ctx, ping)
}

func (s *recoveryAssertService) PingList(ping *testpb.PingListRequest, stream testpb.TestService_PingListServer) error {
	if ping.Value == PanicValue {
		panic("very bad thing happened")
	}
	return s.TestServiceServer.PingList(ping, stream)
}

type RecoverySuite struct {
	*testpb.InterceptorTestSuite
}

func TestPanicRecoverInterceptor(t *testing.T) {
	t.Parallel()
	registry := telemetry.SetupMetrics(context.Background(), nil)
	s := &RecoverySuite{
		InterceptorTestSuite: &testpb.InterceptorTestSuite{
			TestService: &recoveryAssertService{TestServiceServer: &testpb.TestPingService{}},
			ServerOpts: []grpc.ServerOption{
				grpc.StreamInterceptor(StreamPanicRecoverInterceptor(registry)),
				grpc.UnaryInterceptor(UnaryPanicRecoverInterceptor(registry)),
			},
		},
	}
	suite.Run(t, s)
}

func (s *RecoverySuite) TestUnary_SuccessfulRequest() {
	_, err := s.Client.Ping(s.SimpleCtx(), testpb.GoodPing)
	s.Require().NoError(err)
}

func (s *RecoverySuite) TestUnary_PanicRequest() {
	_, err := s.Client.Ping(s.SimpleCtx(), &testpb.PingRequest{Value: "panic"})
	s.Require().Error(err)
	st, ok := status.FromError(err)
	s.Require().True(ok, "not a status error")
	s.Require().Equal(codes.Internal, st.Code())
}

func (s *RecoverySuite) TestStream_SuccessfulReceive() {
	stream, err := s.Client.PingList(s.SimpleCtx(), testpb.GoodPingList)
	s.Require().NoError(err, "should not fail on establishing the stream")
	pong, err := stream.Recv()
	s.Require().NoError(err, "no error must occur")
	s.Require().NotNil(pong, "pong must not be nil")
}

func (s *RecoverySuite) TestStream_PanickingReceive() {
	stream, err := s.Client.PingList(s.SimpleCtx(), &testpb.PingListRequest{Value: "panic"})
	s.Require().NoError(err, "should not fail on establishing the stream")
	_, err = stream.Recv()
	s.Require().Error(err)
	st, ok := status.FromError(err)
	s.Require().True(ok, "not a status error")
	s.Require().Equal(codes.Internal, st.Code())
}
