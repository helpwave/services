package models

import (
	"context"
	"github.com/google/uuid"
)

// PropertyMatchers have to be safe to JSON marshal
type PropertyMatchers interface {
	// QueryRule queries (presumably the projection) for the one rule that has these matchers
	// MUST return (nil, nil) if no such rule exists
	// TODO: is it sufficient to only return the id?
	QueryRule(context.Context) (*PropertyViewRule, error)
}

type PropertyViewRule struct {
	RuleId uuid.UUID

	// TODO: never needed in go code I think Specificity int32 /* calculated by the database: calc_rule_specificity */

	/* matchers */
	// WardId    *string
	// SubjectId *string
	matchers PropertyMatchers

	/* filters */
	// TODO: softRequired      *bool       /* show all softRequired, don't show all softRequired, no-rule (parent might have one) */
	AlwaysInclude     []uuid.UUID /* add properties to always show */
	DontAlwaysInclude []uuid.UUID /* remove property from include list, which got added by a parent to it */
}
