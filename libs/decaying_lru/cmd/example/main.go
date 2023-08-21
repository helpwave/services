package main

import (
	"decaying_lru"
	"fmt"
	"time"
)

func must(err error) {
	if err != nil {
		panic(err)
	}
}

func main() {
	lru := decaying_lru.Setup("example", 10, 3, 1)

	must(lru.AddItemForUser("test", "1", "abc"))
	must(lru.AddItemForUser("test", "1", "def"))
	must(lru.AddItemForUser("test", "1", "ghi"))

	time.Sleep(5 * time.Second)

	must(lru.AddItemForUser("test", "1", "jkl"))
	must(lru.AddItemForUser("test", "1", "mno"))

	must(lru.RemoveItemForUser("test", "1", "mno"))

	values, err := lru.GetItemsForUser("test", "1")
	must(err)

	fmt.Println(values) // [jkl] due to the fact that [ghi,def,abc] are expired and [mno] was removed
}
