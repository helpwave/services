// Code generated by ent, DO NOT EDIT.

package ent

import (
	"fmt"
	"strings"
	"task-svc/ent/ward"

	"entgo.io/ent"
	"entgo.io/ent/dialect/sql"
	"github.com/google/uuid"
)

// Ward is the model entity for the Ward schema.
type Ward struct {
	config `json:"-"`
	// ID of the ent.
	ID uuid.UUID `json:"id,omitempty"`
	// Name holds the value of the "name" field.
	Name string `json:"name,omitempty"`
	// OrganizationID holds the value of the "organization_id" field.
	OrganizationID uuid.UUID `json:"organization_id,omitempty"`
	// Edges holds the relations/edges for other nodes in the graph.
	// The values are being populated by the WardQuery when eager-loading is set.
	Edges        WardEdges `json:"edges"`
	selectValues sql.SelectValues
}

// WardEdges holds the relations/edges for other nodes in the graph.
type WardEdges struct {
	// Rooms holds the value of the rooms edge.
	Rooms []*Room `json:"rooms,omitempty"`
	// TaskTemplates holds the value of the task_templates edge.
	TaskTemplates []*TaskTemplate `json:"task_templates,omitempty"`
	// loadedTypes holds the information for reporting if a
	// type was loaded (or requested) in eager-loading or not.
	loadedTypes [2]bool
}

// RoomsOrErr returns the Rooms value or an error if the edge
// was not loaded in eager-loading.
func (e WardEdges) RoomsOrErr() ([]*Room, error) {
	if e.loadedTypes[0] {
		return e.Rooms, nil
	}
	return nil, &NotLoadedError{edge: "rooms"}
}

// TaskTemplatesOrErr returns the TaskTemplates value or an error if the edge
// was not loaded in eager-loading.
func (e WardEdges) TaskTemplatesOrErr() ([]*TaskTemplate, error) {
	if e.loadedTypes[1] {
		return e.TaskTemplates, nil
	}
	return nil, &NotLoadedError{edge: "task_templates"}
}

// scanValues returns the types for scanning values from sql.Rows.
func (*Ward) scanValues(columns []string) ([]any, error) {
	values := make([]any, len(columns))
	for i := range columns {
		switch columns[i] {
		case ward.FieldName:
			values[i] = new(sql.NullString)
		case ward.FieldID, ward.FieldOrganizationID:
			values[i] = new(uuid.UUID)
		default:
			values[i] = new(sql.UnknownType)
		}
	}
	return values, nil
}

// assignValues assigns the values that were returned from sql.Rows (after scanning)
// to the Ward fields.
func (w *Ward) assignValues(columns []string, values []any) error {
	if m, n := len(values), len(columns); m < n {
		return fmt.Errorf("mismatch number of scan values: %d != %d", m, n)
	}
	for i := range columns {
		switch columns[i] {
		case ward.FieldID:
			if value, ok := values[i].(*uuid.UUID); !ok {
				return fmt.Errorf("unexpected type %T for field id", values[i])
			} else if value != nil {
				w.ID = *value
			}
		case ward.FieldName:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field name", values[i])
			} else if value.Valid {
				w.Name = value.String
			}
		case ward.FieldOrganizationID:
			if value, ok := values[i].(*uuid.UUID); !ok {
				return fmt.Errorf("unexpected type %T for field organization_id", values[i])
			} else if value != nil {
				w.OrganizationID = *value
			}
		default:
			w.selectValues.Set(columns[i], values[i])
		}
	}
	return nil
}

// Value returns the ent.Value that was dynamically selected and assigned to the Ward.
// This includes values selected through modifiers, order, etc.
func (w *Ward) Value(name string) (ent.Value, error) {
	return w.selectValues.Get(name)
}

// QueryRooms queries the "rooms" edge of the Ward entity.
func (w *Ward) QueryRooms() *RoomQuery {
	return NewWardClient(w.config).QueryRooms(w)
}

// QueryTaskTemplates queries the "task_templates" edge of the Ward entity.
func (w *Ward) QueryTaskTemplates() *TaskTemplateQuery {
	return NewWardClient(w.config).QueryTaskTemplates(w)
}

// Update returns a builder for updating this Ward.
// Note that you need to call Ward.Unwrap() before calling this method if this Ward
// was returned from a transaction, and the transaction was committed or rolled back.
func (w *Ward) Update() *WardUpdateOne {
	return NewWardClient(w.config).UpdateOne(w)
}

// Unwrap unwraps the Ward entity that was returned from a transaction after it was closed,
// so that all future queries will be executed through the driver which created the transaction.
func (w *Ward) Unwrap() *Ward {
	_tx, ok := w.config.driver.(*txDriver)
	if !ok {
		panic("ent: Ward is not a transactional entity")
	}
	w.config.driver = _tx.drv
	return w
}

// String implements the fmt.Stringer.
func (w *Ward) String() string {
	var builder strings.Builder
	builder.WriteString("Ward(")
	builder.WriteString(fmt.Sprintf("id=%v, ", w.ID))
	builder.WriteString("name=")
	builder.WriteString(w.Name)
	builder.WriteString(", ")
	builder.WriteString("organization_id=")
	builder.WriteString(fmt.Sprintf("%v", w.OrganizationID))
	builder.WriteByte(')')
	return builder.String()
}

// Wards is a parsable slice of Ward.
type Wards []*Ward
