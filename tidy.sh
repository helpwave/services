#! /bin/bash

N=3
for i in `seq $N`; do
	echo "== Run $i of $N =="
	find -type d -name gen -prune -o -name "go.mod" -exec sh -c 'cd $(dirname {}) && pwd && go mod tidy' \;
done

