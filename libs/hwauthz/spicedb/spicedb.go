package spicedb

import (
	"common/hwerr"
	"context"
	"errors"
	"fmt"
	"hwutil"
	"io"
	"telemetry"

	v1 "github.com/authzed/authzed-go/proto/authzed/api/v1"
	"github.com/authzed/authzed-go/v1"
	"github.com/authzed/grpcutil"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"hwauthz"
)

func fullyConsistent() *v1.Consistency {
	// for now requests are fully_consistent, replace this if possible with "At Least As Fresh"-strategy
	// read: https://authzed.com/docs/spicedb/concepts/consistency
	// issue: #869
	return &v1.Consistency{
		Requirement: &v1.Consistency_FullyConsistent{
			FullyConsistent: true,
		},
	}
}

func SetupSpiceDBByEnv() *authzed.Client {
	endpoint := hwutil.MustGetEnv("ZED_ENDPOINT")
	token := hwutil.MustGetEnv("ZED_TOKEN")
	return SetupSpiceDB(endpoint, token)
}

func SetupSpiceDB(endpoint, token string) *authzed.Client {
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
		ObjectType: string(object.Type()),
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
	client := SetupSpiceDBByEnv()
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
		Permission:  string(permissionCheck.Relation),
		Resource:    fromObject(permissionCheck.Resource),
		Consistency: fullyConsistent(),
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

// BulkCheck queries permission relations for many checks.
// The evaluated truthfulness of a check at index i in the checks slice is returned at index i in the yielded slice.
func (s *SpiceDBAuthZ) BulkCheck(ctx context.Context, checks []hwauthz.PermissionCheck) ([]bool, error) {
	ctx, span, log := telemetry.StartSpan(ctx, "hwauthz.SpiceDB.BulkCheck")
	defer span.End()

	if len(checks) == 0 {
		return make([]bool, 0), nil
	}

	// CheckBulk does not guarantee order invariance,
	// thus we need to prepare to put things back into their place
	// we map the (sub, rel, res) tuple of a check to its index in the checks slice
	// as we might encounter duplicates this needs to be a slice
	inxs := make(map[string][]int, len(checks))

	keyPattern := "%s:%s-%s-%s:%s"

	items := make([]*v1.CheckBulkPermissionsRequestItem, 0, len(checks))
	for i, check := range checks {
		sub := check.Subject
		resc := check.Resource

		// convert internal Representation to gRPC body
		items = append(items, &v1.CheckBulkPermissionsRequestItem{
			Subject: &v1.SubjectReference{
				Object: fromObject(sub),
			},
			Permission: string(check.Relation),
			Resource:   fromObject(resc),
			Context:    nil,
		})

		// store index in map
		key := fmt.Sprintf(keyPattern, sub.Type(), sub.ID(), check.Relation, resc.Type(), resc.ID())

		// if there is a slice already, append to it (there is a duplicate check)
		if inxs[key] != nil {
			inxs[key] = append(inxs[key], i)
		} else {
			inxs[key] = []int{i}
		}
	}

	// make request
	res, err := s.client.CheckBulkPermissions(ctx, &v1.CheckBulkPermissionsRequest{
		Consistency: fullyConsistent(),
		Items:       items,
	})
	if err != nil {
		log.Error().Err(err).Msg("spicedb: error while checking permissions")
		return nil, fmt.Errorf("spicedb: could not bulk-check permissions: %w", err)
	}

	result := make([]bool, len(checks))

	// reduce responses to a simple bool, and get them in order again

	for _, pair := range res.GetPairs() {
		req := pair.GetRequest()
		subj := req.GetSubject().GetObject()
		resc := req.GetResource()

		if pberr := pair.GetError(); pberr != nil {
			err := fmt.Errorf("spicedb: error while checking permissions: %w", hwerr.NewProtoStatusError(pberr))
			log.Error().Err(err).Msg("spicedb: error while checking permissions")
			return nil, err
		}

		key := fmt.Sprintf(keyPattern,
			subj.GetObjectType(), subj.GetObjectId(), req.GetPermission(), resc.GetObjectType(), resc.GetObjectId())

		permissionship := pair.GetItem().GetPermissionship()
		hasPermission := permissionship == v1.CheckPermissionResponse_PERMISSIONSHIP_HAS_PERMISSION

		for _, ix := range inxs[key] {
			log.Info().Int("ix", ix).Bool("hasPermission", hasPermission).Str("key", key).Send()
			result[ix] = hasPermission
		}
	}

	return result, nil
}

// Must implements hwauthz.AuthZ's Must
func (s *SpiceDBAuthZ) Must(ctx context.Context, check hwauthz.PermissionCheck) error {
	granted, err := s.Check(ctx, check)
	return hwauthz.Error(ctx, check, granted, err)
}

func (s *SpiceDBAuthZ) BulkMust(ctx context.Context, checks ...hwauthz.PermissionCheck) error {
	if len(checks) == 0 {
		return nil
	}
	if len(checks) == 1 {
		return s.Must(ctx, checks[0])
	}
	results, err := s.BulkCheck(ctx, checks)
	if err != nil {
		return err
	}
	for i, b := range results {
		if !b {
			return hwauthz.StatusErrorPermissionDenied(ctx, checks[i])
		}
	}
	return nil
}

func (s *SpiceDBAuthZ) LookupResources(
	ctx context.Context, subject hwauthz.Object, relation hwauthz.Relation, resourceType hwauthz.ObjectType,
) ([]string, error) {
	// open stream
	stream, err := s.client.LookupResources(ctx, &v1.LookupResourcesRequest{
		Consistency:        nil,
		ResourceObjectType: string(resourceType),
		Permission:         string(relation),
		Subject: &v1.SubjectReference{
			Object: fromObject(subject),
		},
		Context: nil,
		// TODO: pagination
		OptionalLimit:  0,
		OptionalCursor: nil,
	})
	if err != nil {
		return nil, fmt.Errorf("spicedb: could not lookup resources: %w", err)
	}

	resources := make([]string, 0)

	// collect it until EOF
	for {
		res, err := stream.Recv()
		if errors.Is(err, io.EOF) {
			break
		} else if err != nil {
			return nil, fmt.Errorf("spicedb: could not lookup resources: %w", err)
		}

		resources = append(resources, res.GetResourceObjectId())
	}

	return resources, nil
}

func (s *SpiceDBAuthZ) deleteDirectRelationships(ctx context.Context, object hwauthz.Object, isSubject bool) error {
	var filter *v1.RelationshipFilter
	if isSubject {
		filter = &v1.RelationshipFilter{
			OptionalSubjectFilter: &v1.SubjectFilter{
				SubjectType:       string(object.Type()),
				OptionalSubjectId: object.ID(),
			},
		}
	} else {
		filter = &v1.RelationshipFilter{
			ResourceType:       string(object.Type()),
			OptionalResourceId: object.ID(),
		}
	}

	_, err := s.client.DeleteRelationships(ctx, &v1.DeleteRelationshipsRequest{
		RelationshipFilter: filter,
	})
	if err != nil {
		return fmt.Errorf("spicedb: could not delete resources: %w", err)
	}

	return nil
}

func (s *SpiceDBAuthZ) DeleteObject(ctx context.Context, object hwauthz.Object) error {
	// delete all direct relationships where object is resource
	err := s.deleteDirectRelationships(ctx, object, false)
	if err != nil {
		return fmt.Errorf("could not lookup related subjects: %w", err)
	}

	// delete all direct relationships where object is subject
	err = s.deleteDirectRelationships(ctx, object, true)
	if err != nil {
		return fmt.Errorf("could not lookup related resources: %w", err)
	}

	return nil
}
