// Code generated by ent, DO NOT EDIT.

package ent

import (
	"context"
	"errors"
	"fmt"
	"task-svc/ent/room"
	"task-svc/ent/tasktemplate"
	"task-svc/ent/ward"

	"entgo.io/ent/dialect/sql/sqlgraph"
	"entgo.io/ent/schema/field"
	"github.com/google/uuid"
)

// WardCreate is the builder for creating a Ward entity.
type WardCreate struct {
	config
	mutation *WardMutation
	hooks    []Hook
}

// SetName sets the "name" field.
func (wc *WardCreate) SetName(s string) *WardCreate {
	wc.mutation.SetName(s)
	return wc
}

// SetOrganizationID sets the "organization_id" field.
func (wc *WardCreate) SetOrganizationID(u uuid.UUID) *WardCreate {
	wc.mutation.SetOrganizationID(u)
	return wc
}

// SetID sets the "id" field.
func (wc *WardCreate) SetID(u uuid.UUID) *WardCreate {
	wc.mutation.SetID(u)
	return wc
}

// SetNillableID sets the "id" field if the given value is not nil.
func (wc *WardCreate) SetNillableID(u *uuid.UUID) *WardCreate {
	if u != nil {
		wc.SetID(*u)
	}
	return wc
}

// AddRoomIDs adds the "rooms" edge to the Room entity by IDs.
func (wc *WardCreate) AddRoomIDs(ids ...uuid.UUID) *WardCreate {
	wc.mutation.AddRoomIDs(ids...)
	return wc
}

// AddRooms adds the "rooms" edges to the Room entity.
func (wc *WardCreate) AddRooms(r ...*Room) *WardCreate {
	ids := make([]uuid.UUID, len(r))
	for i := range r {
		ids[i] = r[i].ID
	}
	return wc.AddRoomIDs(ids...)
}

// AddTaskTemplateIDs adds the "task_templates" edge to the TaskTemplate entity by IDs.
func (wc *WardCreate) AddTaskTemplateIDs(ids ...uuid.UUID) *WardCreate {
	wc.mutation.AddTaskTemplateIDs(ids...)
	return wc
}

// AddTaskTemplates adds the "task_templates" edges to the TaskTemplate entity.
func (wc *WardCreate) AddTaskTemplates(t ...*TaskTemplate) *WardCreate {
	ids := make([]uuid.UUID, len(t))
	for i := range t {
		ids[i] = t[i].ID
	}
	return wc.AddTaskTemplateIDs(ids...)
}

// Mutation returns the WardMutation object of the builder.
func (wc *WardCreate) Mutation() *WardMutation {
	return wc.mutation
}

// Save creates the Ward in the database.
func (wc *WardCreate) Save(ctx context.Context) (*Ward, error) {
	wc.defaults()
	return withHooks(ctx, wc.sqlSave, wc.mutation, wc.hooks)
}

// SaveX calls Save and panics if Save returns an error.
func (wc *WardCreate) SaveX(ctx context.Context) *Ward {
	v, err := wc.Save(ctx)
	if err != nil {
		panic(err)
	}
	return v
}

// Exec executes the query.
func (wc *WardCreate) Exec(ctx context.Context) error {
	_, err := wc.Save(ctx)
	return err
}

// ExecX is like Exec, but panics if an error occurs.
func (wc *WardCreate) ExecX(ctx context.Context) {
	if err := wc.Exec(ctx); err != nil {
		panic(err)
	}
}

// defaults sets the default values of the builder before save.
func (wc *WardCreate) defaults() {
	if _, ok := wc.mutation.ID(); !ok {
		v := ward.DefaultID()
		wc.mutation.SetID(v)
	}
}

// check runs all checks and user-defined validators on the builder.
func (wc *WardCreate) check() error {
	if _, ok := wc.mutation.Name(); !ok {
		return &ValidationError{Name: "name", err: errors.New(`ent: missing required field "Ward.name"`)}
	}
	if _, ok := wc.mutation.OrganizationID(); !ok {
		return &ValidationError{Name: "organization_id", err: errors.New(`ent: missing required field "Ward.organization_id"`)}
	}
	return nil
}

func (wc *WardCreate) sqlSave(ctx context.Context) (*Ward, error) {
	if err := wc.check(); err != nil {
		return nil, err
	}
	_node, _spec := wc.createSpec()
	if err := sqlgraph.CreateNode(ctx, wc.driver, _spec); err != nil {
		if sqlgraph.IsConstraintError(err) {
			err = &ConstraintError{msg: err.Error(), wrap: err}
		}
		return nil, err
	}
	if _spec.ID.Value != nil {
		if id, ok := _spec.ID.Value.(*uuid.UUID); ok {
			_node.ID = *id
		} else if err := _node.ID.Scan(_spec.ID.Value); err != nil {
			return nil, err
		}
	}
	wc.mutation.id = &_node.ID
	wc.mutation.done = true
	return _node, nil
}

