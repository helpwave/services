package hwutil_test

import (
	"fmt"
	"testing"

	"hwutil"
)

type testCase[T comparable] struct {
	haystack []T
	needle   T
	expected bool
}

func runTestContains[T comparable](t *testing.T, testCase testCase[T]) {
	t.Helper()
	t.Run(fmt.Sprintf("contains %v the value %v", testCase.haystack, testCase.needle), func(t *testing.T) {
		got := hwutil.Contains(testCase.haystack, testCase.needle)
		if testCase.expected != got {
			t.Errorf("expected %t, got %t", testCase.expected, got)
		}
	})
}

func TestContains(t *testing.T) {
	runTestContains(t, testCase[string]{
		haystack: []string{"ABC", "DEF", "GHI"},
		needle:   "DEF",
		expected: true,
	})

	runTestContains(t, testCase[string]{
		haystack: []string{"ABC", "DEF", "GHI"},
		needle:   "JKL",
		expected: false,
	})

	runTestContains(t, testCase[string]{
		haystack: []string{"ABC", "DEF", "GHI"},
		needle:   "",
		expected: false,
	})

	runTestContains(t, testCase[uint32]{
		haystack: []uint32{123, 456, 789},
		needle:   456,
		expected: true,
	})

	runTestContains(t, testCase[uint32]{
		haystack: []uint32{123, 456, 789},
		needle:   0,
		expected: false,
	})

	runTestContains(t, testCase[uint32]{
		haystack: []uint32{123, 456, 789},
		needle:   1,
		expected: false,
	})
}
