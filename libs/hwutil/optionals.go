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

// MapIf maps if cond true, else to nil
func MapIf[I, O any](cond bool, val I, f func(I) O) *O {
	if !cond {
		return nil
	} else {
		res := f(val)
		return &res
	}
}
