package hwauthz

import (
	"common"
	"common/locale"
	"context"
	"fmt"
	"go.opentelemetry.io/otel/attribute"
	"google.golang.org/grpc/codes"
)

// StatusErrorPermissionDenied should be returned when a necessary permission check has failed
func StatusErrorPermissionDenied(ctx context.Context, check Relationship) error {
	msg := fmt.Sprintf(
		"subject '%s:%s' does not have permission '%s' on resource '%s:%s'",
		check.Subject.Type(),
		check.Subject.ID(),
		check.Relation,
		check.Resource.Type(),
		check.Resource.ID(),
	)
	return common.NewStatusError(ctx, codes.PermissionDenied, msg, locale.PermissionDeniedError(ctx))
}

// ConsistencyToken are currently unused
// See https://authzed.com/docs/spicedb/concepts/consistency#zedtokens
type ConsistencyToken = string

// A Relation defines how two objects (or an object and subject) can relate to one another.
// For example, a reader on a document, or a member of a group.
// See https://authzed.com/docs/spicedb/concepts/schema#relations
type Relation string

// A Permission defines a computed set of subjects that have a permission of some kind on its object.
// For example, is a user within the set of users that can edit a document.
// For the most part Relation and Permission can be used interchangeably, however, you can not write to permissions!
// See https://authzed.com/docs/spicedb/concepts/schema#permissions
type Permission Relation

// An Object must relate to an [Object Definition](https://authzed.com/docs/spicedb/concepts/schema#object-type-definitions) in the spicedb schema.
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
// The action is a relation or permission defined on the Resource's type.
//
// Read: https://authzed.com/docs/spicedb/concepts/relationships#relationships
type Relationship struct {
	// Subject that should be added to a relation on the Resource, for example a user
	Subject Object
	// Relation of the Resource
	Relation Relation
	// Resource, for example a task
	Resource Object
}

// NewRelationship constructs a new Relationship object
// To store a new Relationship Tuple in SpiceDB, see AuthZ.Write
func NewRelationship(subject Object, relation Relation, resource Object) Relationship {
	return Relationship{
		Subject:  subject,
		Relation: relation,
		Resource: resource,
	}
}

// A PermissionCheck is used to check if a Relationship exists
// See AuthZ.Check for usage
type PermissionCheck = Relationship

// NewPermissionCheck constructs a new PermissionCheck
// Used to check if a Relationship exists, see AuthZ.Check
func NewPermissionCheck(subject Object, permission Permission, resource Object) PermissionCheck {
	return NewRelationship(subject, Relation(permission), resource)
}

func (r *Relationship) SpanAttributeKeyValue() []attribute.KeyValue {
	return []attribute.KeyValue{
		attribute.String("spice.resource.type", r.Resource.Type()),
		attribute.String("spice.resource.id", r.Resource.ID()),
		attribute.String("spice.relation", string(r.Relation)),
		attribute.String("spice.subject.type", r.Subject.Type()),
		attribute.String("spice.subject.id", r.Subject.ID()),
	}
}

// AuthZ is a Zanzibar-like Fine-Grained Authorization Provider
// Implemented by most notably spicedb.SpiceDBAuthZ, for testing use test.TrueAuthZ
type AuthZ interface {
	// Write writes one or many Relationship Tuples to the Permissions Graph
	Write(ctx context.Context, relationships ...Relationship) (ConsistencyToken, error)
	// Delete removes one or many Relationship Tuples to the Permissions Graph
	Delete(ctx context.Context, relationships ...Relationship) (ConsistencyToken, error)
	// Check queries the Permission Graph for the existence of a PermissionCheck (i.e., a Relationship)
	// We do not support the use of ConsistencyToken yet
	Check(ctx context.Context, check PermissionCheck) (permissionGranted bool, err error)
}
