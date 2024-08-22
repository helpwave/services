package main

import (
	"context"
	"fmt"
	"github.com/alecthomas/kong"
	v1 "github.com/authzed/authzed-go/proto/authzed/api/v1"
	"github.com/authzed/authzed-go/v1"
	"github.com/authzed/grpcutil"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"gopkg.in/yaml.v3"
	"io"
	"os"
	"os/exec"
	"path/filepath"
	"strconv"
	"strings"
)

var CLI struct {
	Migrate struct {
		Force bool `help:"Skip schema version check."`
	} `cmd:"" help:"Migrate SpiceDB schema"`
	Schema struct {
	} `cmd:"" help:"Print SpiceDB schema"`
	Test struct{} `cmd:"" help:"Runs SpiceDB tests"`
}

func main() {
	ctx := kong.Parse(&CLI)
	switch ctx.Command() {
	case "migrate":
		migrateCmd(ctx)
	case "schema":
		schemaCmd(ctx)
	case "test":
		testCmd(ctx)
	default:
		panic(ctx.Command())
	}
}

func collectSchema() string {
	matches, err := filepath.Glob("../spicedb/*.zed")
	if err != nil {
		panic(err)
	}
	schema := ""
	for _, match := range matches {
		content, err := os.ReadFile(match)
		if err != nil {
			fmt.Println("could not read " + match)
			panic(err)
		}
		schema += "\n// " + filepath.Base(match) + "\n\n" + string(content)
	}
	return schema
}

