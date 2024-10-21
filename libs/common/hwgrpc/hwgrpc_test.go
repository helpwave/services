package hwgrpc_test

import (
	"testing"

	"common/hwgrpc"
	"golang.org/x/text/language"
)

func arrayEq(t *testing.T, expected []language.Tag, parsed []language.Tag) {
	t.Helper()
	if len(expected) != len(parsed) {
		t.Errorf("expected len %d, got %d", len(expected), len(parsed))
		return
	}
	for i, v := range parsed {
		if v != expected[i] {
			t.Errorf("expected %v, got %v at index %d", expected[i], v, i)
		}
	}
}

func TestParseLocales(t *testing.T) {
	const mdnExample = "fr-CH, fr;q=0.9, en;q=0.8, de;q=0.7, *;q=0.5"
	expected := []language.Tag{language.MustParse("fr-CH"), language.French, language.English, language.German}
	parsed, ok := hwgrpc.ParseLocales(mdnExample)
	if !ok {
		t.Error("failed to parse")
		return
	}
	arrayEq(t, expected, parsed)
}

func TestParseLocalesReordered(t *testing.T) {
	const mdnExample = "fr-CH, de;q=0.7, en;q=0.8, fr;q=0.9, *;q=0.5"
	expected := []language.Tag{language.MustParse("fr-CH"), language.French, language.English, language.German}
	parsed, ok := hwgrpc.ParseLocales(mdnExample)
	if !ok {
		t.Error("failed to parse")
		return
	}
	arrayEq(t, expected, parsed)
}

func TestParseLocalesSimple(t *testing.T) {
	const mdnExample = "de"
	expected := []language.Tag{language.German}
	parsed, ok := hwgrpc.ParseLocales(mdnExample)
	if !ok {
		t.Error("failed to parse")
		return
	}
	arrayEq(t, expected, parsed)
}
