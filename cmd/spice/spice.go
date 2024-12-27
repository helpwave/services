//nolint:forbidigo
package main

import (
	"context"
	"fmt"
	hooks "hooks"
	"hwauthz/spicedb/migrate"
	"os"
	"os/exec"
	"path/filepath"
	"strings"

	"github.com/authzed/authzed-go/v1"
	"gopkg.in/yaml.v3"

	"github.com/alecthomas/kong"
	"github.com/authzed/grpcutil"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
)

// CLI is filled by kong.Parse in main
var CLI struct {
	Migrate struct {
		Force bool `help:"Skip schema version check."`
	} `cmd:"" help:"Migrate SpiceDB schema"`
	Schema    struct{} `cmd:"" help:"Print SpiceDB schema"`
	Test      struct{} `cmd:"" help:"Runs SpiceDB tests using zed"`
	Directory string   `flag:"" short:"d" type:"path" default:"./spicedb" help:"SpiceDB directory"`
	Endpoint  string   `flag:"" short:"e" env:"ZED_ENDPOINT" help:"e.g., 'spicedb:50051'"`                   //nolint:tagliatelle,lll
	Token     string   `flag:"" short:"t" env:"ZED_TOKEN" help:"SpiceDB token"`                              //nolint:tagliatelle,lll
	Insecure  bool     `flag:"" default:"false" env:"ZED_INSECURE" help:"connect over plaintext connection"` //nolint:tagliatelle,lll
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
	return migrate.CollectSchema(CLI.Directory)
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

// migrateCmd is the <migrate> command handler
func migrateCmd() {
	migrate.Migrate(context.Background(), CLI.Directory, getClient(), hooks.Hooks)
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
