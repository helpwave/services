package aggregate

import (
	"github.com/google/uuid"
	events "property-svc/internal/property-view/events/v1"
	"property-svc/internal/property-view/models"
)

func (a *PropertyViewRuleAggregate) Create(rule models.PropertyViewRule) error {
	event, err := events.NewPropertyRuleCreatedEvent(a, rule)
	if err != nil {
		return err
	}

	return a.Apply(event)
}

func (a *PropertyViewRuleAggregate) AppendLists(alwaysInclude []uuid.UUID, dontAlwaysInclude []uuid.UUID) error {

	event, err := events.NewPropertyRuleListsAppendedEvent(a, alwaysInclude, dontAlwaysInclude)
	if err != nil {
		return err
	}

	return a.Apply(event)
}
