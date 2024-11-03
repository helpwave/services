package perm

import (
	"hwauthz"

	"github.com/google/uuid"
)

// Types

type Room uuid.UUID

func (t Room) Type() string { return "room" }
func (t Room) ID() string   { return uuid.UUID(t).String() }

// Direct Relations

const RoomWard hwauthz.Relation = "ward"

// Permissions

const (
	RoomCanUserGet       hwauthz.Permission = "get"
	RoomCanUserUpdate    hwauthz.Permission = "update"
	RoomCanUserDelete    hwauthz.Permission = "delete"
	RoomCanUserCreateBed hwauthz.Permission = "create_bed"
)
