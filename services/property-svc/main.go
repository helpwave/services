package main

import "property-svc/Main"

// Version is set at compile time
var Version string

func main() {
	Main.Main(Version, nil)
}
