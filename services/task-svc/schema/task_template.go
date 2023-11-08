package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"github.com/google/uuid"
)

type TaskTemplate struct {
	ent.Schema
}

func (TaskTemplate) Fields() []ent.Field {
	return []ent.Field{
		field.Text("name"),
		field.Text("description").Default(""),
		field.UUID("created_by", uuid.UUID{}),
		field.UUID("organization_id", uuid.UUID{}),
	}
}

func (TaskTemplate) Edges() []ent.Edge {
	return []ent.Edge{
		edge.From("ward", SubTask.Type).Ref("task_templates").Unique(), // TODO: can a Task Template exist without ward?
		edge.To("subtasks", TaskTemplateSubTask.Type),
	}
}
