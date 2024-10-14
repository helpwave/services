package models

import (
	"context"
	"github.com/google/uuid"
	"hwutil"
)

type PropertiesQueryRow interface {
	GetPropertyID() uuid.UUID
	GetDontAlwaysInclude() bool
	GetSpecificity() int32
}

type PropertyMatchers interface {
	hwutil.MapAble
	// FindExactRuleId queries (presumably the projection) for the one rule that has these matchers
	// MUST return (nil, nil) if no such rule exists
	FindExactRuleId(context.Context) (*uuid.UUID, error)

	// QueryProperties queries (presumably the projection) for all properties relevant for the user using the rules
	// MUST be ordered in ascending order by specificity
	QueryProperties(context.Context) ([]PropertiesQueryRow, error)

	IsPropertyAlwaysIncluded(ctx context.Context, propertyID uuid.UUID) (bool, error)

	GetSubjectId() (uuid.UUID, error)

	// returns the respective type identifier of the property matcher
	// should be used to identify the matcher when converting it from a map to the respective type
	GetType() string
}

type PropertyViewRule struct {
	RuleId uuid.UUID

	/* matchers */
	Matchers PropertyMatchers

	/* filters */
	// TODO: /* show all softRequired, don't show all softRequired, no-rule (parent might have one) */
	// TODO: softRequired      *bool
	AlwaysInclude     []uuid.UUID /* add properties to always show */
	DontAlwaysInclude []uuid.UUID /* remove property from include list, which got added by a parent to it */
}
