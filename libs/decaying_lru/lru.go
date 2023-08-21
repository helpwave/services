package decaying_lru

import (
	"context"
	"github.com/redis/go-redis/v9"
	"time"

	_ "embed"
)

type DecayingLRU struct {
	ctx         context.Context
	redisClient *redis.Client
	// time in seconds it takes for a key to decay after it was last written to
	decay time.Duration
	// size is the amount of items held in the LRU
	size int64
	// invP is the inverse of P
	// P is the probability of triggering a garbage collection
	// We expect a gc for a key to run every invP write instructions to this key
	invP int
}

func redisKey(key, userID string) string {
	return key + "-" + userID
}

//go:embed add.lua
var addScriptSource string
var addScript = redis.NewScript(addScriptSource)

// AddItemForKey is a low-level way to interact with the LRU,
// you probably want to work with AddItem instead
func (lru *DecayingLRU) AddItemForKey(key, value string) error {
	ctx := lru.ctx
	r := lru.redisClient
	keys := []string{key}

	// add(key, value, size, decay, inv_p)
	return addScript.Run(ctx, r, keys, value, lru.size, lru.decay, lru.invP).Err()
}

// GetItemsForKey is a low-level way to interact with the LRU,
// you probably want to work with GetItems instead
func (lru *DecayingLRU) GetItemsForKey(key string) ([]string, error) {
	ctx := lru.ctx
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
// you probably want to work with RemoveItem instead
func (lru *DecayingLRU) RemoveItemForKey(key, value string) error {
	return lru.redisClient.ZRem(lru.ctx, key, value).Err()
}

// AddItem adds an item for your key for a user,
// if you don't want to store information scoped to a user see AddItemForKey
func (lru *DecayingLRU) AddItem(key, userID, item string) error {
	return lru.AddItemForKey(redisKey(key, userID), item)
}

// GetItems gets items for your key for a user,
// if you don't want to access information scoped to a user see GetItemsForKey
func (lru *DecayingLRU) GetItems(key, userID string) ([]string, error) {
	return lru.GetItemsForKey(redisKey(key, userID))
}

// RemoveItem is a self-remove of an item from the LRU
// if you don't want to remove items scoped to a user see RemoveItemForKey
func (lru *DecayingLRU) RemoveItem(key, userID string, item string) error {
	return lru.RemoveItemForKey(redisKey(key, userID), item)
}
