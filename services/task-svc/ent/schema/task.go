package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"github.com/google/uuid"
)

type Task struct {
	ent.Schema
}

func (Task) Fields() []ent.Field {
	return []ent.Field{
		field.UUID("id", uuid.UUID{}).
			Default(uuid.New),
		field.Text("name"),
		field.Text("description").Default(""),
		field.Bool("public").Default(false),
		field.Int32("status"), // pb.TaskStatus
		field.Time("due_at"),
		field.UUID("created_by", uuid.UUID{}),
		field.UUID("assigned_user_id", uuid.UUID{}),
		field.UUID("organization_id", uuid.UUID{}),
	}
}

func (Task) Edges() []ent.Edge {
	return []ent.Edge{
		edge.From("patient", Patient.Type).Ref("tasks").Unique(), // TODO: can a task exist without patient?
		edge.To("subtasks", SubTask.Type),
	}
}
