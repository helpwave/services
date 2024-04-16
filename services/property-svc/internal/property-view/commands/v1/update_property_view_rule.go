package v1

import (
	"context"
	"errors"
	"property-svc/internal/property-view/models"
)

type UpdatePropertyViewRuleCommandHandler func(context.Context, models.PropertyMatchers) error

func NewUpdatePropertyViewRuleCommandHandler() UpdatePropertyViewRuleCommandHandler {
	return func(ctx context.Context, matchers models.PropertyMatchers) error {

		rule, err := matchers.QueryRule(ctx)
		if err != nil {
			return err
		}

		// TODO: create new aggregate with found projection, or a new one
		// TODO: create event

		return errors.New("not implemented")
	}
}
