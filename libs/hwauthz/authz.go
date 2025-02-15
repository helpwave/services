package hwauthz

import (
	"common/hwerr"
	"common/locale"
	"context"
	"fmt"

	zlog "github.com/rs/zerolog/log"

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
	return hwerr.NewStatusError(
		ctx,
		codes.PermissionDenied,
		msg,
		locale.PermissionDeniedError(ctx),
		// TODO: ErrorInfo
	)
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

// ObjectType is a string alias for the
// Type of Object definitions, (e.g., "user")
type ObjectType string

// An Object must relate to an
// [Object Definition](https://authzed.com/docs/spicedb/concepts/schema#object-type-definitions) in the spicedb schema.
// We use this to build a v1.ObjectReference used for a Relationship
type Object interface {
	// Type of the Object definition, (e.g., "user")
	Type() ObjectType
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

func (r *Relationship) String() string {
	return fmt.Sprintf(
		"(sub: '%s:%s', rel: '%s', res: '%s:%s')",
		r.Subject.Type(),
		r.Subject.ID(),
		r.Relation,
		r.Resource.Type(),
		r.Resource.ID(),
	)
}

func (r *Relationship) SpanAttributeKeyValue() []attribute.KeyValue {
	return []attribute.KeyValue{
		attribute.String("hwauthz.resource.type", string(r.Resource.Type())),
		attribute.String("hwauthz.resource.id", r.Resource.ID()),
		attribute.String("hwauthz.relation", string(r.Relation)),
		attribute.String("hwauthz.subject.type", string(r.Subject.Type())),
		attribute.String("hwauthz.subject.id", r.Subject.ID()),
	}
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

// A Writer can write to the permission graph
type Writer interface {
	Write(ctx context.Context, writes []Relationship, deletes []Relationship) (ConsistencyToken, error)
}

// Tx represents a transaction for changes to the permission graph
type Tx struct {
	writer  Writer
	writes  []Relationship
	deletes []Relationship
}

// NewTx creates a new Tx object, also see AuthZ.Create and AuthZ.Delete
func NewTx(writer Writer, writes []Relationship, deletes []Relationship) *Tx {
	b := Tx{
		writer:  writer,
		writes:  writes,
		deletes: deletes,
	}
	return &b
}

func (b *Tx) Create(relationships ...Relationship) *Tx {
	b.writes = append(b.writes, relationships...)
	return b
}

func (b *Tx) Delete(relationships ...Relationship) *Tx {
	b.deletes = append(b.deletes, relationships...)
	return b
}

func asStringers(arr []Relationship) []fmt.Stringer {
	n := make([]fmt.Stringer, len(arr))
	for i, s := range arr {
		n[i] = &s
	}
	return n
}

func (b *Tx) Commit(ctx context.Context) (ConsistencyToken, error) {
	zlog.Ctx(ctx).Info().
		Stringers("writes", asStringers(b.writes)).
		Stringers("deletes", asStringers(b.deletes)).
		Msg("writing relationships")

	return b.writer.Write(ctx, b.writes, b.deletes)
}

// AuthZ is a Zanzibar-like Fine-Grained Authorization Provider
// Implemented by most notably spicedb.SpiceDBAuthZ, for testing use test.TrueAuthZ
type AuthZ interface {
	// Create adds one or many Relationship Tuples to the Permissions Graph
	Create(relationships ...Relationship) *Tx
	// Delete removes one or many Relationship Tuples to the Permissions Graph, also see DeleteObject
	Delete(relationships ...Relationship) *Tx
	// Check queries the Permission Graph for the existence of a PermissionCheck (i.e., a Relationship)
	// We do not support the use of ConsistencyToken yet
	// Also see Must
	Check(ctx context.Context, check PermissionCheck) (permissionGranted bool, err error)
	// Must performs a Check, and yields StatusErrorPermissionDenied, if it fails
	// Note: it is NOT guaranteed, that the resulting error is StatusErrorPermissionDenied
	Must(ctx context.Context, check PermissionCheck) error
	// BulkCheck queries permission relations for many checks.
	// The evaluated truthfulness of a check at index i in the checks slice is returned at index i in the yielded slice.
	BulkCheck(ctx context.Context, checks []PermissionCheck) ([]bool, error)
	// BulkMust performs many checks and errors if any one fails.
	// Also see Must and BulkCheck
	BulkMust(ctx context.Context, checks ...PermissionCheck) error
	// LookupResources yields all resource ids, where (subject, relation, resourceType:resource) is a valid relation
	// Useful, where the set of accessible resources is much smaller than the query results.
	// Use this to first lookup permitted resources, and then restrict your database query to them.
	LookupResources(ctx context.Context, subject Object, relation Relation, resourceType ObjectType) ([]string, error)
	// DeleteObject deletes any direct relationships to this object from the permission graph
	DeleteObject(ctx context.Context, object Object) error
}

// Error returns err, if not nil or StatusErrorPermissionDenied, if permissionGranted is false
func Error(ctx context.Context, check PermissionCheck, permissionGranted bool, err error) error {
	if err != nil {
		return err
	}
	if !permissionGranted {
		return StatusErrorPermissionDenied(ctx, check)
	}
	return nil
}
