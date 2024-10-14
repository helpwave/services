package aggregate

import (
	"context"
	"github.com/google/uuid"
	events "property-svc/internal/property-view/events/v1"
	"property-svc/internal/property-view/models"
)

func (a *PropertyViewRuleAggregate) Create(ctx context.Context, rule models.PropertyViewRule) error {
	event, err := events.NewPropertyRuleCreatedEvent(ctx, a, rule)
	if err != nil {
		return err
	}

	return a.Apply(event)
}

func (a *PropertyViewRuleAggregate) UpdateLists(
	ctx context.Context,
	ruleId uuid.UUID,
	appendToAlwaysInclude,
	removeFromAlwaysInclude,
	appendToDontAlwaysInclude,
	removeFromDontAlwaysInclude []uuid.UUID,
) error {

	event, err := events.NewPropertyRuleListsUpdatedEvent(ctx,
		a,
		ruleId,
		appendToAlwaysInclude,
		removeFromAlwaysInclude,
		appendToDontAlwaysInclude,
		removeFromDontAlwaysInclude,
	)
	if err != nil {
		return err
	}

	return a.Apply(event)
}
