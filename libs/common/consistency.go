package common

import "strconv"

type ConsistencyToken uint64

func (c ConsistencyToken) String() string {
	return strconv.FormatUint(uint64(c), 10)
}
