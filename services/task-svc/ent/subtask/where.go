// Code generated by ent, DO NOT EDIT.

package subtask

import (
	"task-svc/ent/predicate"

	"entgo.io/ent/dialect/sql"
	"entgo.io/ent/dialect/sql/sqlgraph"
	"github.com/google/uuid"
)

// ID filters vertices based on their ID field.
func ID(id uuid.UUID) predicate.SubTask {
	return predicate.SubTask(sql.FieldEQ(FieldID, id))
}

// IDEQ applies the EQ predicate on the ID field.
func IDEQ(id uuid.UUID) predicate.SubTask {
	return predicate.SubTask(sql.FieldEQ(FieldID, id))
}

// IDNEQ applies the NEQ predicate on the ID field.
func IDNEQ(id uuid.UUID) predicate.SubTask {
	return predicate.SubTask(sql.FieldNEQ(FieldID, id))
}

// IDIn applies the In predicate on the ID field.
func IDIn(ids ...uuid.UUID) predicate.SubTask {
	return predicate.SubTask(sql.FieldIn(FieldID, ids...))
}

// IDNotIn applies the NotIn predicate on the ID field.
func IDNotIn(ids ...uuid.UUID) predicate.SubTask {
	return predicate.SubTask(sql.FieldNotIn(FieldID, ids...))
}

// IDGT applies the GT predicate on the ID field.
func IDGT(id uuid.UUID) predicate.SubTask {
	return predicate.SubTask(sql.FieldGT(FieldID, id))
}

// IDGTE applies the GTE predicate on the ID field.
func IDGTE(id uuid.UUID) predicate.SubTask {
	return predicate.SubTask(sql.FieldGTE(FieldID, id))
}

// IDLT applies the LT predicate on the ID field.
func IDLT(id uuid.UUID) predicate.SubTask {
	return predicate.SubTask(sql.FieldLT(FieldID, id))
}

// IDLTE applies the LTE predicate on the ID field.
func IDLTE(id uuid.UUID) predicate.SubTask {
	return predicate.SubTask(sql.FieldLTE(FieldID, id))
}

// Name applies equality check predicate on the "name" field. It's identical to NameEQ.
func Name(v string) predicate.SubTask {
	return predicate.SubTask(sql.FieldEQ(FieldName, v))
}

// Done applies equality check predicate on the "done" field. It's identical to DoneEQ.
func Done(v bool) predicate.SubTask {
	return predicate.SubTask(sql.FieldEQ(FieldDone, v))
}

// CreatedBy applies equality check predicate on the "created_by" field. It's identical to CreatedByEQ.
func CreatedBy(v uuid.UUID) predicate.SubTask {
	return predicate.SubTask(sql.FieldEQ(FieldCreatedBy, v))
}

// NameEQ applies the EQ predicate on the "name" field.
func NameEQ(v string) predicate.SubTask {
	return predicate.SubTask(sql.FieldEQ(FieldName, v))
}

// NameNEQ applies the NEQ predicate on the "name" field.
func NameNEQ(v string) predicate.SubTask {
	return predicate.SubTask(sql.FieldNEQ(FieldName, v))
}

// NameIn applies the In predicate on the "name" field.
func NameIn(vs ...string) predicate.SubTask {
	return predicate.SubTask(sql.FieldIn(FieldName, vs...))
}

// NameNotIn applies the NotIn predicate on the "name" field.
func NameNotIn(vs ...string) predicate.SubTask {
	return predicate.SubTask(sql.FieldNotIn(FieldName, vs...))
}

// NameGT applies the GT predicate on the "name" field.
func NameGT(v string) predicate.SubTask {
	return predicate.SubTask(sql.FieldGT(FieldName, v))
}

// NameGTE applies the GTE predicate on the "name" field.
func NameGTE(v string) predicate.SubTask {
	return predicate.SubTask(sql.FieldGTE(FieldName, v))
}

// NameLT applies the LT predicate on the "name" field.
func NameLT(v string) predicate.SubTask {
	return predicate.SubTask(sql.FieldLT(FieldName, v))
}

// NameLTE applies the LTE predicate on the "name" field.
func NameLTE(v string) predicate.SubTask {
	return predicate.SubTask(sql.FieldLTE(FieldName, v))
}

// NameContains applies the Contains predicate on the "name" field.
func NameContains(v string) predicate.SubTask {
	return predicate.SubTask(sql.FieldContains(FieldName, v))
}

