package telemetry

import (
	"fmt"
	"github.com/fatih/structs"
	"strings"
)

type Loggable interface {
	// LoggableFields allows you to return a custom map, which a logger may use instead.
	// Useful for redacting information.
	LoggableFields() map[string]interface{}
}

// Formatted formats anything but makes sure to encode newlines
func Formatted(arg any) string {
	return strings.Replace(fmt.Sprintf("%+v", arg), "\n", "\\n", -1)
}

// Omit redacts pattern from source
func Omit(source, pattern string) string {
	replacement := fmt.Sprintf("<%d chars omitted>", len(pattern))
	return strings.Replace(source, pattern, replacement, -1)
}

// OmitAll redacts all
func OmitAll(source string) string {
	return fmt.Sprintf("[%d chars omitted]", len(source))
}

// StructToMap returns a key-value map for all public fields of the given struct.
// It respects the "json" tag name.
// It uses reflection and is based on an unmaintained package, so use sparsely.
func StructToMap(v any) map[string]interface{} {
	structs.DefaultTagName = "json"
	return structs.Map(v)
}
