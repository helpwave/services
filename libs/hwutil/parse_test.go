package hwutil_test

import (
	"errors"
	"fmt"
	"testing"

	"github.com/google/uuid"
	"github.com/stretchr/testify/assert"
	"hwutil"
)

func runPtrToTest[T comparable](t *testing.T, v T) {
	t.Helper()
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

func TestStringsToUUIDs(t *testing.T) {
	t.Run("valid uuids", func(t *testing.T) {
		uuidStrings := []string{
			"48441b57-a92a-4022-bfd9-9ded5acdb693",
			"370472cf-0e4f-449f-a6a4-817d7e025552",
		}
		expected := []uuid.UUID{
			uuid.MustParse("48441b57-a92a-4022-bfd9-9ded5acdb693"),
			uuid.MustParse("370472cf-0e4f-449f-a6a4-817d7e025552"),
		}

		actual, err := hwutil.StringsToUUIDs(uuidStrings)
		if err != nil {
			t.Errorf("expected no error, got error: %v", err)
			return
		}
		if len(actual) != len(expected) {
			t.Errorf("expected length: %v, actual length: %v", len(expected), len(actual))
			return
		}
		for i, id := range actual {
			if id != expected[i] {
				t.Errorf("expected[%v]: %v, actual[%v]: %v", i, id, i, expected[i])
				return
			}
		}
	})

	t.Run("invalid uuids", func(t *testing.T) {
		uuidStrings := []string{
			"48441b57-a92a-4022-bfd9-9ded5acdb693",
			"asdasdasdsadsadadadsa",
		}
		_, expErr := uuid.Parse("asdasdasdsadsadadadsa")

		_, err := hwutil.StringsToUUIDs(uuidStrings)
		if !errors.Is(err, expErr) {
			t.Errorf("expected error: %v, actual error: %v", expErr, err)
		}
	})

	t.Run("empty", func(t *testing.T) {
		uuidStrings := []string{}
		actual, err := hwutil.StringsToUUIDs(uuidStrings)
		if err != nil {
			t.Errorf("expected no error, got: %v", err)
		}
		if len(actual) != 0 {
			t.Errorf("expected: [], got: %v", actual)
		}
	})
}

func TestInterfacesToStrings(t *testing.T) {
	t.Run("ok path", func(t *testing.T) {
		expected := []string{
			"48441b57-a92a-4022-bfd9-9ded5acdb693",
			"Unit Test",
		}
		interfaces := []interface{}{
			"48441b57-a92a-4022-bfd9-9ded5acdb693",
			"Unit Test",
		}

		strings, ok := hwutil.InterfacesToStrings(interfaces)

		assert.True(t, ok)
		assert.Equal(t, expected, strings)
	})

	t.Run("not ok path", func(t *testing.T) {
		interfaces := []interface{}{
			"48441b57-a92a-4022-bfd9-9ded5acdb693",
			123,
			[]string{"Test"},
		}

		_, ok := hwutil.InterfacesToStrings(interfaces)
		assert.False(t, ok)
	})
}
