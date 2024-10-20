//nolint:forbidigo
package main

import (
	"context"
	"errors"
	"fmt"
	"io"
	"os"
	"os/exec"
	"path/filepath"
	"strconv"
	"strings"

	"github.com/alecthomas/kong"
	v1 "github.com/authzed/authzed-go/proto/authzed/api/v1"
	"github.com/authzed/authzed-go/v1"
	"github.com/authzed/grpcutil"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/grpc/status"
	"gopkg.in/yaml.v3"
)

const (
	MigrationResourceType = "spice_schema_migrations/migration"
	MigrationResourceId   = "current"
	MigrationRelation     = "version"
	MigrationSubjectType  = "spice_schema_migrations/version"
)

// CLI is filled by kong.Parse in main
var CLI struct {
	Migrate struct {
		Force bool `help:"Skip schema version check."`
	} `cmd:"" help:"Migrate SpiceDB schema"`
	Schema    struct{} `cmd:"" help:"Print SpiceDB schema"`
	Test      struct{} `cmd:"" help:"Runs SpiceDB tests using zed"`
	Directory string   `flag:"" short:"d" type:"path" default:"./spicedb" help:"SpiceDB directory"`
	Endpoint  string   `flag:"" short:"e" env:"ZED_ENDPOINT" help:"e.g., 'spicedb:50051'"`
	Token     string   `flag:"" short:"t" env:"ZED_TOKEN" help:"SpiceDB token"`
	Insecure  bool     `flag:"" default:"false" env:"ZED_INSECURE" help:"connect over plaintext connection"`
}

func main() {
	ctx := kong.Parse(&CLI)
	switch ctx.Command() {
	case "migrate":
		migrateCmd()
	case "schema":
		schemaCmd()
	case "test":
		testCmd()
	default:
		panic(ctx.Command())
	}
}

