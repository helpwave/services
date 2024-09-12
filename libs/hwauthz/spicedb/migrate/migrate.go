package migrate

import (
	"context"
	"fmt"
	v1 "github.com/authzed/authzed-go/proto/authzed/api/v1"
	"github.com/authzed/authzed-go/v1"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"io"
	"os"
	"path/filepath"
	"strconv"
	"strings"
)

//
// This module is intended for CLIs, and thus panics, instead of returning errors
//

const migrationResourceType = "spice_schema_migrations/migration"
const migrationResourceId = "current"
const migrationRelation = "version"
const migrationSubjectType = "spice_schema_migrations/version"

// GetCurrentVersion queries existing relations to parse the currently deployed version of the schema
func GetCurrentVersion(ctx context.Context, client *authzed.Client) int {
	// first, open a stream
	stream, err := client.ReadRelationships(ctx, &v1.ReadRelationshipsRequest{
		RelationshipFilter: &v1.RelationshipFilter{
			ResourceType:       migrationResourceType,
			OptionalResourceId: migrationResourceId,
			OptionalRelation:   migrationRelation,
		},
		OptionalLimit: 0,
	})
	if err != nil {
		fmt.Println("could not open relationship stream")
		panic(err)
	}

	// now collect the first element
	response, err := stream.Recv()
	if err != nil {
		if err == io.EOF {
			return 0
		}
		if statusErr, ok := status.FromError(err); ok {
			if statusErr.Code() == codes.FailedPrecondition && statusErr.Message() == "object definition `spice_schema_migrations/migration` not found" {
				return 0
			}
		}
		fmt.Println("could not read relationships")
		panic(err)
	}

	// parse id to int
	versionStr := response.Relationship.Subject.Object.ObjectId
	i, err := strconv.Atoi(versionStr)
	if err != nil {
		fmt.Println("current version is not a number")
	}

	// if more relations exist, the version is not clear, user must fix it
	_, err = stream.Recv()
	if err != io.EOF {
		panic("more than one version relation exist")
	}
	return i
}

// CollectSchema finds all .zed files and concats them
func CollectSchema(schemaDir string) string {
	pattern := filepath.Join(schemaDir, "./*.zed")
	matches, err := filepath.Glob(pattern)
	if err != nil {
		fmt.Println("cant glob " + pattern)
		panic(err)
	}

	var schema string

	for _, file := range matches {
		content, err := os.ReadFile(file)
		if err != nil {
			fmt.Println("could not read " + file)
			panic(err)
		}

		head := "\n//\n// " + filepath.Base(file) + "\n//\n\n"
		schema += head + string(content)
	}
	return schema
}

// WriteSchema writes a whole schema to spicedb
func WriteSchema(ctx context.Context, client *authzed.Client, schema string) {
	_, err := client.WriteSchema(ctx, &v1.WriteSchemaRequest{Schema: schema})
	if err != nil {
		fmt.Println("could not write new schema")
		panic(err)
	}
}

// relationshipOfVersion yields a Relationship object, helper for UpdateCurrentVersion
func relationshipOfVersion(version int) *v1.Relationship {
	return &v1.Relationship{
		Resource: &v1.ObjectReference{
			ObjectType: migrationResourceType,
			ObjectId:   migrationResourceId,
		},
		Relation: migrationRelation,
		Subject: &v1.SubjectReference{
			Object: &v1.ObjectReference{
				ObjectType: migrationSubjectType,
				ObjectId:   strconv.Itoa(version),
			},
		},
	}
}

// UpdateCurrentVersion removes the old relation and adds a new relation (atomically)
func UpdateCurrentVersion(ctx context.Context, client *authzed.Client, oldVersion, newVersion int) {
	_, err := client.WriteRelationships(ctx, &v1.WriteRelationshipsRequest{
		Updates: []*v1.RelationshipUpdate{
			{
				Operation:    v1.RelationshipUpdate_OPERATION_TOUCH, // Create newVersion Relation
				Relationship: relationshipOfVersion(newVersion),
			},
			{
				Operation:    v1.RelationshipUpdate_OPERATION_DELETE, // Delete oldVersion Relation
				Relationship: relationshipOfVersion(oldVersion),
			},
		},
	})
	if err != nil {
		fmt.Println("could not update version")
		panic(err)
	}
}

// GetDiskVersion parses the _version file
func GetDiskVersion(schemaDir string) int {
	content, err := os.ReadFile(filepath.Join(schemaDir, "_version"))
	if err != nil {
		fmt.Println("could not read _version")
		panic(err)
	}
	contentStr := strings.TrimSpace(string(content))
	i, err := strconv.Atoi(contentStr)
	if err != nil {
		fmt.Println("_version content not a number")
	}
	return i
}

func Migrate(ctx context.Context, schemaDir string, client *authzed.Client) {
	diskVersion := GetDiskVersion(schemaDir)
	currentVersion := GetCurrentVersion(ctx, client)

	fmt.Printf("current: %d, expected: %d\n", currentVersion, diskVersion)
	if diskVersion == currentVersion {
		fmt.Println("no action needed")
		return
	} else if diskVersion < currentVersion {
		fmt.Println("WARN: you are running an old schema version")
		return
	}

	fmt.Println("migrating")

	WriteSchema(ctx, client, CollectSchema(schemaDir))
	UpdateCurrentVersion(ctx, client, currentVersion, diskVersion)

	fmt.Println("done")
}
