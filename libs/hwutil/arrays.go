package hwutil

func Filter[K any](array []K, condition func(index int, value K) bool) []K {
	var result []K

	for i, value := range array {
		if condition(i, value) {
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

// FlatMapI is FlatMap, but also provides you with the index of the current element
func FlatMapI[K any, V any](vs []K, f func(int, K) *V) []V {
	var vsm []V
	for i, key := range vs {
		if vPtr := f(i, key); vPtr != nil {
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

func SetToSlice[T comparable](set map[T]bool) []T {
	slice := make([]T, 0, len(set))
	for key, t := range set {
		if t {
			slice = append(slice, key)
		}
	}

	return slice
}

func MapValuesPtrToSlice[K comparable, V any](set map[K]*V) []V {
	slice := make([]V, 0, len(set))
	for _, p := range set {
		if p != nil {
			slice = append(slice, *p)
		}
	}

	return slice
}

// MergeSlicesWithSet merges two slices, only keeping unique elements once,
// not stable the resulting order may be arbitrary
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

func SliceAsStringSlice(as []interface{}) ([]string, bool) {
	bs := make([]string, len(as))
	for i, v := range as {
		s, ok := v.(string)
		if !ok {
			return nil, false
		}
		bs[i] = s
	}

	return bs, true
}

func InterfaceAsStringSlice(a interface{}) ([]string, bool) {
	if as, ok := a.([]interface{}); !ok {
		if as == nil {
			return make([]string, 0), true
		}
		return nil, false
	} else {
		return SliceAsStringSlice(as)
	}
}

// OrEmptySlice returns the slice or, if it is nil, an empty slice of its type
func OrEmptySlice[T any](as []T) []T {
	if as != nil {
		return as
	}

	return make([]T, 0)
}

func Without[T comparable](original, itemsToRemove []T) []T {
	// Create a map for quick lookup of items to remove
	toRemove := make(map[T]bool)
	for _, item := range itemsToRemove {
		toRemove[item] = true
	}

	result := make([]T, 0)
	for _, item := range original {
		if _, exists := toRemove[item]; !exists {
			result = append(result, item)
		}
	}

	return result
}

// SameItems yields true, iff a and b have the same elements (order may vary!)
func SameItems[T comparable](a, b []T) bool {
	if len(a) != len(b) {
		return false
	}

	A := make(map[T]int)
	for _, item := range a {
		A[item] += 1
	}

	B := make(map[T]int)
	for _, item := range b {
		B[item] += 1
	}

	// Compare the maps
	for key, in := range A {
		if B[key] != in {
			return false
		}
	}

	return true
}
