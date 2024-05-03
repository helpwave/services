package hwauthz

import (
	"common"
	"common/locale"
	"context"
	"errors"
	"fmt"
	"go.opentelemetry.io/otel/attribute"
	"golang.org/x/sync/errgroup"
	"google.golang.org/grpc/codes"
	"telemetry"
)

type ConsistencyToken = string

type Permission struct {
	ResourceType string
	ResourceID   string
	Permission   string
	SubjectType  string
	SubjectID    string
}

func NewPermission(resourceType, resourceID, permission, subjectType, subjectID string) Permission {
	return Permission{
		ResourceType: resourceType,
		ResourceID:   resourceID,
		Permission:   permission,
		SubjectType:  subjectType,
		SubjectID:    subjectID,
	}
}

func (p *Permission) ToSpanAttributeKeyValue() []attribute.KeyValue {
	return []attribute.KeyValue{
		attribute.String("resourceType", p.ResourceType),
		attribute.String("resourceID", p.ResourceID),
		attribute.String("permission", p.Permission),
		attribute.String("subjectType", p.SubjectType),
		attribute.String("subjectID", p.SubjectID),
	}
}

type Relation struct {
	ResourceType    string
	ResourceID      string
	Relation        string
	SubjectType     string
	SubjectID       string
	SubjectRelation string
}

func NewRelation(resourceType, resourceID, relation, subjectType, subjectID string) Relation {
	return Relation{
		ResourceType: resourceType,
		ResourceID:   resourceID,
		Relation:     relation,
		SubjectType:  subjectType,
		SubjectID:    subjectID,
	}
}

func (r *Relation) ToSpanAttributeKeyValue() []attribute.KeyValue {
	return []attribute.KeyValue{
		attribute.String("resourceType", r.ResourceType),
		attribute.String("resourceID", r.ResourceID),
		attribute.String("relation", r.Relation),
		attribute.String("subjectType", r.SubjectType),
		attribute.String("subjectID", r.SubjectID),
		attribute.String("subjectRelation", r.SubjectRelation),
	}
}

func NewRelationWithSubjectRelation(resourceType, resourceID, relation, subjectType, subjectID, subjectRelation string) Relation {
	return Relation{
		ResourceType:    resourceType,
		ResourceID:      resourceID,
		Relation:        relation,
		SubjectType:     subjectType,
		SubjectID:       subjectID,
		SubjectRelation: subjectRelation,
	}
}

// AuthZ interfaces our provider Google Zanzibar like provider for authorization
type AuthZ interface {
	Write(ctx context.Context, relations ...Relation) (ConsistencyToken, error)
	Delete(ctx context.Context, relations ...Relation) (ConsistencyToken, error)
	Check(ctx context.Context, permissions Permission) (bool, error)
}

// CheckMany calls authz.Check in parallel for every permission
// If the first bool param is false and the third error param is not nil
// The second *Permission param contains the falsy/invalid permission
func CheckMany(ctx context.Context, authz AuthZ, permissions ...Permission) (bool, *Permission, error) {
	ctx, span, _ := telemetry.StartSpan(ctx, "hwauthz.CheckMany")
	defer span.End()

	type res struct {
		Permission    Permission
		HasPermission bool
	}

	resChan := make(chan res, len(permissions))

	var eg errgroup.Group

	for _, permission := range permissions {
		eg.Go(func() error {
			ctx, span, _ := telemetry.StartSpan(ctx, "hwauthz.CheckMany.Check")
			defer span.End()

			hasPermission, err := authz.Check(ctx, permission)
			if err != nil {
				return err
			}

			resChan <- res{
				Permission:    permission,
				HasPermission: hasPermission,
			}

			return nil
		})
	}

	err := eg.Wait()
	close(resChan)
	if err != nil {
		return false, nil, err
	}

	for res := range resChan {
		if !res.HasPermission {
			return false, &res.Permission, nil
		}
	}

	return true, nil, nil
}

func CheckGrpcWrapper(ctx context.Context, authz AuthZ, permissions ...Permission) error {
	ctx, span, _ := telemetry.StartSpan(ctx, "hwauthz.CheckGrpcWrapper")
	defer span.End()

	var hasPermission bool
	var permission *Permission
	var err error

	if len(permissions) > 1 {
		// Distribute many auth.Check() via CheckMany()
		hasPermission, permission, err = CheckMany(ctx, authz, permissions...)
	} else if len(permissions) == 1 {
		// Fast path. Directly call auth.Check() for one permission
		permission = &permissions[0]
		hasPermission, err = authz.Check(ctx, *permission)
	} else {
		return errors.New("you need to pass one or many permissions")
	}

	if err != nil {
		return err
	} else if !hasPermission {
		msg := fmt.Sprintf(
			"subject '%s:%s' needs permission '%s' for resource '%s:%s'",
			permission.SubjectType,
			permission.SubjectID,
			permission.Permission,
			permission.ResourceType,
			permission.ResourceID,
		)
		return common.NewStatusError(ctx, codes.PermissionDenied, msg, locale.PermissionDeniedError(ctx))
	}

	return nil
}
