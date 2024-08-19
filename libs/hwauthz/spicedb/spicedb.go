package spicedb

import (
	"context"
	"errors"
	"fmt"
	v1 "github.com/authzed/authzed-go/proto/authzed/api/v1"
	"github.com/authzed/authzed-go/v1"
	"github.com/authzed/grpcutil"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
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

// fromObject buils a new v1.ObjectReference from a hwauthz.Object
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
		Relation: relationship.Relation,
		Resource: fromObject(relationship.Resource),
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

// TODO: explain that it implements AuthZ
type SpiceDBAuthZ struct {
	client *authzed.Client
}

func NewSpiceDBAuthZ() *SpiceDBAuthZ {
	client := SetupSpiceDbByEnv()
	return &SpiceDBAuthZ{client: client}
}

func (s *SpiceDBAuthZ) write(ctx context.Context, delete bool, relations ...hwauthz.Relationship) (hwauthz.ConsistencyToken, error) {
	ctx, span, _ := telemetry.StartSpan(ctx, "hwauthz.SpiceDB.Write")
	defer span.End()

	operation := v1.RelationshipUpdate_OPERATION_TOUCH // TOUCH = Create or Ignore existing
	if delete {
		operation = v1.RelationshipUpdate_OPERATION_DELETE // DELETE = Delete or Ignore if missing
		span.SetName("hwauthz.SpiceDB.Delete")
	}

	req := &v1.WriteRelationshipsRequest{
		Updates: hwutil.Map(relations, func(relation hwauthz.Relationship) *v1.RelationshipUpdate {
			telemetry.SetSpanAttributes(ctx, relation.SpanAttributeKeyValue()...)
			return &v1.RelationshipUpdate{
				Operation:    operation,
				Relationship: fromRelationship(relation),
			}
		}),
	}

	res, err := s.client.WriteRelationships(ctx, req)
	if err != nil {
		return "", err
	}

	return res.WrittenAt.Token, nil
}

func (s *SpiceDBAuthZ) Write(ctx context.Context, relations ...hwauthz.Relationship) (hwauthz.ConsistencyToken, error) {
	return s.write(ctx, false, relations...)
}

func (s *SpiceDBAuthZ) Delete(ctx context.Context, relations ...hwauthz.Relationship) (hwauthz.ConsistencyToken, error) {
	return s.write(ctx, true, relations...)
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
		Permission: permissionCheck.Relation,
		Resource:   fromObject(permissionCheck.Resource),
	}

	// make request
	res, err := s.client.CheckPermission(ctx, req)
	if err != nil {
		log.Error().Err(err).Msg("spicedb: error while checking permissions")
		return false, fmt.Errorf("spicedb: could not check permissionCheck: %w", err)
	}

	// parse result
	hasPermission := res.Permissionship == v1.CheckPermissionResponse_PERMISSIONSHIP_HAS_PERMISSION
	telemetry.SetSpanBool(ctx, "hasPermission", hasPermission)
	return hasPermission, nil
}