// NameHasPrefix applies the HasPrefix predicate on the "name" field.
func NameHasPrefix(v string) predicate.SubTask {
	return predicate.SubTask(sql.FieldHasPrefix(FieldName, v))
}

// NameHasSuffix applies the HasSuffix predicate on the "name" field.
func NameHasSuffix(v string) predicate.SubTask {
	return predicate.SubTask(sql.FieldHasSuffix(FieldName, v))
}

// NameEqualFold applies the EqualFold predicate on the "name" field.
func NameEqualFold(v string) predicate.SubTask {
	return predicate.SubTask(sql.FieldEqualFold(FieldName, v))
}

// NameContainsFold applies the ContainsFold predicate on the "name" field.
func NameContainsFold(v string) predicate.SubTask {
	return predicate.SubTask(sql.FieldContainsFold(FieldName, v))
}

// DoneEQ applies the EQ predicate on the "done" field.
func DoneEQ(v bool) predicate.SubTask {
	return predicate.SubTask(sql.FieldEQ(FieldDone, v))
}

// DoneNEQ applies the NEQ predicate on the "done" field.
func DoneNEQ(v bool) predicate.SubTask {
	return predicate.SubTask(sql.FieldNEQ(FieldDone, v))
}

// CreatedByEQ applies the EQ predicate on the "created_by" field.
func CreatedByEQ(v uuid.UUID) predicate.SubTask {
	return predicate.SubTask(sql.FieldEQ(FieldCreatedBy, v))
}

// CreatedByNEQ applies the NEQ predicate on the "created_by" field.
func CreatedByNEQ(v uuid.UUID) predicate.SubTask {
	return predicate.SubTask(sql.FieldNEQ(FieldCreatedBy, v))
}

// CreatedByIn applies the In predicate on the "created_by" field.
func CreatedByIn(vs ...uuid.UUID) predicate.SubTask {
	return predicate.SubTask(sql.FieldIn(FieldCreatedBy, vs...))
}

// CreatedByNotIn applies the NotIn predicate on the "created_by" field.
func CreatedByNotIn(vs ...uuid.UUID) predicate.SubTask {
	return predicate.SubTask(sql.FieldNotIn(FieldCreatedBy, vs...))
}

// CreatedByGT applies the GT predicate on the "created_by" field.
func CreatedByGT(v uuid.UUID) predicate.SubTask {
	return predicate.SubTask(sql.FieldGT(FieldCreatedBy, v))
}

// CreatedByGTE applies the GTE predicate on the "created_by" field.
func CreatedByGTE(v uuid.UUID) predicate.SubTask {
	return predicate.SubTask(sql.FieldGTE(FieldCreatedBy, v))
}

// CreatedByLT applies the LT predicate on the "created_by" field.
func CreatedByLT(v uuid.UUID) predicate.SubTask {
	return predicate.SubTask(sql.FieldLT(FieldCreatedBy, v))
}

// CreatedByLTE applies the LTE predicate on the "created_by" field.
func CreatedByLTE(v uuid.UUID) predicate.SubTask {
	return predicate.SubTask(sql.FieldLTE(FieldCreatedBy, v))
}

// HasTask applies the HasEdge predicate on the "task" edge.
func HasTask() predicate.SubTask {
	return predicate.SubTask(func(s *sql.Selector) {
		step := sqlgraph.NewStep(
			sqlgraph.From(Table, FieldID),
			sqlgraph.Edge(sqlgraph.M2O, true, TaskTable, TaskColumn),
		)
		sqlgraph.HasNeighbors(s, step)
	})
}

// HasTaskWith applies the HasEdge predicate on the "task" edge with a given conditions (other predicates).
func HasTaskWith(preds ...predicate.Task) predicate.SubTask {
	return predicate.SubTask(func(s *sql.Selector) {
		step := newTaskStep()
		sqlgraph.HasNeighborsWith(s, step, func(s *sql.Selector) {
			for _, p := range preds {
				p(s)
			}
		})
	})
}

// And groups predicates with the AND operator between them.
func And(predicates ...predicate.SubTask) predicate.SubTask {
	return predicate.SubTask(sql.AndPredicates(predicates...))
}

// Or groups predicates with the OR operator between them.
func Or(predicates ...predicate.SubTask) predicate.SubTask {
	return predicate.SubTask(sql.OrPredicates(predicates...))
}

// Not applies the not operator on the given predicate.
func Not(p predicate.SubTask) predicate.SubTask {
	return predicate.SubTask(sql.NotPredicates(p))
}
