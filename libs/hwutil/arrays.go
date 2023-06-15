package hwutil

func Map[K any, V any](vs []K, f func(K) V) []V {
	vsm := make([]V, len(vs))
	for i, v := range vs {
		vsm[i] = f(v)
	}
	return vsm
}

func Contains[K comparable](vs []K, f K) bool {
	for _, v := range vs {
		if v == f {
			return true
		}
	}
	return false
}
