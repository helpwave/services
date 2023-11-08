// Code generated by ent, DO NOT EDIT.

package ent

import (
	"context"
	"errors"
	"fmt"
	"task-svc/ent/bed"
	"task-svc/ent/predicate"
	"task-svc/ent/room"
	"task-svc/ent/ward"

	"entgo.io/ent/dialect/sql"
	"entgo.io/ent/dialect/sql/sqlgraph"
	"entgo.io/ent/schema/field"
	"github.com/google/uuid"
)

// RoomUpdate is the builder for updating Room entities.
type RoomUpdate struct {
	config
	hooks    []Hook
	mutation *RoomMutation
}

// Where appends a list predicates to the RoomUpdate builder.
func (ru *RoomUpdate) Where(ps ...predicate.Room) *RoomUpdate {
	ru.mutation.Where(ps...)
	return ru
}

// SetName sets the "name" field.
func (ru *RoomUpdate) SetName(s string) *RoomUpdate {
	ru.mutation.SetName(s)
	return ru
}

// SetOrganizationID sets the "organization_id" field.
func (ru *RoomUpdate) SetOrganizationID(u uuid.UUID) *RoomUpdate {
	ru.mutation.SetOrganizationID(u)
	return ru
}

// AddBedIDs adds the "beds" edge to the Bed entity by IDs.
func (ru *RoomUpdate) AddBedIDs(ids ...uuid.UUID) *RoomUpdate {
	ru.mutation.AddBedIDs(ids...)
	return ru
}

// AddBeds adds the "beds" edges to the Bed entity.
func (ru *RoomUpdate) AddBeds(b ...*Bed) *RoomUpdate {
	ids := make([]uuid.UUID, len(b))
	for i := range b {
		ids[i] = b[i].ID
	}
	return ru.AddBedIDs(ids...)
}

// SetWardID sets the "ward" edge to the Ward entity by ID.
func (ru *RoomUpdate) SetWardID(id uuid.UUID) *RoomUpdate {
	ru.mutation.SetWardID(id)
	return ru
}

// SetWard sets the "ward" edge to the Ward entity.
func (ru *RoomUpdate) SetWard(w *Ward) *RoomUpdate {
	return ru.SetWardID(w.ID)
}

// Mutation returns the RoomMutation object of the builder.
func (ru *RoomUpdate) Mutation() *RoomMutation {
	return ru.mutation
}

// ClearBeds clears all "beds" edges to the Bed entity.
func (ru *RoomUpdate) ClearBeds() *RoomUpdate {
	ru.mutation.ClearBeds()
	return ru
}

// RemoveBedIDs removes the "beds" edge to Bed entities by IDs.
func (ru *RoomUpdate) RemoveBedIDs(ids ...uuid.UUID) *RoomUpdate {
	ru.mutation.RemoveBedIDs(ids...)
	return ru
}

// RemoveBeds removes "beds" edges to Bed entities.
func (ru *RoomUpdate) RemoveBeds(b ...*Bed) *RoomUpdate {
	ids := make([]uuid.UUID, len(b))
	for i := range b {
		ids[i] = b[i].ID
	}
	return ru.RemoveBedIDs(ids...)
}

// ClearWard clears the "ward" edge to the Ward entity.
func (ru *RoomUpdate) ClearWard() *RoomUpdate {
	ru.mutation.ClearWard()
	return ru
}

// Save executes the query and returns the number of nodes affected by the update operation.
func (ru *RoomUpdate) Save(ctx context.Context) (int, error) {
	return withHooks(ctx, ru.sqlSave, ru.mutation, ru.hooks)
}

// SaveX is like Save, but panics if an error occurs.
func (ru *RoomUpdate) SaveX(ctx context.Context) int {
	affected, err := ru.Save(ctx)
	if err != nil {
		panic(err)
	}
	return affected
}

// Exec executes the query.
func (ru *RoomUpdate) Exec(ctx context.Context) error {
	_, err := ru.Save(ctx)
	return err
}

// ExecX is like Exec, but panics if an error occurs.
func (ru *RoomUpdate) ExecX(ctx context.Context) {
	if err := ru.Exec(ctx); err != nil {
		panic(err)
	}
}

