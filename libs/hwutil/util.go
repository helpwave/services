package hwutil

import "fmt"

func GetAddr() string {
	port := GetEnvOr("PORT", "8080")
	fallbackAddr := fmt.Sprintf(":%s", port)
	return GetEnvOr("ADDR", fallbackAddr)
}
