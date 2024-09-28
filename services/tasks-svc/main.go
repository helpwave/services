package main

import "tasks-svc/cmd/service"

// Version is set at compile time
var Version string

func main() {
	service.Main(Version, nil)
}
