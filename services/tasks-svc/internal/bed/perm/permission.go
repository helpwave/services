package perm

import (
	"hwauthz"

	"github.com/google/uuid"
)

// Types

type Bed uuid.UUID

func (t Bed) Type() string { return "bed" }
func (t Bed) ID() string   { return uuid.UUID(t).String() }

// Direct Relations

const BedRoom hwauthz.Relation = "room"

// Permissions

const (
	BedCanUserGet    hwauthz.Permission = "get"
	BedCanUserUpdate hwauthz.Permission = "update"
	BedCanUserDelete hwauthz.Permission = "delete"
)
