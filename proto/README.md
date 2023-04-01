# Protobufs

We use [buf](https://buf.build) for code generation. It's dockerized, so you don't have to install it.

After any change run `make proto`, it will update `/gen`.

If you only want to lint your changes run `make proto_lint`.

The proto files are also used for API documentation. `make proto` will generate `/proto_docs`.

Said documentation is available [here](https://hw-proto-docs.pages.dev)

