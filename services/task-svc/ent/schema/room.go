package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"github.com/google/uuid"
)

type Room struct {
	ent.Schema
}

func (Room) Fields() []ent.Field {
	return []ent.Field{
		field.UUID("id", uuid.UUID{}).
			Default(uuid.New),
		field.Text("name"),
		field.UUID("organization_id", uuid.UUID{}),
	}
}

func (Room) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("beds", Bed.Type),
		edge.From("ward", Ward.Type).Ref("rooms").Required().Unique(),
	}
}
