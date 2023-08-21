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

	must(lru.AddItem("test", "1", "abc"))
	must(lru.AddItem("test", "1", "def"))
	must(lru.AddItem("test", "1", "ghi"))

	time.Sleep(10 * time.Second)

	must(lru.AddItem("test", "1", "jkl"))

	values, err := lru.GetItems("test", "1")
	must(err)

	fmt.Println(values) // [jkl] due to the fact that [ghi,def,abc] are expired
}