// collectSchema finds all .zed files and concats them
func collectSchema() string {
	pattern := filepath.Join(CLI.Directory, "./*.zed")
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

// getDiskVersion parses the _version file
func getDiskVersion() int {
	content, err := os.ReadFile(filepath.Join(CLI.Directory, "_version"))
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

// getClient yields an authed.Client using CLI arguments
func getClient() *authzed.Client {
	endpoint := CLI.Endpoint
	token := CLI.Token
	insec := CLI.Insecure

	if endpoint == "" || token == "" {
		panic("endpoint and token must be set, see --help")
	}

	// set token
	var opts []grpc.DialOption
	if insec {
		fmt.Println("WARN: using insecure connection")
		opts = append(
			opts,
			grpcutil.WithInsecureBearerToken(token),
			grpc.WithTransportCredentials(insecure.NewCredentials()),
		)
	} else {
		// never tested this branch, might not work
		opts = append(opts, grpcutil.WithBearerToken(token))
	}

	// create client
	client, err := authzed.NewClient(endpoint, opts...)
	if err != nil {
		fmt.Println("Could not create SpiceDB client")
		panic(err)
	}
	return client
}

// getCurrentVersion queries existing relations to parse the currently deployed version of the schema
func getCurrentVersion(ctx context.Context, client *authzed.Client) int {
	// first, open a stream
	stream, err := client.ReadRelationships(ctx, &v1.ReadRelationshipsRequest{
		RelationshipFilter: &v1.RelationshipFilter{
			ResourceType:       MigrationResourceType,
			OptionalResourceId: MigrationResourceId,
			OptionalRelation:   MigrationRelation,
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
		if errors.Is(err, io.EOF) {
			return 0
		}
		if statusErr, ok := status.FromError(err); ok {
			if statusErr.Code() == codes.FailedPrecondition &&
				statusErr.Message() == "object definition `spice_schema_migrations/migration` not found" {
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
	if errors.Is(err, io.EOF) {
		panic("more than one version relation exist")
	}
	return i
}

// writeSchema writes a whole schema to spicedb
func writeSchema(ctx context.Context, client *authzed.Client, schema string) {
	_, err := client.WriteSchema(ctx, &v1.WriteSchemaRequest{Schema: schema})
	if err != nil {
		fmt.Println("could not write new schema")
		panic(err)
	}
}

// relationshipOfVersion yields a Relationship object, helper for updateCurrentVersion
func relationshipOfVersion(version int) *v1.Relationship {
	return &v1.Relationship{
		Resource: &v1.ObjectReference{
			ObjectType: MigrationResourceType,
			ObjectId:   MigrationResourceId,
		},
		Relation: MigrationRelation,
		Subject: &v1.SubjectReference{
			Object: &v1.ObjectReference{
				ObjectType: MigrationSubjectType,
				ObjectId:   strconv.Itoa(version),
			},
		},
	}
}

// updateCurrentVersion removes the old relation and adds a new relation (atomically)
func updateCurrentVersion(ctx context.Context, client *authzed.Client, oldVersion, newVersion int) {
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

// migrateCmd is the <migrate> command handler
func migrateCmd() {
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

// schemaCmd is the <schema> command handler
func schemaCmd() {
	schema := collectSchema()
	fmt.Print(schema)
}

//
// Test Yaml Structs
//

type TestRelationship = string

// TestCheck is parsed from either a string or a mapping of `not: string`
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

	// If it's not a string, try to unmarshal
	var obj struct {
		Not string `yaml:"not"`
	}

	err := node.Decode(&obj)
	if err != nil {
		return err
	}

	c.Value = obj.Not
	c.Not = true
	return nil
}

type TestValidate struct {
	Relation   string   `yaml:"relation"`
	Exhaustive []string `yaml:"exhaustive,omitempty"`
}

type TestBlock struct {
	Name     string         `yaml:"name,omitempty"`
	Check    []TestCheck    `yaml:"check,omitempty"`
	Validate []TestValidate `yaml:"validate,omitempty"`
}

type TestFile struct {
	Relationships []TestRelationship `yaml:"relationships"`
	Tests         []TestBlock        `yaml:"tests"`
}

type SpiceDBAssertion struct {
	AssertTrue  []string `yaml:"assertTrue,omitempty"`
	AssertFalse []string `yaml:"assertFalse,omitempty"`
}

// SpiceDBValidationFile is the schema zed uses for `zed validate`
type SpiceDBValidationFile struct {
	Schema        string              `yaml:"schema"`
	Relationships string              `yaml:"relationships,omitempty"`
	Assertions    SpiceDBAssertion    `yaml:"assertions,omitempty"`
	Validation    map[string][]string `yaml:"validation,omitempty"`
}

// execute runs a command with the same stdout and stdin as the current process
func execute(name string, arg ...string) {
	cmd := exec.Command(name, arg...)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	err := cmd.Run()
	if err != nil {
		panic(err)
	}
}

// readTestFile reads and parses a TestFile
func readTestFile(path string) (parsed TestFile) {
	content, err := os.ReadFile(path)
	if err != nil {
		fmt.Print("could not read file " + path)
		panic(err)
	}
	err = yaml.Unmarshal(content, &parsed)
	if err != nil {
		fmt.Println("could not parse " + path)
		panic(err)
	}
	return
}

// writeSpiceDBYaml marshals and write a SpiceDB file to disk
func writeSpiceDBYaml(file SpiceDBValidationFile, path string) {
	marshalled, err := yaml.Marshal(file)
	if err != nil {
		fmt.Println("could not marshal spicedb yaml for " + path)
		panic(err)
	}
	err = os.WriteFile(path, marshalled, 0o600)
	if err != nil {
		fmt.Println("could not write spicedb yaml for " + path)
		panic(err)
	}
}

// testCmd is the <test> command handler
func testCmd() {
	schema := collectSchema()

	// collect test yamls
	pattern := filepath.Join(CLI.Directory, "./*.test.yaml")
	files, err := filepath.Glob(pattern)
	if err != nil {
		fmt.Println("could not glob pattern " + pattern)
		panic(err)
	}

	// prepare fs
	buildDir := filepath.Join(CLI.Directory, "./build")
	_ = os.RemoveAll(buildDir)
	err = os.MkdirAll(buildDir, os.ModePerm)
	if err != nil {
		panic(err)
	}

	// handle test yamls
	for _, file := range files {
		parsed := readTestFile(file)

		// re-format assertions and validations
		assertions := SpiceDBAssertion{}
		validation := make(map[string][]string)

		for _, test := range parsed.Tests {
			for _, check := range test.Check {
				if check.Not {
					assertions.AssertFalse = append(assertions.AssertFalse, check.Value)
				} else {
					assertions.AssertTrue = append(assertions.AssertTrue, check.Value)
				}
			}

			for _, validate := range test.Validate {
				// I wonder how zed deals with multiple occurrences of the same subject here
				validation[validate.Relation] = append(validation[validate.Relation], validate.Exhaustive...)
			}
		}

		// write new spicedb.yaml
		outFilepath := filepath.Join(buildDir, filepath.Base(file))
		writeSpiceDBYaml(SpiceDBValidationFile{
			Schema:        schema,
			Relationships: strings.Join(parsed.Relationships, "\n"),
			Assertions:    assertions,
			Validation:    validation,
		}, outFilepath)

		// run zed validate
		fmt.Println(outFilepath)
		execute("zed", "validate", outFilepath)
	}
}
