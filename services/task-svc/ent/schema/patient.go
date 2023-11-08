package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"github.com/google/uuid"
	"time"
)

type Patient struct {
	ent.Schema
}

func (Patient) Fields() []ent.Field {
	return []ent.Field{
		field.UUID("id", uuid.UUID{}).
			Default(uuid.New),
		field.Text("human_readable_identifier"),
		field.Text("notes").Default(""),
		field.Int("is_discharged").Default(0),
		field.Time("created_at").Default(time.Now),
		field.Time("updated_at").Default(time.Now), // TODO update this automatically?
		field.UUID("organization_id", uuid.UUID{}),
	}
}

func (Patient) Edges() []ent.Edge {
	return []ent.Edge{
		edge.From("bed", Bed.Type).Ref("patient").Unique(),
		edge.To("tasks", Task.Type),
	}
}
