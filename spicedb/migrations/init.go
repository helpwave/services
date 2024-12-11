package migrations

import (
	"context"

	"github.com/authzed/authzed-go/v1"
)

var Hooks = make(map[int]func(context.Context, *authzed.Client))

func migrateHook(version int, hook func(context.Context, *authzed.Client)) bool {
	Hooks[version] = hook
	return true // this function needs to return something
}
