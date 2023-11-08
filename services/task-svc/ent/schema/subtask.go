package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"github.com/google/uuid"
)

type SubTask struct {
	ent.Schema
}

func (SubTask) Fields() []ent.Field {
	return []ent.Field{
		field.UUID("id", uuid.UUID{}).
			Default(uuid.New),
		field.Text("name"),
		field.Bool("done").Default(false),
		field.UUID("created_by", uuid.UUID{})
	}
}

func (SubTask) Edges() []ent.Edge {
	return []ent.Edge{
		edge.From("task", Task.Type).Ref("subtasks").Required().Unique(),
	}
}
