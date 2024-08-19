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

// TODO: explain ct
type ConsistencyToken = string

// TODO: explain Relation
type Relation = string

// An Object must relate to an [Object Definition](https://authzed.com/docs/spicedb/concepts/schema#object-type-definitions) in the spicedb schema.
//
// TODO: see spicedb.yaml
//
// We use this to build a v1.ObjectReference used for a Relationship
type Object interface {
	// Type of the Object definition, (e.g., "user")
	Type() string
	// ID is a globally unique and stable identifier, likely a UUID
	ID() string
}

// A Relationship is a tuple relating a Subject with a Resource
//
// Is <this subject> allowed to perform <this action> on <this resource>?
// The action is a relation or permission defined on the Resource's type
//
// Read: https://authzed.com/docs/spicedb/concepts/relationships#relationships
type Relationship struct {
	// TODO: comment fields
	Subject  Object
	Relation Relation
	Resource Object

	SubjectRelation string // TODO??
}

func NewRelationship(subject Object, relation Relation, resource Object) Relationship {
	return Relationship{
		Subject:  subject,
		Relation: relation,
		Resource: resource,
	}
}

func (r *Relationship) SpanAttributeKeyValue() []attribute.KeyValue {
	return []attribute.KeyValue{
		attribute.String("spice.resource.type", r.Resource.Type()),
		attribute.String("spice.resource.id", r.Resource.ID()),
		attribute.String("spice.relation", r.Relation),
		attribute.String("spice.subject.type", r.Subject.Type()),
		attribute.String("spice.subject.id", r.Subject.ID()),
		attribute.String("spice.subjectRelation", r.SubjectRelation),
	}
}

// A Permission defines a computed set of subjects that have a permission of some kind on the parent object.
// For us, they are a special kind of Relationship. TODO: violation of ubiqu. language! A Permission is like a Relation. not like a Relationship, rename this
// TODO: mention authz.Check
// See: https://authzed.com/docs/spicedb/concepts/schema#permissions
type Permission struct {
	Relationship
}

func NewPermission(subject Object, relation Relation, resource Object) Permission {
	return Permission{
		NewRelationship(subject, relation, resource),
	}
}

func (p *Permission) SpanAttributeKeyValue() []attribute.KeyValue {
	return []attribute.KeyValue{
		attribute.String("spice.resource.type", p.Resource.Type()),
		attribute.String("spice.resource.id", p.Resource.ID()),
		attribute.String("spice.permission", p.Relation),
		attribute.String("spice.subject.type", p.Subject.Type()),
		attribute.String("spice.subject.id", p.Subject.ID()),
		attribute.String("spice.subjectRelation", p.SubjectRelation),
	}
}

// todo: new comment, that explains What it is, How to use it, who implements is
// AuthZ interfaces our provider Google Zanzibar like provider for authorization
type AuthZ interface {
	Write(ctx context.Context, relationships ...Relationship) (ConsistencyToken, error)
	Delete(ctx context.Context, relationships ...Relationship) (ConsistencyToken, error)
	Check(ctx context.Context, permission Permission) (bool, error)
}

// CheckMany calls authz.Check in parallel for every permission
// If the first bool param is false and the third error param is not nil
// The second *Permission param contains the falsy/invalid permission
// TODO: there is a bulk check endpoint, refactor this
// TODO: also discourage multiple lookups, a single action should be expressed by a single permission (which itself might be a composite of other permissions)
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

// TODO: the only thing that makes this grpc specific is the error message, the name is shit and we should just provide a default error
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
			"subject '%s:%s' does not have permission '%s' on resource '%s:%s'",
			permission.Subject.Type(),
			permission.Subject.ID(),
			permission.Relation,
			permission.Resource.Type(),
			permission.Resource.ID(),
		)
		return common.NewStatusError(ctx, codes.PermissionDenied, msg, locale.PermissionDeniedError(ctx))
	}

	return nil
}
