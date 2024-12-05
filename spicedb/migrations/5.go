package migrations

import (
	"context"
	"errors"
	"fmt"
	v1 "github.com/authzed/authzed-go/proto/authzed/api/v1"
	"github.com/authzed/authzed-go/v1"
	"io"
)

// This migration backfills existing org -> leader and org -> member relationships
// to user -> organization relationships

var _ = migrateHook(5, func(ctx context.Context, client *authzed.Client) {
	updates := make([]*v1.RelationshipUpdate, 0) // relationships to backfill

	for _, rel := range []string{"leader", "member"} {
		stream, err := client.ReadRelationships(ctx, &v1.ReadRelationshipsRequest{
			RelationshipFilter: &v1.RelationshipFilter{
				ResourceType:     "organization",
				OptionalRelation: rel,
			},
		})
		if err != nil {
			panic(err)
		}

		for {
			item, err := stream.Recv()
			if errors.Is(err, io.EOF) {
				// exit condition for for-loop
				break
			} else if err != nil {
				panic(fmt.Errorf("migration 5: could not read from stream: %w", err))
			}
			origRel := item.GetRelationship()

			newRel := &v1.Relationship{
				Resource: origRel.GetSubject().GetObject(),
				Relation: "organization",
				Subject: &v1.SubjectReference{
					Object: origRel.GetResource(),
				},
			}

			updates = append(updates, &v1.RelationshipUpdate{
				Operation:    v1.RelationshipUpdate_OPERATION_TOUCH, // create or ignore existing
				Relationship: newRel,
			})
		}
	}

	_, err := client.WriteRelationships(ctx, &v1.WriteRelationshipsRequest{
		Updates: updates,
	})
	if err != nil {
		panic(fmt.Errorf("migration 5: could not WriteRelationships: %w", err))
	}
})
