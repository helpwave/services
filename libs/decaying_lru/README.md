# decaying_lru

A module, which allows a service to leverage a redis-powered [LRU](https://en.wikipedia.org/wiki/Least_Recently_Used) which decays.
Such a data structure is, for example, needed for `recently-used` tracking.

A decaying LRU has a `size` and a `decay` time.
When a key is not updated for a user before the `decay` is reset, it gets evicted.
At most `size` results will be returned.

# Environment Variables

This module relies on the following environment variables:

| Name                  	| Type   	| Default     	| Description                                            	|
|-----------------------	|--------	|-------------	|--------------------------------------------------------	|
| REDIS_ADDR            	| string 	| _required_  	| "host:port" address of the redis server                	|
| REDIS_USER            	| string 	| _`<empty>`_ 	| Username to sign into redis with                       	|
| REDIS_PASSWORD        	| string 	| _`<empty>`_ 	| Password to sign into redis with                       	|
| REDIS_DB              	| int    	| 0           	| Database to be selected after connecting to the server 	|
| INSECURE_REDIS_NO_TLS 	| bool   	| false       	| Don't connect to redis server using TLS                	|
