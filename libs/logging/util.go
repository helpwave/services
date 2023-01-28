package logging

import (
	"fmt"
	"strings"
)

// Formatted formats anything but makes sure to encode newlines
func Formatted(arg any) string {
	return strings.Replace(fmt.Sprintf("%+v", arg), "\n", "\\n", -1)
}

// Omit redacts pattern from source
func Omit(source, pattern string) string {
	replacement := fmt.Sprintf("<%d chars omitted>", len(pattern))
	return strings.Replace(source, pattern, replacement, -1)
}
