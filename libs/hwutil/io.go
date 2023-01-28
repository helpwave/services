package hwutil

import (
	"os"
)

// ReadFileOrEmpty will return the contents of a file or "" in case of error
func ReadFileOrEmpty(path string) string {
	data, err := os.ReadFile(path)
	if err != nil {
		return ""
	}
	return string(data)
}