func (wc *WardCreate) createSpec() (*Ward, *sqlgraph.CreateSpec) {
	var (
		_node = &Ward{config: wc.config}
		_spec = sqlgraph.NewCreateSpec(ward.Table, sqlgraph.NewFieldSpec(ward.FieldID, field.TypeUUID))
	)
	if id, ok := wc.mutation.ID(); ok {
		_node.ID = id
		_spec.ID.Value = &id
	}
	if value, ok := wc.mutation.Name(); ok {
		_spec.SetField(ward.FieldName, field.TypeString, value)
		_node.Name = value
	}
	if value, ok := wc.mutation.OrganizationID(); ok {
		_spec.SetField(ward.FieldOrganizationID, field.TypeUUID, value)
		_node.OrganizationID = value
	}
	if nodes := wc.mutation.RoomsIDs(); len(nodes) > 0 {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.O2M,
			Inverse: false,
			Table:   ward.RoomsTable,
			Columns: []string{ward.RoomsColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(room.FieldID, field.TypeUUID),
			},
		}
		for _, k := range nodes {
			edge.Target.Nodes = append(edge.Target.Nodes, k)
		}
		_spec.Edges = append(_spec.Edges, edge)
	}
	if nodes := wc.mutation.TaskTemplatesIDs(); len(nodes) > 0 {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.O2M,
			Inverse: false,
			Table:   ward.TaskTemplatesTable,
			Columns: []string{ward.TaskTemplatesColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(tasktemplate.FieldID, field.TypeUUID),
			},
		}
		for _, k := range nodes {
			edge.Target.Nodes = append(edge.Target.Nodes, k)
		}
		_spec.Edges = append(_spec.Edges, edge)
	}
	return _node, _spec
}

// WardCreateBulk is the builder for creating many Ward entities in bulk.
type WardCreateBulk struct {
	config
	err      error
	builders []*WardCreate
}

// Save creates the Ward entities in the database.
func (wcb *WardCreateBulk) Save(ctx context.Context) ([]*Ward, error) {
	if wcb.err != nil {
		return nil, wcb.err
	}
	specs := make([]*sqlgraph.CreateSpec, len(wcb.builders))
	nodes := make([]*Ward, len(wcb.builders))
	mutators := make([]Mutator, len(wcb.builders))
	for i := range wcb.builders {
		func(i int, root context.Context) {
			builder := wcb.builders[i]
			builder.defaults()
			var mut Mutator = MutateFunc(func(ctx context.Context, m Mutation) (Value, error) {
				mutation, ok := m.(*WardMutation)
				if !ok {
					return nil, fmt.Errorf("unexpected mutation type %T", m)
				}
				if err := builder.check(); err != nil {
					return nil, err
				}
				builder.mutation = mutation
				var err error
				nodes[i], specs[i] = builder.createSpec()
				if i < len(mutators)-1 {
					_, err = mutators[i+1].Mutate(root, wcb.builders[i+1].mutation)
				} else {
					spec := &sqlgraph.BatchCreateSpec{Nodes: specs}
					// Invoke the actual operation on the latest mutation in the chain.
					if err = sqlgraph.BatchCreate(ctx, wcb.driver, spec); err != nil {
						if sqlgraph.IsConstraintError(err) {
							err = &ConstraintError{msg: err.Error(), wrap: err}
						}
					}
				}
				if err != nil {
					return nil, err
				}
				mutation.id = &nodes[i].ID
				mutation.done = true
				return nodes[i], nil
			})
			for i := len(builder.hooks) - 1; i >= 0; i-- {
				mut = builder.hooks[i](mut)
			}
			mutators[i] = mut
		}(i, ctx)
	}
	if len(mutators) > 0 {
		if _, err := mutators[0].Mutate(ctx, wcb.builders[0].mutation); err != nil {
			return nil, err
		}
	}
	return nodes, nil
}

// SaveX is like Save, but panics if an error occurs.
func (wcb *WardCreateBulk) SaveX(ctx context.Context) []*Ward {
	v, err := wcb.Save(ctx)
	if err != nil {
		panic(err)
	}
	return v
}

// Exec executes the query.
func (wcb *WardCreateBulk) Exec(ctx context.Context) error {
	_, err := wcb.Save(ctx)
	return err
}

// ExecX is like Exec, but panics if an error occurs.
func (wcb *WardCreateBulk) ExecX(ctx context.Context) {
	if err := wcb.Exec(ctx); err != nil {
		panic(err)
	}
}
