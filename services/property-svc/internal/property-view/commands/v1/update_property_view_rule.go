package v1

import (
	"common"
	"context"
	"hwauthz"
	"hwes"

	"github.com/google/uuid"

	"property-svc/internal/property-view/aggregate"
	"property-svc/internal/property-view/models"
)

type UpdatePropertyViewRuleCommandHandler func(
	ctx context.Context,
	matchers models.PropertyMatchers,
	appendToAlwaysInclude,
	removeFromAlwaysInclude,
	appendToDontAlwaysInclude,
	removeFromDontAlwaysInclude []uuid.UUID,
) (common.ConsistencyToken, error)

func NewUpdatePropertyViewRuleCommandHandler(
	as hwes.AggregateStore, authz hwauthz.AuthZ,
) UpdatePropertyViewRuleCommandHandler {
	return func(
		ctx context.Context,
		matchers models.PropertyMatchers,
		appendToAlwaysInclude,
		removeFromAlwaysInclude,
		appendToDontAlwaysInclude,
		removeFromDontAlwaysInclude []uuid.UUID,
	) (common.ConsistencyToken, error) {
		// check permissions
		if err := matchers.UserMustBeAllowedToUpdateRule(ctx, authz); err != nil {
			return 0, err
		}

		ruleID, err := matchers.FindExactRuleID(ctx)
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

			if err := ruleAgg.UpdateLists(
				ctx,
				*ruleID,
				appendToAlwaysInclude,
				removeFromAlwaysInclude,
				appendToDontAlwaysInclude,
				removeFromDontAlwaysInclude,
			); err != nil {
				return 0, err
			}
		} else {
			// create
			ruleID := uuid.New()
			ruleAgg = aggregate.NewPropertyViewRuleAggregate(ruleID)
			rule := models.PropertyViewRule{
				Matchers:          matchers,
				RuleID:            ruleID,
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
