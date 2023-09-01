package hwutil_test

import (
	"fmt"
	"hwutil"
	"testing"
)

func runPtrToTest[T comparable](t *testing.T, v T) {
	t.Run(fmt.Sprintf("test value %v as %T", v, v), func(t *testing.T) {
		vPtr := hwutil.PtrTo(v)
		if v != *vPtr {
			t.Errorf("expected %v, got %v", v, *vPtr)
		}
	})
}

func TestPtrTo(t *testing.T) {
	runPtrToTest(t, true)
	runPtrToTest(t, "Hello world")
	runPtrToTest(t, 123)
	runPtrToTest(t, struct {
		name string
		age  int
	}{
		name: "Testine Test",
		age:  20,
	})
}
