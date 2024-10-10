package hwutil

func Keys[K comparable, V any](mymap map[K]V) []K {
	// stolen from https://stackoverflow.com/a/27848197

	keys := make([]K, len(mymap))

	i := 0
	for k := range mymap {
		keys[i] = k
		i++
	}

	return keys
}
