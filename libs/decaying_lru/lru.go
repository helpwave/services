package decaying_lru

import (
	"context"
	"github.com/redis/go-redis/v9"
	"github.com/rs/zerolog/log"
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

func member(item interface{}) redis.Z {
	now := float64(time.Now().Unix())
	return redis.Z{
		Score:  now,
		Member: item,
	}
}

// AddItemForKeySlow is a low-level way to interact with the LRU,
// you probably want to work with AddItem instead
func (lru *DecayingLRU) AddItemForKeySlow(key string, item interface{}) error {
	ctx := lru.ctx

	// First update the expiry for the key
	// We do this first, else there is the possibility of
	// expiring before we extend the life and losing the write op
	cmd1 := lru.redisClient.Expire(ctx, key, lru.decay)

	if err := cmd1.Err(); err != nil {
		log.Warn().
			Err(err).
			Str("key", key).
			Msg("could not Expire() key")
	}

	// now update the Sorted Set,
	// we use the current time as the score for the item,
	// so ZREVRANGE will give us the LRUsed items
	cmd2 := lru.redisClient.ZAdd(ctx, key, member(item))

	_, err := cmd2.Result()

	return err
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

// AddItem adds an item for your key for a user,
// if you don't want to store information scoped to a user see AddItemForKey
func (lru *DecayingLRU) AddItem(key, userID, item string) error {
	return lru.AddItemForKey(key+"-"+userID, item)
}

// GetItems gets items for your key for a user,
// if you don't want to access information scoped to a user see GetItemsForKey
func (lru *DecayingLRU) GetItems(key, userID string) ([]string, error) {
	return lru.GetItemsForKey(key + "-" + userID)
}
