// Code generated by ent, DO NOT EDIT.

package ent

import (
	"context"
	"task-svc/ent/predicate"
	"task-svc/ent/tasktemplate"

	"entgo.io/ent/dialect/sql"
	"entgo.io/ent/dialect/sql/sqlgraph"
	"entgo.io/ent/schema/field"
)

// TaskTemplateDelete is the builder for deleting a TaskTemplate entity.
type TaskTemplateDelete struct {
	config
	hooks    []Hook
	mutation *TaskTemplateMutation
}

// Where appends a list predicates to the TaskTemplateDelete builder.
func (ttd *TaskTemplateDelete) Where(ps ...predicate.TaskTemplate) *TaskTemplateDelete {
	ttd.mutation.Where(ps...)
	return ttd
}

// Exec executes the deletion query and returns how many vertices were deleted.
func (ttd *TaskTemplateDelete) Exec(ctx context.Context) (int, error) {
	return withHooks(ctx, ttd.sqlExec, ttd.mutation, ttd.hooks)
}

// ExecX is like Exec, but panics if an error occurs.
func (ttd *TaskTemplateDelete) ExecX(ctx context.Context) int {
	n, err := ttd.Exec(ctx)
	if err != nil {
		panic(err)
	}
	return n
}

func (ttd *TaskTemplateDelete) sqlExec(ctx context.Context) (int, error) {
	_spec := sqlgraph.NewDeleteSpec(tasktemplate.Table, sqlgraph.NewFieldSpec(tasktemplate.FieldID, field.TypeUUID))
	if ps := ttd.mutation.predicates; len(ps) > 0 {
		_spec.Predicate = func(selector *sql.Selector) {
			for i := range ps {
				ps[i](selector)
			}
		}
	}
	affected, err := sqlgraph.DeleteNodes(ctx, ttd.driver, _spec)
	if err != nil && sqlgraph.IsConstraintError(err) {
		err = &ConstraintError{msg: err.Error(), wrap: err}
	}
	ttd.mutation.done = true
	return affected, err
}

// TaskTemplateDeleteOne is the builder for deleting a single TaskTemplate entity.
type TaskTemplateDeleteOne struct {
	ttd *TaskTemplateDelete
}

// Where appends a list predicates to the TaskTemplateDelete builder.
func (ttdo *TaskTemplateDeleteOne) Where(ps ...predicate.TaskTemplate) *TaskTemplateDeleteOne {
	ttdo.ttd.mutation.Where(ps...)
	return ttdo
}

// Exec executes the deletion query.
func (ttdo *TaskTemplateDeleteOne) Exec(ctx context.Context) error {
	n, err := ttdo.ttd.Exec(ctx)
	switch {
	case err != nil:
		return err
	case n == 0:
		return &NotFoundError{tasktemplate.Label}
	default:
		return nil
	}
}

// ExecX is like Exec, but panics if an error occurs.
func (ttdo *TaskTemplateDeleteOne) ExecX(ctx context.Context) {
	if err := ttdo.Exec(ctx); err != nil {
		panic(err)
	}
}
