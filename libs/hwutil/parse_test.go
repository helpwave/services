package hwutil_test

import (
	"fmt"
	"github.com/google/uuid"
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
func TestStringsToUUIDs(t *testing.T) {
	uuidStrings := []string{
		"48441b57-a92a-4022-bfd9-9ded5acdb693",
		"370472cf-0e4f-449f-a6a4-817d7e025552",
		"6dfbc1ef-6604-4b70-b528-e67624eff5b8",
		"d598a736-efe6-49ee-83ee-3fae5f7fd73b",
	}
	expected := []uuid.UUID{
		uuid.MustParse("48441b57-a92a-4022-bfd9-9ded5acdb693"),
		uuid.MustParse("370472cf-0e4f-449f-a6a4-817d7e025552"),
		uuid.MustParse("6dfbc1ef-6604-4b70-b528-e67624eff5b8"),
		uuid.MustParse("d598a736-efe6-49ee-83ee-3fae5f7fd73b"),
	}
	t.Run("uuidStrings", func(t *testing.T) {
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
}
