package hwutil

import (
	"github.com/stretchr/testify/require"
	"testing"
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
