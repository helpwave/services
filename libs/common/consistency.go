package common

import (
	"hwutil"
	"strconv"
)

type ConsistencyToken uint64

func (c ConsistencyToken) String() string {
	return strconv.FormatUint(uint64(c), 10)
}

func ParseConsistency(consistencyStr *string) (consistency *ConsistencyToken, success bool) {
	if consistencyStr == nil {
		return nil, true
	}
	if c, err := strconv.ParseUint(*consistencyStr, 10, 64); err != nil {
		return nil, false
	} else {
		return hwutil.PtrTo(ConsistencyToken(c)), true
	}
}
