package hwtesting

import (
	"context"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"strings"

	spicedb "github.com/Mariscal6/testcontainers-spicedb-go"
	spicev1 "github.com/authzed/authzed-go/proto/authzed/api/v1"
	"github.com/authzed/authzed-go/v1"
	"github.com/authzed/grpcutil"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	spiceMigrate "hwauthz/spicedb/migrate"
)

const (
	ImageSpiceDB = "authzed/spicedb:spicev1.31.0"
	SpiceDBToken = "helpwave"
)

func startSpiceDB(ctx context.Context) (endpoint string, teardown func()) {
	container, err := spicedb.Run(ctx, ImageSpiceDB, spicedb.SecretKeyCustomizer{SecretKey: SpiceDBToken})
	if err != nil {
		zlog.Fatal().Err(err).Msg("could not start spicedb")
	}
	endpoint = container.GetEndpoint(ctx)
	return endpoint, func() {
		if err := container.Terminate(ctx); err != nil {
			zlog.Fatal().Err(err).Msg("could not stop spicedb")
		}
	}
}

func SetSpiceEnv(endpoint string) {
	err := os.Setenv("ZED_ENDPOINT", endpoint)
	if err != nil {
		zlog.Fatal().Err(err).Msg("could not set ZED_ENDPOINT")
	}
	err = os.Setenv("ZED_TOKEN", SpiceDBToken)
	if err != nil {
		zlog.Fatal().Err(err).Msg("could not set ZED_TOKEN")
	}
}

func getRepoRoot() string {
	cmdOut, err := exec.Command("git", "rev-parse", "--show-toplevel").Output()
	if err != nil {
		panic(fmt.Errorf("could not get repo root: %w", err))
	}
	return strings.TrimSpace(string(cmdOut))
}

func MigrateSpiceDB(ctx context.Context, endpoint string) {
	// Run SpiceDB migration
	spiceClient, err := authzed.NewClient(
		endpoint, grpcutil.WithInsecureBearerToken(SpiceDBToken),
		grpc.WithTransportCredentials(insecure.NewCredentials()),
	)
	if err != nil {
		panic(fmt.Errorf("could not get spicedb client for migration: %w", err))
	}
	spiceMigrate.Migrate(ctx,
		filepath.Join(getRepoRoot(), "spicedb"),
		spiceClient,
	)

	// add the README user to its org
	_, err = spiceClient.WriteRelationships(ctx, &spicev1.WriteRelationshipsRequest{
		Updates: []*spicev1.RelationshipUpdate{{
			Operation: spicev1.RelationshipUpdate_OPERATION_CREATE,
			Relationship: &spicev1.Relationship{
				Resource: &spicev1.ObjectReference{
					ObjectType: "organization",
					ObjectId:   FakeTokenOrganization,
				},
				Relation: "member",
				Subject: &spicev1.SubjectReference{
					Object: &spicev1.ObjectReference{
						ObjectType: "user",
						ObjectId:   FakeTokenUser,
					},
				},
			},
		}},
	})
	if err != nil {
		panic(fmt.Errorf("could not write relation: %w", err))
	}
}
