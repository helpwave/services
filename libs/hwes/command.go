package hwes

import "github.com/google/uuid"

// CommandBase acts as a container for the targeted AggregateID
// A concrete command in our CQRS pattern can call NewCommandBase
// in there initialization.
//
// Example:
//
//	type AssignTaskCommand struct {
//		hwes.CommandBase
//		UserID uuid.UUID
//	}
//
//	func NewAssignTaskCommand(taskID, userID uuid.UUID) *AssignTaskCommand {
//		return &AssignTaskCommand{CommandBase: hwes.NewCommandBase(taskID), UserID: userID}
//	}
type CommandBase struct {
	aggregateID uuid.UUID
}

func NewCommandBase(aggregateID uuid.UUID) CommandBase {
	return CommandBase{aggregateID: aggregateID}
}

func (c *CommandBase) GetAggregateID() uuid.UUID {
	return c.aggregateID
}
