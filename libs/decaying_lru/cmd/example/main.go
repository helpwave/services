//nolint:forbidigo
package main

import (
	"context"
	"fmt"
	"time"

	"decaying_lru"
)

func must(err error) {
	if err != nil {
		panic(err)
	}
}

const (
	size     int64 = 10
	inverseP int   = 1
)

func main() {
	ctx := context.Background()
	lru := decaying_lru.Setup(ctx, "example", size, time.Second, inverseP)

	must(lru.AddItemForUser(ctx, "test", "1", "abc"))
	must(lru.AddItemForUser(ctx, "test", "1", "def"))
	must(lru.AddItemForUser(ctx, "test", "1", "ghi"))

	time.Sleep(5 * time.Second)

	must(lru.AddItemForUser(ctx, "test", "1", "jkl"))
	must(lru.AddItemForUser(ctx, "test", "1", "mno"))

	must(lru.RemoveItemForUser(ctx, "test", "1", "mno"))

	values, err := lru.GetItemsForUser(ctx, "test", "1")
	must(err)

	// expecting: [jkl]
	// due to the fact that the whole key (with values [ghi,def,abc]) are expired and [mno] was removed
	fmt.Println(values)
}
