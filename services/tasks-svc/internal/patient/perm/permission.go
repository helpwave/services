package perm

import (
	"hwauthz"

	"github.com/google/uuid"
)

// Types

type Patient uuid.UUID

func (t Patient) Type() hwauthz.ObjectType { return "patient" }
func (t Patient) ID() string               { return uuid.UUID(t).String() }

// Direct Relations

const PatientOrganization hwauthz.Relation = "organization"

// Permissions

const OrganizationCanUserCreatePatient hwauthz.Permission = "create_patient"

const (
	PatientCanUserGet       hwauthz.Permission = "get"
	PatientCanUserUpdate    hwauthz.Permission = "update"
	PatientCanUserAssignBed hwauthz.Permission = "assign_bed"
	PatientCanUserDischarge hwauthz.Permission = "discharge"
	PatientCanUserReadmit   hwauthz.Permission = "readmit"
	PatientCanUserDelete    hwauthz.Permission = "delete"
)
