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

	GetSubjectId() (uuid.UUID, error)
}

type PropertyViewRule struct {
	RuleId uuid.UUID

	/* matchers */
	Matchers PropertyMatchers

	/* filters */
	// TODO: softRequired      *bool       /* show all softRequired, don't show all softRequired, no-rule (parent might have one) */
	AlwaysInclude     []uuid.UUID /* add properties to always show */
	DontAlwaysInclude []uuid.UUID /* remove property from include list, which got added by a parent to it */
}
