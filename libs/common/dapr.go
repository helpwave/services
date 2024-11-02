package common

import (
	"context"
	"fmt"
	"github.com/dapr/dapr/pkg/resiliency"
	daprLogger "github.com/dapr/kit/logger"
	"github.com/dapr/kit/retry"
	"google.golang.org/protobuf/encoding/protojson"
	"google.golang.org/protobuf/runtime/protoimpl"
	"telemetry"
	"time"

	daprc "github.com/dapr/go-sdk/client"
	daprcmn "github.com/dapr/go-sdk/service/common"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/metadata"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/proto"

	pbEventsV1 "gen/libs/events/v1"
)

const (
	DaprPubSubName = "redis"
)

func MustAddTopicEventHandler(svc daprcmn.Service, sub *daprcmn.Subscription, handler daprcmn.TopicEventHandler) {
	if err := svc.AddTopicEventHandler(sub, handler); err != nil {
		zlog.Fatal().
			Err(err).
			Interface("sub", sub).
			Msg("failed to add topic event handler")
	}
}

// PublishMessage encodes a proto message and publishes it to the topic
// It already takes care of logging, so you may ignore the returned error
// Deprecated: Use PublicProtoPubSubMessage instead
func PublishMessage(ctx context.Context, c daprc.Client, pubsub string, topic string, message proto.Message) error {
	bytes, err := proto.Marshal(message)
	if err != nil {
		zlog.Ctx(ctx).
			Error().
			Err(err).
			Msgf("could not marshal message for topic %s", topic)
		return fmt.Errorf("PublishMessage: could not marshal message: %w", err)
	}

	err = c.PublishEvent(ctx, pubsub, topic, bytes)
	if err != nil {
		zlog.Ctx(ctx).
			Error().
			Err(err).
			Msgf("could not publish message for topic %s", topic)
		return fmt.Errorf("PublishMessage: could not publish message: %w", err)
	}
	return nil
}

func getTopicNameFromProtoMessage(message proto.Message, protoTopicName *protoimpl.ExtensionInfo) string {
	if protoTopicName == nil {
		protoTopicName = pbEventsV1.E_TopicName
	}

	messageTopicName := proto.GetExtension(message.ProtoReflect().Descriptor().Options(), protoTopicName).(string)
	if messageTopicName == "" {
		panic(fmt.Sprintf(
			"Cannot reflect topciName of protoMessage. The passed protoMessage '%s' does not has the message extension of '%s'.",
			message.ProtoReflect().Descriptor().FullName(),
			protoTopicName.TypeDescriptor().FullName(),
		))
	}

	return messageTopicName
}

func PublishProtoPubSubMessage(ctx context.Context, message proto.Message) error {
	ctx, span, _ := telemetry.StartSpan(ctx, "commo.PublishProtoPubSubMessage")
	defer span.End()

	topicName := getTopicNameFromProtoMessage(message, nil)

	telemetry.SetSpanStr(ctx, "pubSubName", DaprPubSubName)
	telemetry.SetSpanStr(ctx, "topicName", topicName)

	bytes, err := protojson.Marshal(message)
	if err != nil {
		span.RecordError(err)
		return fmt.Errorf("could not marshal message for topic %s: %w", topicName, err)
	}

	rc := &retry.Config{
		Policy:     retry.PolicyConstant,
		Duration:   500 * time.Millisecond,
		MaxRetries: 3,
	}

	policyDefinition := resiliency.NewPolicyDefinition(
		daprLogger.NewLogger("common.PublishProtoPubSubMessage"),
		"common.PublishProtoPubSubMessage",
		500*time.Millisecond,
		rc,
		nil,
	)

	resiliencyRunner := resiliency.NewRunner[any](ctx, policyDefinition)

	if _, err := resiliencyRunner(func(ctx context.Context) (any, error) {
		span.AddEvent("publish event to Dapr")
		return nil, MustNewDaprGRPCClient().PublishEvent(ctx, DaprPubSubName, topicName, bytes)
	}); err != nil {
		span.RecordError(err)
		return fmt.Errorf("could not publish message with topic %s to pubsub %s", topicName, DaprPubSubName)
	}

	/*

		if err := MustNewDaprGRPCClient().PublishEvent(ctx, DaprPubSubName, topicName, bytes); err != nil {
			span.RecordError(err)
			return fmt.Errorf("could not publish message with topic %s to pubsub %s", topicName, DaprPubSubName)
		}

	*/

	return nil
}

// MustNewDaprGRPCClient tries to create an Dapr Client (GRPCClient)
// by respecting the Dapr injected environment variables like DAPR_GRPC_PORT
func MustNewDaprGRPCClient() *daprc.GRPCClient {
	client, err := daprc.NewClient()
	if err != nil {
		zlog.Fatal().Err(err).Msg("could not create Dapr client")
	}

	daprClient, ok := client.(*daprc.GRPCClient)
	if !ok {
		zlog.Fatal().Msg("Dapr client does not implement GRPCClient")
	}

	return daprClient
}

// PrepCtxForSvcToSvcCall returns a context that can be used with Dapr specific service to service gRPC calls
func PrepCtxForSvcToSvcCall(ctx context.Context, targetDaprAppId string) (context.Context, context.CancelFunc, error) {
	md, ok := metadata.FromIncomingContext(ctx)
	if !ok {
		return nil, nil, status.Errorf(codes.Internal, "No incoming metadata in context")
	}
	outgoingCtx := metadata.NewOutgoingContext(ctx, md)

	timeout := time.Second * 3
	ctx, cancel := context.WithTimeout(outgoingCtx, timeout)
	ctx = metadata.AppendToOutgoingContext(ctx, "dapr-app-id", targetDaprAppId)

	return ctx, cancel, nil
}
