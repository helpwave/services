package hwutil

// MapNillable maps a nillable value (i.e. pointer)
// to another pointer using a function
// If ptr is nil, it will not attempt to dereference and return nil instead
func MapNillable[I, O any](ptr *I, f func(I) O) *O {
	if ptr == nil {
		return nil
	} else {
		res := f(*ptr)
		return &res
	}
}
