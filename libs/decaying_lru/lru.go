package decaying_lru

import (
	"context"
	"time"

	"github.com/redis/go-redis/v9"
	zlog "github.com/rs/zerolog/log"

	_ "embed"
)

type DecayingLRU struct {
	redisClient *redis.Client
	// time in seconds it takes for a key to decay after it was last written to
	decay time.Duration
	// size is the amount of items held in the LRU
	size int64
	// invP is the inverse of P.
	// P is the probability of triggering a garbage collection
	// We expect a gc for a key to run every invP add calls to this key
	invP int
}

func redisKey(key, userID string) string {
	return key + "-" + userID
}

//go:embed add.lua
var addScriptSource string
var addScript = redis.NewScript(addScriptSource)

// AddItemForKey is a low-level way to interact with the LRU,
// you probably want to work with AddItemForUser instead
func (lru *DecayingLRU) AddItemForKey(ctx context.Context, key, value string) error {
	log := zlog.Ctx(ctx)
	r := lru.redisClient
	keys := []string{key}

	log.Trace().Str("key", key).Str("value", value).Msg("AddItemForKey")

	// add(key, value, size, decay, inv_p)
	// see add.lua
	return addScript.Run(ctx, r, keys, value, lru.size, lru.decay, lru.invP).Err()
}

// GetItemsForKey is a low-level way to interact with the LRU,
// you probably want to work with GetItemsForUser instead
func (lru *DecayingLRU) GetItemsForKey(ctx context.Context, key string) ([]string, error) {
	size := lru.size

	res := lru.redisClient.ZRangeArgs(ctx, redis.ZRangeArgs{
		Key:   key,
		Start: 0,
		Stop:  size - 1,
		Rev:   true,
	})

	return res.Result()
}

// RemoveItemForKey is a low-level way to interact with the LRU,
// you probably want to work with RemoveItemForUser instead
func (lru *DecayingLRU) RemoveItemForKey(ctx context.Context, key, value string) error {
	return lru.redisClient.ZRem(ctx, key, value).Err()
}

// AddItemForUser adds an item for your key for a user,
// if you don't want to store information scoped to a user see AddItemForKey
func (lru *DecayingLRU) AddItemForUser(ctx context.Context, key, userID, item string) error {
	return lru.AddItemForKey(ctx, redisKey(key, userID), item)
}

// GetItemsForUser gets items for your key for a user,
// if you don't want to access information scoped to a user see GetItemsForKey
func (lru *DecayingLRU) GetItemsForUser(ctx context.Context, key, userID string) ([]string, error) {
	return lru.GetItemsForKey(ctx, redisKey(key, userID))
}

// RemoveItemForUser removes an item from the LRU,
// if you don't want to remove items scoped to a user see RemoveItemForKey
func (lru *DecayingLRU) RemoveItemForUser(ctx context.Context, key, userID string, item string) error {
	return lru.RemoveItemForKey(ctx, redisKey(key, userID), item)
}
