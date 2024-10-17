package main

import "updates-svc/cmd/service"

// Version is set at compile time
var Version string

func main() {
	service.Main(Version, nil)
}
