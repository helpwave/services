package spicedb

import (
	"context"
	"errors"
	v1 "github.com/authzed/authzed-go/proto/authzed/api/v1"
	"github.com/authzed/authzed-go/v1"
	"github.com/authzed/grpcutil"
	"github.com/google/uuid"
	"github.com/rs/zerolog/log"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"hwauthz"
	"hwutil"
	"io"
	"telemetry"
)

func SetupSpiceDbByEnv() *authzed.Client {
	endpoint := hwutil.MustGetEnv("SPICEDB_ENDPOINT")
	token := hwutil.MustGetEnv("SPICEDB_TOKEN")
	return SetupSpiceDb(endpoint, token)
}

func SetupSpiceDb(endpoint, token string) *authzed.Client {
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

func relationToSpiceDBRelation(relation hwauthz.Relation) *v1.Relationship {
	return &v1.Relationship{
		Resource: &v1.ObjectReference{
			ObjectType: relation.ResourceType,
			ObjectId:   relation.ResourceID,
		},
		Relation: relation.Relation,
		Subject: &v1.SubjectReference{
			Object: &v1.ObjectReference{
				ObjectType: relation.SubjectType,
				ObjectId:   relation.SubjectID,
			},
		},
	}
}

func LookupResources(ctx context.Context, client *authzed.Client, resourceType, permission, subjectType, subjectId string) ([]uuid.UUID, error) {
	req := &v1.LookupResourcesRequest{
		ResourceObjectType: resourceType,
		Permission:         permission,
		Subject: &v1.SubjectReference{
			Object: &v1.ObjectReference{
				ObjectType: subjectType,
				ObjectId:   subjectId,
			},
		},
	}

	lookupResourcesClient, err := client.LookupResources(ctx, req)
	if err != nil {
		return nil, err
	}

	var resourceIds []uuid.UUID

	for {
		res, err := lookupResourcesClient.Recv()

		switch {
		case errors.Is(err, io.EOF):
			return resourceIds, nil
		case err != nil:
			return nil, err
		default:
			resourceId, err := uuid.Parse(res.ResourceObjectId)
			if err != nil {
				return nil, err
			}
			resourceIds = append(resourceIds, resourceId)
		}
	}
}

type SpiceDBAuthZ struct {
	client *authzed.Client
}

func NewSpiceDBAuthZ(client *authzed.Client) *SpiceDBAuthZ {
	return &SpiceDBAuthZ{client: client}
}

func (s *SpiceDBAuthZ) Write(ctx context.Context, relations ...hwauthz.Relation) (hwauthz.ConsistencyToken, error) {
	ctx, span, _ := telemetry.StartSpan(ctx, "hwauthz.SpiceDB.Write")
	defer span.End()

	req := &v1.WriteRelationshipsRequest{
		Updates: hwutil.Map(relations, func(relation hwauthz.Relation) *v1.RelationshipUpdate {
			telemetry.SetSpanAttributes(ctx, relation.ToSpanAttributeKeyValue()...)
			return &v1.RelationshipUpdate{
				Operation:    v1.RelationshipUpdate_OPERATION_TOUCH, // TOUCH to be idempotent?
				Relationship: relationToSpiceDBRelation(relation),
			}
		}),
	}

	res, err := s.client.WriteRelationships(ctx, req)
	if err != nil {
		return "", err
	}

	return res.WrittenAt.Token, nil
}

func (s *SpiceDBAuthZ) Delete(ctx context.Context, relations ...hwauthz.Relation) (hwauthz.ConsistencyToken, error) {
	ctx, span, _ := telemetry.StartSpan(ctx, "hwauthz.SpiceDB.Delete")
	defer span.End()

	req := &v1.WriteRelationshipsRequest{
		Updates: hwutil.Map(relations, func(relation hwauthz.Relation) *v1.RelationshipUpdate {
			telemetry.SetSpanAttributes(ctx, relation.ToSpanAttributeKeyValue()...)
			return &v1.RelationshipUpdate{
				Operation:    v1.RelationshipUpdate_OPERATION_DELETE, // TOUCH to be idempotent?
				Relationship: relationToSpiceDBRelation(relation),
			}
		}),
	}

	res, err := s.client.WriteRelationships(ctx, req)
	if err != nil {
		return "", err
	}

	return res.WrittenAt.Token, nil
}

func (s *SpiceDBAuthZ) Check(ctx context.Context, permission hwauthz.Permission) (bool, error) {
	ctx, span, _ := telemetry.StartSpan(ctx, "hwauthz.SpiceDB.Check")
	defer span.End()

	telemetry.SetSpanAttributes(ctx, permission.ToSpanAttributeKeyValue()...)

	req := &v1.CheckPermissionRequest{
		Resource: &v1.ObjectReference{
			ObjectType: permission.ResourceType,
			ObjectId:   permission.ResourceID,
		},
		Permission: permission.Permission,
		Subject: &v1.SubjectReference{
			Object: &v1.ObjectReference{
				ObjectType: permission.SubjectType,
				ObjectId:   permission.SubjectID,
			},
		},
	}

	res, err := s.client.CheckPermission(ctx, req)
	if err != nil {
		return false, err
	}

	hasPermission := res.Permissionship == v1.CheckPermissionResponse_PERMISSIONSHIP_HAS_PERMISSION
	telemetry.SetSpanBool(ctx, "hasPermission", hasPermission)
	return hasPermission, nil
}
