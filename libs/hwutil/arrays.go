package hwutil

func Filter[K any](array []K, condition func(value K) bool) []K {
	var result []K

	for _, value := range array {
		if condition(value) {
			result = append(result, value)
		}
	}

	return result
}

// Partition returns the subarrays, for which the condition is (true, false)
func Partition[K any](array []K, condition func(value K) bool) ([]K, []K) {
	var in []K
	var out []K

	for _, value := range array {
		if condition(value) {
			in = append(in, value)
		} else {
			out = append(out, value)
		}
	}

	return in, out
}

func Map[K any, V any](vs []K, f func(K) V) []V {
	vsm := make([]V, len(vs))
	for i, v := range vs {
		vsm[i] = f(v)
	}
	return vsm
}

func FlatMap[K any, V any](vs []K, f func(K) *V) []V {
	var vsm []V
	for _, key := range vs {
		if vPtr := f(key); vPtr != nil {
			vsm = append(vsm, *vPtr)
		}
	}
	return vsm
}

func MapWithErr[K any, V any](vs []K, f func(K) (V, error)) ([]V, error) {
	vsm := make([]V, len(vs))
	for i, v := range vs {
		v, err := f(v)
		if err != nil {
			return nil, err
		}
		vsm[i] = v
	}
	return vsm, nil
}

func Contains[K comparable](vs []K, f K) bool {
	for _, v := range vs {
		if v == f {
			return true
		}
	}
	return false
}

func CountElements[K any](values []K, condition func(K) bool) int {
	count := 0
	for _, value := range values {
		if condition(value) {
			count++
		}
	}
	return count
}

// Prepend prepends a single value to a slice and returns it
func Prepend[T any](value T, slice []T) []T {
	return append([]T{value}, slice...)
}

func SliceToSet[T comparable](ts []T) map[T]bool {
	unique := make(map[T]bool, len(ts))

	for _, t := range ts {
		unique[t] = true
	}
	return unique
}

// MergeSlicesWithSet merges two slices, only keeping unique elements once, not stable the resulting order may be arbitrary
// unlike MergeSlices, also returns the set of unique values
func MergeSlicesWithSet[T comparable](as, bs []T) ([]T, map[T]bool) {
	unique := make(map[T]bool, len(as)+len(bs))

	for _, a := range as {
		unique[a] = true
	}

	for _, b := range bs {
		unique[b] = true
	}

	merged := make([]T, 0, len(unique))

	for el := range unique {
		merged = append(merged, el)
	}

	return merged, unique
}

// MergeSlices merges two slices, only keeping unique elements once, not stable the resulting order may be arbitrary
func MergeSlices[T comparable](as, bs []T) []T {
	r, _ := MergeSlicesWithSet(as, bs)
	return r
}
