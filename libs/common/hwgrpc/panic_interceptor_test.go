package hwgrpc

import (
	"context"
	"github.com/grpc-ecosystem/go-grpc-middleware/v2/testing/testpb"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
	"github.com/stretchr/testify/suite"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"testing"
)

type recoveryAssertService struct {
	testpb.TestServiceServer
}

func (s *recoveryAssertService) Ping(ctx context.Context, ping *testpb.PingRequest) (*testpb.PingResponse, error) {
	if ping.GetValue() == "panic" {
		panic("very bad thing happened")
	}
	return s.TestServiceServer.Ping(ctx, ping)
}

func (s *recoveryAssertService) PingList(ping *testpb.PingListRequest, stream testpb.TestService_PingListServer) error {
	if ping.Value == "panic" {
		panic("very bad thing happened")
	}
	return s.TestServiceServer.PingList(ping, stream)
}

type RecoverySuite struct {
	*testpb.InterceptorTestSuite
}

func TestPanicRecoverInterceptor(t *testing.T) {
	s := &RecoverySuite{
		InterceptorTestSuite: &testpb.InterceptorTestSuite{
			TestService: &recoveryAssertService{TestServiceServer: &testpb.TestPingService{}},
			ServerOpts: []grpc.ServerOption{
				grpc.StreamInterceptor(StreamPanicRecoverInterceptor()),
				grpc.UnaryInterceptor(UnaryPanicRecoverInterceptor()),
			},
		},
	}
	suite.Run(t, s)
}

func (s *RecoverySuite) TestUnary_SuccessfulRequest() {
	_, err := s.Client.Ping(s.SimpleCtx(), testpb.GoodPing)
	require.NoError(s.T(), err)
}

func (s *RecoverySuite) TestUnary_PanicRequest() {
	_, err := s.Client.Ping(s.SimpleCtx(), &testpb.PingRequest{Value: "panic"})
	require.Error(s.T(), err)
	st, ok := status.FromError(err)
	require.True(s.T(), ok, "not a status error")
	assert.Equal(s.T(), codes.Internal, st.Code())
}

func (s *RecoverySuite) TestStream_SuccessfulReceive() {
	stream, err := s.Client.PingList(s.SimpleCtx(), testpb.GoodPingList)
	require.NoError(s.T(), err, "should not fail on establishing the stream")
	pong, err := stream.Recv()
	require.NoError(s.T(), err, "no error must occur")
	require.NotNil(s.T(), pong, "pong must not be nil")
}

func (s *RecoverySuite) TestStream_PanickingReceive() {
	stream, err := s.Client.PingList(s.SimpleCtx(), &testpb.PingListRequest{Value: "panic"})
	require.NoError(s.T(), err, "should not fail on establishing the stream")
	_, err = stream.Recv()
	require.Error(s.T(), err)
	st, ok := status.FromError(err)
	require.True(s.T(), ok, "not a status error")
	assert.Equal(s.T(), codes.Internal, st.Code())
}
