# spicedb

We use [SpiceDB](https://authzed.com/docs/spicedb/getting-started/discovering-spicedb) for Fine-Grained Authorization.
However, we are not happy with the single-file approach, particularly to testing, that seems to be the standard for `zed`, the SpiceDB CLI tool.
That's why we wrote a tool that allows us to use an OpenFGA-like approach to testing. Additionally, the schema is split into `.zed` files, which will be concatenated by the tool for testing and migrations.

Usage see `go run cmd/spice/spice.go --help`.

When updating the schema, you must update the `_version` file in this directory!