// check runs all checks and user-defined validators on the builder.
func (ru *RoomUpdate) check() error {
	if _, ok := ru.mutation.WardID(); ru.mutation.WardCleared() && !ok {
		return errors.New(`ent: clearing a required unique edge "Room.ward"`)
	}
	return nil
}

func (ru *RoomUpdate) sqlSave(ctx context.Context) (n int, err error) {
	if err := ru.check(); err != nil {
		return n, err
	}
	_spec := sqlgraph.NewUpdateSpec(room.Table, room.Columns, sqlgraph.NewFieldSpec(room.FieldID, field.TypeUUID))
	if ps := ru.mutation.predicates; len(ps) > 0 {
		_spec.Predicate = func(selector *sql.Selector) {
			for i := range ps {
				ps[i](selector)
			}
		}
	}
	if value, ok := ru.mutation.Name(); ok {
		_spec.SetField(room.FieldName, field.TypeString, value)
	}
	if value, ok := ru.mutation.OrganizationID(); ok {
		_spec.SetField(room.FieldOrganizationID, field.TypeUUID, value)
	}
	if ru.mutation.BedsCleared() {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.O2M,
			Inverse: false,
			Table:   room.BedsTable,
			Columns: []string{room.BedsColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(bed.FieldID, field.TypeUUID),
			},
		}
		_spec.Edges.Clear = append(_spec.Edges.Clear, edge)
	}
	if nodes := ru.mutation.RemovedBedsIDs(); len(nodes) > 0 && !ru.mutation.BedsCleared() {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.O2M,
			Inverse: false,
			Table:   room.BedsTable,
			Columns: []string{room.BedsColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(bed.FieldID, field.TypeUUID),
			},
		}
		for _, k := range nodes {
			edge.Target.Nodes = append(edge.Target.Nodes, k)
		}
		_spec.Edges.Clear = append(_spec.Edges.Clear, edge)
	}
	if nodes := ru.mutation.BedsIDs(); len(nodes) > 0 {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.O2M,
			Inverse: false,
			Table:   room.BedsTable,
			Columns: []string{room.BedsColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(bed.FieldID, field.TypeUUID),
			},
		}
		for _, k := range nodes {
			edge.Target.Nodes = append(edge.Target.Nodes, k)
		}
		_spec.Edges.Add = append(_spec.Edges.Add, edge)
	}
	if ru.mutation.WardCleared() {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.M2O,
			Inverse: true,
			Table:   room.WardTable,
			Columns: []string{room.WardColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(ward.FieldID, field.TypeUUID),
			},
		}
		_spec.Edges.Clear = append(_spec.Edges.Clear, edge)
	}
	if nodes := ru.mutation.WardIDs(); len(nodes) > 0 {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.M2O,
			Inverse: true,
			Table:   room.WardTable,
			Columns: []string{room.WardColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(ward.FieldID, field.TypeUUID),
			},
		}
		for _, k := range nodes {
			edge.Target.Nodes = append(edge.Target.Nodes, k)
		}
		_spec.Edges.Add = append(_spec.Edges.Add, edge)
	}
	if n, err = sqlgraph.UpdateNodes(ctx, ru.driver, _spec); err != nil {
		if _, ok := err.(*sqlgraph.NotFoundError); ok {
			err = &NotFoundError{room.Label}
		} else if sqlgraph.IsConstraintError(err) {
			err = &ConstraintError{msg: err.Error(), wrap: err}
		}
		return 0, err
	}
	ru.mutation.done = true
	return n, nil
}

// RoomUpdateOne is the builder for updating a single Room entity.
type RoomUpdateOne struct {
	config
	fields   []string
	hooks    []Hook
	mutation *RoomMutation
}

// SetName sets the "name" field.
func (ruo *RoomUpdateOne) SetName(s string) *RoomUpdateOne {
	ruo.mutation.SetName(s)
	return ruo
}

// SetOrganizationID sets the "organization_id" field.
func (ruo *RoomUpdateOne) SetOrganizationID(u uuid.UUID) *RoomUpdateOne {
	ruo.mutation.SetOrganizationID(u)
	return ruo
}

