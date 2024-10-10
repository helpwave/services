package hwutil

import (
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestKeys(t *testing.T) {
	in := map[string]string{
		"A": "A",
		"B": "A",
		"C": "B",
	}
	out := []string{"A", "B", "C"}

	assert.Subset(t, out, Keys(in))
	assert.Len(t, Keys(in), len(out))
}