func getDiskVersion() int {
	content, err := os.ReadFile("../spicedb/_version")
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

func getClient() *authzed.Client {
	endpoint := os.Getenv("ZED_ENDPOINT")
	token := os.Getenv("ZED_TOKEN")

	client, err := authzed.NewClient(
		endpoint,
		grpcutil.WithInsecureBearerToken(token),
		grpc.WithTransportCredentials(insecure.NewCredentials()),
	)
	if err != nil {
		fmt.Println("Could not create SpiceDB client")
		panic(err)
	}
	return client
}

func getCurrentVersion(ctx context.Context, client *authzed.Client) int {
	stream, err := client.ReadRelationships(ctx, &v1.ReadRelationshipsRequest{
		RelationshipFilter: &v1.RelationshipFilter{
			ResourceType:       "spice_schema_migrations/migration",
			OptionalResourceId: "current",
			OptionalRelation:   "version",
		},
		OptionalLimit: 0,
	})
	if err != nil {
		fmt.Println("could not read relationships")
		panic(err)
	}
	response, err := stream.Recv()
	if err != nil {
		if err == io.EOF {
			return 0
		}
		fmt.Println("could not read relationships")
		panic(err)
	}
	versionStr := response.Relationship.Subject.Object.ObjectId
	i, err := strconv.Atoi(versionStr)
	if err != nil {
		fmt.Println("current version is not a number")
	}
	_, err = stream.Recv()
	if err != io.EOF {
		panic("more than one version relation exist")
	}
	return i
}

func writeSchema(ctx context.Context, client *authzed.Client, schema string) {
	_, err := client.WriteSchema(ctx, &v1.WriteSchemaRequest{Schema: schema})
	if err != nil {
		fmt.Println("could not write new schema")
		panic(err)
	}
}

func updateCurrentVersion(ctx context.Context, client *authzed.Client, oldVersion, newVersion int) {
	_, err := client.WriteRelationships(ctx, &v1.WriteRelationshipsRequest{
		Updates: []*v1.RelationshipUpdate{
			{
				Operation: v1.RelationshipUpdate_OPERATION_TOUCH,
				Relationship: &v1.Relationship{
					Resource: &v1.ObjectReference{
						ObjectType: "spice_schema_migrations/migration",
						ObjectId:   "current",
					},
					Relation: "version",
					Subject: &v1.SubjectReference{
						Object: &v1.ObjectReference{
							ObjectType: "spice_schema_migrations/version",
							ObjectId:   strconv.Itoa(newVersion),
						},
					},
				},
			},
			{
				Operation: v1.RelationshipUpdate_OPERATION_DELETE,
				Relationship: &v1.Relationship{
					Resource: &v1.ObjectReference{
						ObjectType: "spice_schema_migrations/migration",
						ObjectId:   "current",
					},
					Relation: "version",
					Subject: &v1.SubjectReference{
						Object: &v1.ObjectReference{
							ObjectType: "spice_schema_migrations/version",
							ObjectId:   strconv.Itoa(oldVersion),
						},
					},
				},
			},
		},
	})
	if err != nil {
		fmt.Println("could not update version")
		panic(err)
	}
}

func migrateCmd(kctx *kong.Context) {
	ctx := context.Background()

	client := getClient()

	diskVersion := getDiskVersion()
	currentVersion := getCurrentVersion(ctx, client)

	fmt.Printf("current: %d, expected: %d\n", currentVersion, diskVersion)
	if diskVersion == currentVersion {
		fmt.Println("no action needed")
		return
	} else if diskVersion < currentVersion {
		fmt.Println("WARN: you are running an old schema version")
		return
	}

	fmt.Println("migrating")

	writeSchema(ctx, client, collectSchema())
	updateCurrentVersion(ctx, client, currentVersion, diskVersion)

	fmt.Println("done")
}

func schemaCmd(kctx *kong.Context) {
	schema := collectSchema()
	fmt.Print(schema)
}

type TestRelationship = string

type TestCheck struct {
	Not   bool
	Value TestRelationship
}

func (c *TestCheck) UnmarshalYAML(node *yaml.Node) error {
	// node is a string
	if node.Kind == yaml.ScalarNode {
		c.Value = node.Value
		c.Not = false
		return nil
	}
	// If it's not a simple string, try to unmarshal
	var obj struct {
		Not string `yaml:"not"`
	}

	err := node.Decode(&obj)
	if err == nil {
		c.Value = obj.Not
		c.Not = true
		return nil
	}
	return err
}

type TestBlock struct {
	Name  string      `yaml:"name,omitempty"`
	Check []TestCheck `yaml:"check,omitempty"`
}
type TestFile struct {
	Relationships []TestRelationship `yaml:"relationships"`
	Tests         []TestBlock        `yaml:"tests"`
}

type SpiceDBAssertion struct {
	AssertTrue  []string `yaml:"assertTrue,omitempty"`
	AssertFalse []string `yaml:"assertFalse,omitempty"`
}

type SpiceDBValidationFile struct {
	Schema        string           `yaml:"schema"`
	Relationships string           `yaml:"relationships,omitempty"`
	Assertions    SpiceDBAssertion `yaml:"assertions,omitempty"`

	// TODO: validation
}

func testCmd(kctx *kong.Context) {
	schema := collectSchema()
	files, err := filepath.Glob("../spicedb/*.test.yaml")
	if err != nil {
		panic(err)
	}
	_ = os.RemoveAll("../spicedb/build")
	err = os.MkdirAll("../spicedb/build", os.ModePerm)
	if err != nil {
		panic(err)
	}

	for _, file := range files {
		content, err := os.ReadFile(file)
		if err != nil {
			fmt.Print("could not read file " + file)
			panic(err)
		}
		var parsed TestFile
		err = yaml.Unmarshal(content, &parsed)
		if err != nil {
			fmt.Println("could not parse " + file)
			panic(err)
		}
		spicedbValidationFile := SpiceDBValidationFile{
			Schema:        schema,
			Relationships: "",
			Assertions:    SpiceDBAssertion{},
		}
		for _, relationship := range parsed.Relationships {
			spicedbValidationFile.Relationships += relationship + "\n"
		}
		for _, test := range parsed.Tests {
			for _, check := range test.Check {
				if check.Not {
					spicedbValidationFile.Assertions.AssertFalse = append(spicedbValidationFile.Assertions.AssertFalse, check.Value)
				} else {
					spicedbValidationFile.Assertions.AssertTrue = append(spicedbValidationFile.Assertions.AssertTrue, check.Value)
				}
			}
		}
		marshalled, err := yaml.Marshal(spicedbValidationFile)
		if err != nil {
			fmt.Println("could not marshal spicedb yaml for " + file)
			panic(err)
		}
		newFilepath := "../spicedb/build/" + filepath.Base(file)
		err = os.WriteFile(newFilepath, marshalled, 0644)
		if err != nil {
			fmt.Println("could not write spicedb yaml for " + file)
			panic(err)
		}
		fmt.Println(newFilepath)
		cmd := exec.Command("zed", "validate", newFilepath)
		cmd.Stdout = os.Stdout
		cmd.Stderr = os.Stderr
		err = cmd.Run()
		if err != nil {
			panic(err)
		}
	}
}
