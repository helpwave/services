package spicedb

import (
	"context"
	"fmt"
	"hwutil"
	"telemetry"

	v1 "github.com/authzed/authzed-go/proto/authzed/api/v1"
	"github.com/authzed/authzed-go/v1"
	"github.com/authzed/grpcutil"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"hwauthz"
)

func SetupSpiceDbByEnv() *authzed.Client {
	endpoint := hwutil.MustGetEnv("ZED_ENDPOINT")
	token := hwutil.MustGetEnv("ZED_TOKEN")
	return SetupSpiceDb(endpoint, token)
}

func SetupSpiceDb(endpoint, token string) *authzed.Client {
	log := zlog.Logger // global logger

	client, err := authzed.NewClient(
		endpoint,
		grpcutil.WithInsecureBearerToken(token),
		grpc.WithTransportCredentials(insecure.NewCredentials()),
	)
	if err != nil {
		log.Fatal().Err(err).Msg("Could not create SpiceDB client")
	}
	return client
}

// fromObject builds a new v1.ObjectReference from a hwauthz.Object
func fromObject(object hwauthz.Object) *v1.ObjectReference {
	return &v1.ObjectReference{
		ObjectType: object.Type(),
		ObjectId:   object.ID(),
	}
}

// fromRelationship builds a new v1.Relationship from a hwauthz.Relationship
func fromRelationship(relationship hwauthz.Relationship) *v1.Relationship {
	return &v1.Relationship{
		Subject: &v1.SubjectReference{
			Object: fromObject(relationship.Subject),
		},
		Relation: string(relationship.Relation),
		Resource: fromObject(relationship.Resource),
	}
}

// SpiceDBAuthZ implements hwauthz.AuthZ, and can be used to create and query fine-grained permission relations
// See hwauthz.AuthZ for more
type SpiceDBAuthZ struct {
	client *authzed.Client
}

// NewSpiceDBAuthZ constructs a new SpiceDBAuthZ instance
func NewSpiceDBAuthZ() *SpiceDBAuthZ {
	client := SetupSpiceDbByEnv()
	return &SpiceDBAuthZ{client: client}
}

// Write writes relationships, use Create and Delete instead!
func (s *SpiceDBAuthZ) Write(
	ctx context.Context,
	writes []hwauthz.Relationship,
	deletes []hwauthz.Relationship,
) (hwauthz.ConsistencyToken, error) {
	ctx, span, _ := telemetry.StartSpan(ctx, "hwauthz.SpiceDB.Write")
	defer span.End()

	// telemetry.SetSpanAttributes(ctx, relation.SpanAttributeKeyValue()...) TODO

	writeUpdates := hwutil.Map(writes, func(relation hwauthz.Relationship) *v1.RelationshipUpdate {
		return &v1.RelationshipUpdate{
			Operation:    v1.RelationshipUpdate_OPERATION_TOUCH, // TOUCH = create or ignore existing
			Relationship: fromRelationship(relation),
		}
	})

	deleteUpdates := hwutil.Map(deletes, func(relation hwauthz.Relationship) *v1.RelationshipUpdate {
		return &v1.RelationshipUpdate{
			Operation:    v1.RelationshipUpdate_OPERATION_DELETE, // DELETE = delete or ignore missing
			Relationship: fromRelationship(relation),
		}
	})

	req := &v1.WriteRelationshipsRequest{
		Updates: append(writeUpdates, deleteUpdates...),
	}

	res, err := s.client.WriteRelationships(ctx, req)
	if err != nil {
		return "", fmt.Errorf("SpiceDBAuthZ.Write: write relationship failed: %w", err)
	}

	return res.GetWrittenAt().GetToken(), nil
}

func (s *SpiceDBAuthZ) Create(relations ...hwauthz.Relationship) *hwauthz.Tx {
	return hwauthz.NewTx(s, relations, nil)
}

func (s *SpiceDBAuthZ) Delete(relations ...hwauthz.Relationship) *hwauthz.Tx {
	return hwauthz.NewTx(s, nil, relations)
}

func (s *SpiceDBAuthZ) Check(ctx context.Context, permissionCheck hwauthz.PermissionCheck) (bool, error) {
	ctx, span, log := telemetry.StartSpan(ctx, "hwauthz.SpiceDB.Check")
	defer span.End()

	telemetry.SetSpanAttributes(ctx, permissionCheck.SpanAttributeKeyValue()...)

	// convert internal Representation to gRPC body
	req := &v1.CheckPermissionRequest{
		Subject: &v1.SubjectReference{
			Object: fromObject(permissionCheck.Subject),
		},
		Permission: string(permissionCheck.Relation),
		Resource:   fromObject(permissionCheck.Resource),
	}

	// make request
	res, err := s.client.CheckPermission(ctx, req)
	if err != nil {
		log.Error().Err(err).Msg("spicedb: error while checking permissions")
		return false, fmt.Errorf("spicedb: could not check permissionCheck: %w", err)
	}

	// parse result
	hasPermission := res.GetPermissionship() == v1.CheckPermissionResponse_PERMISSIONSHIP_HAS_PERMISSION
	telemetry.SetSpanBool(ctx, "hasPermission", hasPermission)
	return hasPermission, nil
}

// Must implements hwauthz.AuthZ's Must
func (s *SpiceDBAuthZ) Must(ctx context.Context, check hwauthz.PermissionCheck) error {
	granted, err := s.Check(ctx, check)
	return hwauthz.Error(ctx, check, granted, err)
}
