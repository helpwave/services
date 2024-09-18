package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"property-svc/internal/property-view/aggregate"
	"property-svc/internal/property-view/models"
)

type UpdatePropertyViewRuleCommandHandler func(context.Context, models.PropertyMatchers, []uuid.UUID, []uuid.UUID, []uuid.UUID, []uuid.UUID) (uint64, error)

func NewUpdatePropertyViewRuleCommandHandler(as hwes.AggregateStore) UpdatePropertyViewRuleCommandHandler {
	return func(ctx context.Context, matchers models.PropertyMatchers, appendToAlwaysInclude, removeFromAlwaysInclude, appendToDontAlwaysInclude, removeFromDontAlwaysInclude []uuid.UUID) (uint64, error) {

		ruleID, err := matchers.FindExactRuleId(ctx)
		if err != nil {
			return 0, err
		}

		// upsert
		var ruleAgg *aggregate.PropertyViewRuleAggregate
		if ruleID != nil {
			// update

			if ruleAgg, err = aggregate.LoadPropertyViewRuleAggregate(ctx, as, *ruleID); err != nil {
				return 0, err
			}

			if err := ruleAgg.UpdateLists(ctx, *ruleID, appendToAlwaysInclude, removeFromAlwaysInclude, appendToDontAlwaysInclude, removeFromDontAlwaysInclude); err != nil {
				return 0, err
			}
		} else {
			// create
			ruleID := uuid.New()
			ruleAgg = aggregate.NewPropertyViewRuleAggregate(ruleID)
			rule := models.PropertyViewRule{
				Matchers:          matchers,
				RuleId:            ruleID,
				AlwaysInclude:     appendToAlwaysInclude,
				DontAlwaysInclude: appendToDontAlwaysInclude,
				// remove makes no sense, ignoring
			}
			if err := ruleAgg.Create(ctx, rule); err != nil {
				return 0, err
			}
		}

		return as.Save(ctx, ruleAgg)
	}
}
