package spicedb

import (
	"context"
	"hwtesting"
	"os"
	"os/signal"
	"strconv"
	"telemetry"
	"testing"
	"time"

	"github.com/google/uuid"

	zlog "github.com/rs/zerolog/log"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
	"hwauthz"
)

func TestMain(m *testing.M) {
	ctx, cancel := context.WithCancel(context.Background())

	zlog.Info().Msg("starting containers")
	endpoints, teardownContainers := hwtesting.StartContainers(ctx, hwtesting.Spice)
	spiceDBEndpoint := endpoints.Get(hwtesting.Spice)

	// prepare env
	hwtesting.SetCommonEnv()
	hwtesting.SetSpiceEnv(spiceDBEndpoint)

	hwtesting.MigrateSpiceDB(ctx, spiceDBEndpoint)

	telemetry.SetupLogging(
		"development",
		"trace",
		"spicedb_test.go",
		"testing",
	)

	// Run tests
	exitCode := m.Run()

	// cleanup and exit
	signal.Notify(make(chan os.Signal, 1), os.Interrupt)
	time.Sleep(time.Second)
	teardownContainers()
	cancel()
	os.Exit(exitCode)
}

type testObject struct {
	typ hwauthz.ObjectType
	id  string
}

func (s testObject) Type() hwauthz.ObjectType {
	return s.typ
}

func (s testObject) ID() string {
	return s.id
}

func TestBulkCheck(t *testing.T) {
	ctx := context.Background()
	client := NewSpiceDBAuthZ()

	// Create a few PermissionChecks

	amount := 5
	checks := make([]hwauthz.PermissionCheck, amount, amount+1)

	tx := hwauthz.NewTx(client, nil, nil)

	for i := range checks {
		sub := testObject{
			typ: "user",
			id:  strconv.Itoa(i),
		}
		relation := hwauthz.Permission("member")
		resc := testObject{
			typ: "organization",
			id:  strconv.Itoa(i),
		}
		checks[i] = hwauthz.NewPermissionCheck(sub, relation, resc)

		// create all even relationships
		if i%2 == 0 {
			tx.Create(checks[i])
		}
	}

	_, err := tx.Commit(ctx)
	require.NoError(t, err)

	// create a duplicate
	checks = append(checks, checks[len(checks)-1])

	// do bulk check

	results, err := client.BulkCheck(ctx, checks)
	require.NoError(t, err)
	require.Len(t, results, len(checks))

	for i, b := range results {
		if i == len(results)-1 {
			assert.Equal(t, results[len(results)-2], b)
		} else {
			assert.Equal(t, i%2 == 0, b, checks[i].String())
		}
	}
}

func TestLookupResources(t *testing.T) {
	ctx := context.Background()
	client := NewSpiceDBAuthZ()

	// preparations
	sub := testObject{
		typ: "user",
		id:  uuid.New().String(),
	}
	relation := hwauthz.Relation("member")

	// create test relations
	tx := hwauthz.NewTx(client, nil, nil)
	for i := range 3 {
		resc := testObject{
			typ: "organization",
			id:  strconv.Itoa(i),
		}
		relationship := hwauthz.NewRelationship(sub, relation, resc)
		tx.Create(relationship)
	}
	_, err := tx.Commit(ctx)
	require.NoError(t, err)

	// LookupResources
	subjects, err := client.LookupResources(ctx, sub, relation, "organization")
	require.NoError(t, err)

	// assert
	assert.ElementsMatch(t, []string{"0", "1", "2"}, subjects)
}
