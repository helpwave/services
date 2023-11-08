package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"github.com/google/uuid"
)

type Bed struct {
	ent.Schema
}

func (Bed) Fields() []ent.Field {
	return []ent.Field{
		field.Text("name"),
		field.UUID("organization_id", uuid.UUID{}),
	}
}

func (Bed) Edges() []ent.Edge {
	return []ent.Edge{
		edge.From("room", Room.Type).Ref("beds").Unique().Required(),
		edge.To("patient", Patient.Type).Unique(),
	}
}
