package hwes

import "github.com/google/uuid"

type Command interface {
	GetAggregateID() uuid.UUID
}

type BaseCommand struct {
	AggregateID uuid.UUID
}

func NewBaseCommand(aggregateID uuid.UUID) BaseCommand {
	return BaseCommand{AggregateID: aggregateID}
}

func (c *BaseCommand) GetAggregateID() uuid.UUID {
	return c.AggregateID
}

func (c *BaseCommand) GetAggregateIDString() string {
	return c.AggregateID.String()
}
