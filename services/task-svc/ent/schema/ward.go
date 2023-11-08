package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"github.com/google/uuid"
)

type Ward struct {
	ent.Schema
}

func (Ward) Fields() []ent.Field {
	return []ent.Field{
		field.UUID("id", uuid.UUID{}).
			Default(uuid.New),
		field.Text("name"),
		field.UUID("organization_id", uuid.UUID{}),
	}
}

func (Ward) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("rooms", Room.Type),
		edge.To("task_templates", TaskTemplate.Type),
	}
}