// AddBedIDs adds the "beds" edge to the Bed entity by IDs.
func (ruo *RoomUpdateOne) AddBedIDs(ids ...uuid.UUID) *RoomUpdateOne {
	ruo.mutation.AddBedIDs(ids...)
	return ruo
}

// AddBeds adds the "beds" edges to the Bed entity.
func (ruo *RoomUpdateOne) AddBeds(b ...*Bed) *RoomUpdateOne {
	ids := make([]uuid.UUID, len(b))
	for i := range b {
		ids[i] = b[i].ID
	}
	return ruo.AddBedIDs(ids...)
}

// SetWardID sets the "ward" edge to the Ward entity by ID.
func (ruo *RoomUpdateOne) SetWardID(id uuid.UUID) *RoomUpdateOne {
	ruo.mutation.SetWardID(id)
	return ruo
}

// SetWard sets the "ward" edge to the Ward entity.
func (ruo *RoomUpdateOne) SetWard(w *Ward) *RoomUpdateOne {
	return ruo.SetWardID(w.ID)
}

// Mutation returns the RoomMutation object of the builder.
func (ruo *RoomUpdateOne) Mutation() *RoomMutation {
	return ruo.mutation
}

// ClearBeds clears all "beds" edges to the Bed entity.
func (ruo *RoomUpdateOne) ClearBeds() *RoomUpdateOne {
	ruo.mutation.ClearBeds()
	return ruo
}

// RemoveBedIDs removes the "beds" edge to Bed entities by IDs.
func (ruo *RoomUpdateOne) RemoveBedIDs(ids ...uuid.UUID) *RoomUpdateOne {
	ruo.mutation.RemoveBedIDs(ids...)
	return ruo
}

// RemoveBeds removes "beds" edges to Bed entities.
func (ruo *RoomUpdateOne) RemoveBeds(b ...*Bed) *RoomUpdateOne {
	ids := make([]uuid.UUID, len(b))
	for i := range b {
		ids[i] = b[i].ID
	}
	return ruo.RemoveBedIDs(ids...)
}

// ClearWard clears the "ward" edge to the Ward entity.
func (ruo *RoomUpdateOne) ClearWard() *RoomUpdateOne {
	ruo.mutation.ClearWard()
	return ruo
}

// Where appends a list predicates to the RoomUpdate builder.
func (ruo *RoomUpdateOne) Where(ps ...predicate.Room) *RoomUpdateOne {
	ruo.mutation.Where(ps...)
	return ruo
}

// Select allows selecting one or more fields (columns) of the returned entity.
// The default is selecting all fields defined in the entity schema.
func (ruo *RoomUpdateOne) Select(field string, fields ...string) *RoomUpdateOne {
	ruo.fields = append([]string{field}, fields...)
	return ruo
}

// Save executes the query and returns the updated Room entity.
func (ruo *RoomUpdateOne) Save(ctx context.Context) (*Room, error) {
	return withHooks(ctx, ruo.sqlSave, ruo.mutation, ruo.hooks)
}

// SaveX is like Save, but panics if an error occurs.
func (ruo *RoomUpdateOne) SaveX(ctx context.Context) *Room {
	node, err := ruo.Save(ctx)
	if err != nil {
		panic(err)
	}
	return node
}

// Exec executes the query on the entity.
func (ruo *RoomUpdateOne) Exec(ctx context.Context) error {
	_, err := ruo.Save(ctx)
	return err
}

// ExecX is like Exec, but panics if an error occurs.
func (ruo *RoomUpdateOne) ExecX(ctx context.Context) {
	if err := ruo.Exec(ctx); err != nil {
		panic(err)
	}
}

// check runs all checks and user-defined validators on the builder.
func (ruo *RoomUpdateOne) check() error {
	if _, ok := ruo.mutation.WardID(); ruo.mutation.WardCleared() && !ok {
		return errors.New(`ent: clearing a required unique edge "Room.ward"`)
	}
	return nil
}

