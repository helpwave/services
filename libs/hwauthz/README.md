# `libs/hwauthz`

> helpwave authorization

Provides an SDK for Fine-Grained Authorization using a [Zanzibar](https://zanzibar.academy/)-like provider ([SpiceDB](https://authzed.com/docs/spicedb/getting-started/discovering-spicedb)).

## Feature flags

- `FEATURE_FLAG_HWAUTHZ_SPICEDB_CHECKS_ALWAYS_TRUE`

  The SpiceDB implementation of hwauthz.AuthZ.Check() returns always true when this flag is set to true
	
