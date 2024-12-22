package hwutil

import (
	"testing"

	"github.com/stretchr/testify/require"
)

func TestWithout(t *testing.T) {
	tests := []struct {
		name           string
		original       []int
		itemsToRemove  []int
		expectedResult []int
	}{
		{
			name:           "Remove single item",
			original:       []int{1, 2, 3, 4},
			itemsToRemove:  []int{3},
			expectedResult: []int{1, 2, 4},
		},
		{
			name:           "Remove multiple items",
			original:       []int{1, 2, 3, 4, 5},
			itemsToRemove:  []int{2, 4},
			expectedResult: []int{1, 3, 5},
		},
		{
			name:           "No items to remove",
			original:       []int{1, 2, 3},
			itemsToRemove:  []int{},
			expectedResult: []int{1, 2, 3},
		},
		{
			name:           "Remove all items",
			original:       []int{1, 2, 3},
			itemsToRemove:  []int{1, 2, 3},
			expectedResult: []int{},
		},
		{
			name:           "Original is empty",
			original:       []int{},
			itemsToRemove:  []int{1, 2},
			expectedResult: []int{},
		},
		{
			name:           "No matching items to remove",
			original:       []int{1, 2, 3},
			itemsToRemove:  []int{4, 5},
			expectedResult: []int{1, 2, 3},
		},
		{
			name:           "Duplicate items in original",
			original:       []int{1, 2, 2, 3},
			itemsToRemove:  []int{2},
			expectedResult: []int{1, 3},
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			result := Without(tt.original, tt.itemsToRemove)
			require.Equal(t, tt.expectedResult, result)
		})
	}
}

func TestSameItems(t *testing.T) {
	tests := []struct {
		name           string
		a, b           []int
		expectedResult bool
	}{
		{
			name:           "Same elements in same order",
			a:              []int{1, 2, 3},
			b:              []int{1, 2, 3},
			expectedResult: true,
		},
		{
			name:           "Same elements in different order",
			a:              []int{1, 2, 3},
			b:              []int{3, 1, 2},
			expectedResult: true,
		},
		{
			name:           "Different elements",
			a:              []int{1, 2, 3},
			b:              []int{4, 5, 6},
			expectedResult: false,
		},
		{
			name:           "One array is empty",
			a:              []int{},
			b:              []int{1, 2, 3},
			expectedResult: false,
		},
		{
			name:           "Both arrays are empty",
			a:              []int{},
			b:              []int{},
			expectedResult: true,
		},
		{
			name:           "Arrays with duplicate elements",
			a:              []int{1, 2, 2, 3},
			b:              []int{1, 2, 3, 3},
			expectedResult: false,
		},
		{
			name:           "Different lengths, same unique elements",
			a:              []int{1, 2, 3},
			b:              []int{1, 2, 3, 3},
			expectedResult: false,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			result := SameItems(tt.a, tt.b)
			require.Equal(t, tt.expectedResult, result)
		})
	}
}
