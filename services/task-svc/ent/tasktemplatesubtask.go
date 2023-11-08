// Code generated by ent, DO NOT EDIT.

package ent

import (
	"fmt"
	"strings"
	"task-svc/ent/tasktemplate"
	"task-svc/ent/tasktemplatesubtask"

	"entgo.io/ent"
	"entgo.io/ent/dialect/sql"
	"github.com/google/uuid"
)

// TaskTemplateSubTask is the model entity for the TaskTemplateSubTask schema.
type TaskTemplateSubTask struct {
	config `json:"-"`
	// ID of the ent.
	ID uuid.UUID `json:"id,omitempty"`
	// Name holds the value of the "name" field.
	Name string `json:"name,omitempty"`
	// Edges holds the relations/edges for other nodes in the graph.
	// The values are being populated by the TaskTemplateSubTaskQuery when eager-loading is set.
	Edges                  TaskTemplateSubTaskEdges `json:"edges"`
	task_template_subtasks *uuid.UUID
	selectValues           sql.SelectValues
}

// TaskTemplateSubTaskEdges holds the relations/edges for other nodes in the graph.
type TaskTemplateSubTaskEdges struct {
	// TaskTemplate holds the value of the task_template edge.
	TaskTemplate *TaskTemplate `json:"task_template,omitempty"`
	// loadedTypes holds the information for reporting if a
	// type was loaded (or requested) in eager-loading or not.
	loadedTypes [1]bool
}

// TaskTemplateOrErr returns the TaskTemplate value or an error if the edge
// was not loaded in eager-loading, or loaded but was not found.
func (e TaskTemplateSubTaskEdges) TaskTemplateOrErr() (*TaskTemplate, error) {
	if e.loadedTypes[0] {
		if e.TaskTemplate == nil {
			// Edge was loaded but was not found.
			return nil, &NotFoundError{label: tasktemplate.Label}
		}
		return e.TaskTemplate, nil
	}
	return nil, &NotLoadedError{edge: "task_template"}
}

// scanValues returns the types for scanning values from sql.Rows.
func (*TaskTemplateSubTask) scanValues(columns []string) ([]any, error) {
	values := make([]any, len(columns))
	for i := range columns {
		switch columns[i] {
		case tasktemplatesubtask.FieldName:
			values[i] = new(sql.NullString)
		case tasktemplatesubtask.FieldID:
			values[i] = new(uuid.UUID)
		case tasktemplatesubtask.ForeignKeys[0]: // task_template_subtasks
			values[i] = &sql.NullScanner{S: new(uuid.UUID)}
		default:
			values[i] = new(sql.UnknownType)
		}
	}
	return values, nil
}

// assignValues assigns the values that were returned from sql.Rows (after scanning)
// to the TaskTemplateSubTask fields.
func (ttst *TaskTemplateSubTask) assignValues(columns []string, values []any) error {
	if m, n := len(values), len(columns); m < n {
		return fmt.Errorf("mismatch number of scan values: %d != %d", m, n)
	}
	for i := range columns {
		switch columns[i] {
		case tasktemplatesubtask.FieldID:
			if value, ok := values[i].(*uuid.UUID); !ok {
				return fmt.Errorf("unexpected type %T for field id", values[i])
			} else if value != nil {
				ttst.ID = *value
			}
		case tasktemplatesubtask.FieldName:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field name", values[i])
			} else if value.Valid {
				ttst.Name = value.String
			}
		case tasktemplatesubtask.ForeignKeys[0]:
			if value, ok := values[i].(*sql.NullScanner); !ok {
				return fmt.Errorf("unexpected type %T for field task_template_subtasks", values[i])
			} else if value.Valid {
				ttst.task_template_subtasks = new(uuid.UUID)
				*ttst.task_template_subtasks = *value.S.(*uuid.UUID)
			}
		default:
			ttst.selectValues.Set(columns[i], values[i])
		}
	}
	return nil
}

// Value returns the ent.Value that was dynamically selected and assigned to the TaskTemplateSubTask.
// This includes values selected through modifiers, order, etc.
func (ttst *TaskTemplateSubTask) Value(name string) (ent.Value, error) {
	return ttst.selectValues.Get(name)
}

// QueryTaskTemplate queries the "task_template" edge of the TaskTemplateSubTask entity.
func (ttst *TaskTemplateSubTask) QueryTaskTemplate() *TaskTemplateQuery {
	return NewTaskTemplateSubTaskClient(ttst.config).QueryTaskTemplate(ttst)
}

// Update returns a builder for updating this TaskTemplateSubTask.
// Note that you need to call TaskTemplateSubTask.Unwrap() before calling this method if this TaskTemplateSubTask
// was returned from a transaction, and the transaction was committed or rolled back.
func (ttst *TaskTemplateSubTask) Update() *TaskTemplateSubTaskUpdateOne {
	return NewTaskTemplateSubTaskClient(ttst.config).UpdateOne(ttst)
}

// Unwrap unwraps the TaskTemplateSubTask entity that was returned from a transaction after it was closed,
// so that all future queries will be executed through the driver which created the transaction.
func (ttst *TaskTemplateSubTask) Unwrap() *TaskTemplateSubTask {
	_tx, ok := ttst.config.driver.(*txDriver)
	if !ok {
		panic("ent: TaskTemplateSubTask is not a transactional entity")
	}
	ttst.config.driver = _tx.drv
	return ttst
}

// String implements the fmt.Stringer.
func (ttst *TaskTemplateSubTask) String() string {
	var builder strings.Builder
	builder.WriteString("TaskTemplateSubTask(")
	builder.WriteString(fmt.Sprintf("id=%v, ", ttst.ID))
	builder.WriteString("name=")
	builder.WriteString(ttst.Name)
	builder.WriteByte(')')
	return builder.String()
}

// TaskTemplateSubTasks is a parsable slice of TaskTemplateSubTask.
type TaskTemplateSubTasks []*TaskTemplateSubTask
