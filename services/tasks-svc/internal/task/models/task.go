package models

import "github.com/google/uuid"

type Task struct {
	ID   uuid.UUID
	Name string
}
