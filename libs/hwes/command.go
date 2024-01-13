package hwes

import "github.com/google/uuid"

// CommandBase acts as a container for the targeted AggregateID
// A concrete command in our CQRS pattern will call NewCommandBase
// in there initialization.
type CommandBase struct {
	aggregateID uuid.UUID
}

func NewCommandBase(aggregateID uuid.UUID) CommandBase {
	return CommandBase{aggregateID: aggregateID}
}

func (c *CommandBase) GetAggregateID() uuid.UUID {
	return c.aggregateID
}
