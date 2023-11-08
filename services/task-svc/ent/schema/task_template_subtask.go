package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"github.com/google/uuid"
)

type TaskTemplateSubTask struct {
	ent.Schema
}

func (TaskTemplateSubTask) Fields() []ent.Field {
	return []ent.Field{
		field.UUID("id", uuid.UUID{}).
			Default(uuid.New),
		field.Text("name"),
	}
}

func (TaskTemplateSubTask) Edges() []ent.Edge {
	return []ent.Edge{
		edge.From("task_template", TaskTemplate.Type).Ref("subtasks").Unique().Required(),
	}
}
