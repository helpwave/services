package test

import (
	"context"
	"encoding/base64"
	"encoding/json"
	"log"
	"net"
	"testing"

	"github.com/stretchr/testify/assert"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/grpc/metadata"
	"google.golang.org/grpc/status"
	"google.golang.org/grpc/test/bufconn"
)

// StartGRPCServer starts an existing grpc server on an in-memory interface.
// Must be closed using closer.
func StartGRPCServer(ctx context.Context, grpcServer *grpc.Server) (conn *grpc.ClientConn, closer func()) {
	// Create Listener
	buffer := 1024 * 1024
	listener := bufconn.Listen(buffer)
	go func() {
		if err := grpcServer.Serve(listener); err != nil {
			log.Fatal(err)
		}
	}()

	// Start Connection
	conn, err := grpc.NewClient("passthrough://"+listener.Addr().String(),
		grpc.WithContextDialer(func(ctx context.Context, s string) (net.Conn, error) {
			return listener.Dial()
		}),
		grpc.WithTransportCredentials(insecure.NewCredentials()),
	)
	if err != nil {
		log.Fatal(err)
	}

	closer = func() {
		err := listener.Close()
		if err != nil {
			log.Fatal(err)
		}
		grpcServer.Stop()
	}

	return conn, closer
}

// AssertStatusError asserts, that the error, is a status error with the provided code.
func AssertStatusError(t *testing.T, err error, code codes.Code, msg string) {
	t.Helper()
	if assert.Error(t, err, msg) {
		sE, ok := status.FromError(err)
		assert.True(t, ok, "not a status error")
		assert.Equal(t, sE.Code(), code)
	}
}

// AuthenticatedUserClaim is a basic claim, can be used to construct a fake-token
func AuthenticatedUserClaim(userID string) map[string]interface{} {
	return map[string]interface{}{
		"sub":                userID,
		"email":              "testine.test@helpwave.de",
		"name":               "Testine Test",
		"preferred_username": "testine.test",
		"organization": map[string]interface{}{
			"id":   "3b25c6f5-4705-4074-9fc6-a50c28eba406",
			"name": "helpwave test",
		},
	}
}

// AuthenticatedUserMetadata gives you a ready-to use grpc metadata object
func AuthenticatedUserMetadata(userID string) metadata.MD {
	claims := AuthenticatedUserClaim(userID)
	claimsJson, err := json.Marshal(claims)
	if err != nil {
		log.Fatal(err)
	}
	fakeToken := base64.StdEncoding.EncodeToString(claimsJson)

	return metadata.New(map[string]string{
		"Authorization": "Bearer " + fakeToken,
	})
}

func AuthenticatedUserContext(ctx context.Context, userId string) context.Context {
	md := AuthenticatedUserMetadata(userId)
	if existing, existed := metadata.FromOutgoingContext(ctx); existed {
		md = metadata.Join(md, existing)
	}
	return metadata.NewOutgoingContext(ctx, md)
}

// AuthenticatedUserInterceptor overwrites the incoming metadata, such that AuthenticatedUserMetadata is used.
// It can be used to test authenticated endpoints
func AuthenticatedUserInterceptor(userID string) grpc.UnaryServerInterceptor {
	return func(
		ctx context.Context,
		req interface{},
		info *grpc.UnaryServerInfo,
		next grpc.UnaryHandler,
	) (interface{}, error) {
		md := AuthenticatedUserMetadata(userID)
		if existing, existed := metadata.FromIncomingContext(ctx); existed {
			md = metadata.Join(md, existing)
		}
		ctx = metadata.NewIncomingContext(ctx, md)
		return next(ctx, req)
	}
}
