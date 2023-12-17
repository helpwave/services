package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
)

type CreateTaskCommand struct {
	hwes.BaseCommand
	Name string
}

func NewCreateTaskCommand(id uuid.UUID, name string) *CreateTaskCommand {
	return &CreateTaskCommand{BaseCommand: hwes.NewBaseCommand(id), Name: name}
}

type CreateTaskCommandHandler interface {
	Handle(ctx context.Context, cmd *CreateTaskCommand) error
}

type createTaskCommandHandler struct{}

func NewCreateTaskCommandHandler() *createTaskCommandHandler {
	return &createTaskCommandHandler{}
}

func (c *createTaskCommandHandler) Handle(ctx context.Context, command *CreateTaskCommand) error {
	return nil
}
