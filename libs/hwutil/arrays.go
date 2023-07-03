package hwutil

func Map[K any, V any](vs []K, f func(K) V) []V {
	vsm := make([]V, len(vs))
	for i, v := range vs {
		vsm[i] = f(v)
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
