package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"github.com/google/uuid"
)

type Patient struct {
	ent.Schema
}

func (Patient) Fields() []ent.Field {
	return []ent.Field{
		field.UUID("id", uuid.UUID{}).
			Default(uuid.New),
		field.Text("human_readable_identifier"),
		field.Text("notes"),
		field.Bool("is_discharged"),
		field.UUID("organization_id", uuid.UUID{}),
	}
}

func (Patient) Edges() []ent.Edge {
	return []ent.Edge{
		edge.From("bed", Bed.Type).Ref("patient").Unique(),
		edge.To("tasks", Task.Type),
	}
}