func (ruo *RoomUpdateOne) sqlSave(ctx context.Context) (_node *Room, err error) {
	if err := ruo.check(); err != nil {
		return _node, err
	}
	_spec := sqlgraph.NewUpdateSpec(room.Table, room.Columns, sqlgraph.NewFieldSpec(room.FieldID, field.TypeUUID))
	id, ok := ruo.mutation.ID()
	if !ok {
		return nil, &ValidationError{Name: "id", err: errors.New(`ent: missing "Room.id" for update`)}
	}
	_spec.Node.ID.Value = id
	if fields := ruo.fields; len(fields) > 0 {
		_spec.Node.Columns = make([]string, 0, len(fields))
		_spec.Node.Columns = append(_spec.Node.Columns, room.FieldID)
		for _, f := range fields {
			if !room.ValidColumn(f) {
				return nil, &ValidationError{Name: f, err: fmt.Errorf("ent: invalid field %q for query", f)}
			}
			if f != room.FieldID {
				_spec.Node.Columns = append(_spec.Node.Columns, f)
			}
		}
	}
	if ps := ruo.mutation.predicates; len(ps) > 0 {
		_spec.Predicate = func(selector *sql.Selector) {
			for i := range ps {
				ps[i](selector)
			}
		}
	}
	if value, ok := ruo.mutation.Name(); ok {
		_spec.SetField(room.FieldName, field.TypeString, value)
	}
	if value, ok := ruo.mutation.OrganizationID(); ok {
		_spec.SetField(room.FieldOrganizationID, field.TypeUUID, value)
	}
	if ruo.mutation.BedsCleared() {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.O2M,
			Inverse: false,
			Table:   room.BedsTable,
			Columns: []string{room.BedsColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(bed.FieldID, field.TypeUUID),
			},
		}
		_spec.Edges.Clear = append(_spec.Edges.Clear, edge)
	}
	if nodes := ruo.mutation.RemovedBedsIDs(); len(nodes) > 0 && !ruo.mutation.BedsCleared() {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.O2M,
			Inverse: false,
			Table:   room.BedsTable,
			Columns: []string{room.BedsColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(bed.FieldID, field.TypeUUID),
			},
		}
		for _, k := range nodes {
			edge.Target.Nodes = append(edge.Target.Nodes, k)
		}
		_spec.Edges.Clear = append(_spec.Edges.Clear, edge)
	}
	if nodes := ruo.mutation.BedsIDs(); len(nodes) > 0 {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.O2M,
			Inverse: false,
			Table:   room.BedsTable,
			Columns: []string{room.BedsColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(bed.FieldID, field.TypeUUID),
			},
		}
		for _, k := range nodes {
			edge.Target.Nodes = append(edge.Target.Nodes, k)
		}
		_spec.Edges.Add = append(_spec.Edges.Add, edge)
	}
	if ruo.mutation.WardCleared() {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.M2O,
			Inverse: true,
			Table:   room.WardTable,
			Columns: []string{room.WardColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(ward.FieldID, field.TypeUUID),
			},
		}
		_spec.Edges.Clear = append(_spec.Edges.Clear, edge)
	}
	if nodes := ruo.mutation.WardIDs(); len(nodes) > 0 {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.M2O,
			Inverse: true,
			Table:   room.WardTable,
			Columns: []string{room.WardColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(ward.FieldID, field.TypeUUID),
			},
		}
		for _, k := range nodes {
			edge.Target.Nodes = append(edge.Target.Nodes, k)
		}
		_spec.Edges.Add = append(_spec.Edges.Add, edge)
	}
	_node = &Room{config: ruo.config}
	_spec.Assign = _node.assignValues
	_spec.ScanValues = _node.scanValues
	if err = sqlgraph.UpdateNode(ctx, ruo.driver, _spec); err != nil {
		if _, ok := err.(*sqlgraph.NotFoundError); ok {
			err = &NotFoundError{room.Label}
		} else if sqlgraph.IsConstraintError(err) {
			err = &ConstraintError{msg: err.Error(), wrap: err}
		}
		return nil, err
	}
	ruo.mutation.done = true
	return _node, nil
}
