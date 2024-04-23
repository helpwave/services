package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"property-svc/internal/property-view/aggregate"
	"property-svc/internal/property-view/models"
)

type UpdatePropertyViewRuleCommandHandler func(context.Context, models.PropertyMatchers, []uuid.UUID, []uuid.UUID) error

func NewUpdatePropertyViewRuleCommandHandler(as hwes.AggregateStore) UpdatePropertyViewRuleCommandHandler {
	return func(ctx context.Context, matchers models.PropertyMatchers, alwaysInclude []uuid.UUID, dontAlwaysInclude []uuid.UUID) error {

		rule, err := matchers.QueryRule(ctx)
		if err != nil {
			return err
		}

		var ruleAgg *aggregate.PropertyViewRuleAggregate
		if rule != nil {
			ruleAgg = aggregate.NewPropertyViewRuleAggregate(rule.RuleId)
			if err := as.Load(ctx, ruleAgg); err != nil {
				return err
			}

			if err := ruleAgg.AppendLists(alwaysInclude, dontAlwaysInclude); err != nil {
				return err
			}
		} else {
			ruleID := uuid.New()
			ruleAgg = aggregate.NewPropertyViewRuleAggregate(ruleID)
			rule := models.PropertyViewRule{
				RuleId:            ruleID,
				AlwaysInclude:     alwaysInclude,
				DontAlwaysInclude: dontAlwaysInclude,
			}
			if err := ruleAgg.Create(rule); err != nil {
				return err
			}
		}

		return as.Save(ctx, ruleAgg)
	}
}
