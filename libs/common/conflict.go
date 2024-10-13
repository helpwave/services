package common

type Conflict[T any] struct {
	Is  T
	Was T
}
