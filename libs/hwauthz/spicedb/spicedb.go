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

type relation struct {
	Operation    v1.RelationshipUpdate_Operation
	ResourceType string
	ResourceID   string
	Relation     string
	SubjectType  string
	SubjectID    string
}

func newRelation(operation v1.RelationshipUpdate_Operation, resourceType, resourceID, rel, subjectType, subjectID string) relation {
	return relation{
		Operation:    operation,
		ResourceType: resourceType,
		ResourceID:   resourceID,
		Relation:     rel,
		SubjectType:  subjectType,
		SubjectID:    subjectID,
	}
}

func newCreateRelation(resourceType, resourceID, relation, subjectType, subjectID string) relation {
	return newRelation(
		v1.RelationshipUpdate_OPERATION_TOUCH, // TOUCH to be idempotent?
		resourceType,
		resourceID,
		relation,
		subjectType,
		subjectID,
	)
}

func NewDeleteRelation(resourceType, resourceID, relation, subjectType, subjectID string) relation {
	return newRelation(
		v1.RelationshipUpdate_OPERATION_DELETE,
		resourceType,
		resourceID,
		relation,
		subjectType,
		subjectID,
	)
}

func (r *relation) ToSpiceDBRelationship() *v1.Relationship {
	return &v1.Relationship{
		Resource: &v1.ObjectReference{
			ObjectType: r.ResourceType,
			ObjectId:   r.ResourceID,
		},
		Relation: r.Relation,
		Subject: &v1.SubjectReference{
			Object: &v1.ObjectReference{
				ObjectType: r.SubjectType,
				ObjectId:   r.SubjectID,
			},
		},
	}
}

func writeRelation(ctx context.Context, client *authzed.Client, relations []relation) (string, error) {
	req := &v1.WriteRelationshipsRequest{
		Updates: hwutil.Map(relations, func(relation relation) *v1.RelationshipUpdate {
			return &v1.RelationshipUpdate{
				Operation:    relation.Operation,
				Relationship: relation.ToSpiceDBRelationship(),
			}
		}),
	}

	res, err := client.WriteRelationships(ctx, req)
	if err != nil {
		return "", err
	}

	return res.WrittenAt.Token, nil
}

func checkPermission(ctx context.Context, client *authzed.Client, resourceType, resourceID, permission, subjectType, subjectID string) (bool, error) {
	req := &v1.CheckPermissionRequest{
		Resource: &v1.ObjectReference{
			ObjectType: resourceType,
			ObjectId:   resourceID,
		},
		Permission: permission,
		Subject: &v1.SubjectReference{
			Object: &v1.ObjectReference{
				ObjectType: subjectType,
				ObjectId:   subjectID,
			},
		},
	}

	res, err := client.CheckPermission(ctx, req)
	if err != nil {
		return false, err
	}

	hasPermission := res.Permissionship == v1.CheckPermissionResponse_PERMISSIONSHIP_HAS_PERMISSION
	return hasPermission, nil
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
	return writeRelation(ctx, s.client, hwutil.Map(relations, func(relation hwauthz.Relation) relation {
		return newCreateRelation(relation.ResourceType, relation.ResourceID, relation.Relation, relation.SubjectType, relation.SubjectID)
	}))
}

func (s *SpiceDBAuthZ) Delete(ctx context.Context, relations ...hwauthz.Relation) (hwauthz.ConsistencyToken, error) {
	return writeRelation(ctx, s.client, hwutil.Map(relations, func(relation hwauthz.Relation) relation {
		return NewDeleteRelation(relation.ResourceType, relation.ResourceID, relation.Relation, relation.SubjectType, relation.SubjectID)
	}))
}

func (s *SpiceDBAuthZ) Check(ctx context.Context, permission hwauthz.Permission) (bool, error) {
	hasPermission, err := checkPermission(ctx, s.client, permission.ResourceType, permission.ResourceID, permission.Permission, permission.SubjectType, permission.SubjectID)

	if err != nil {
		return false, err
	} else if !hasPermission {
		return false, nil
	}

	return true, nil
}
