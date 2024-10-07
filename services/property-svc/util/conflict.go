package util

import (
	"fmt"
	commonpb "gen/libs/common/v1"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/types/known/anypb"
)

// AttributeConflict is a constructor for commonpb.AttributeConflicts
// I'd love to move this somewhere else, but I also don't want common to depend on gen (and thus hwdb, hwes, ...)
func AttributeConflict(is, want proto.Message) (*commonpb.AttributeConflict, error) {
	var err error

	var wantAny *anypb.Any
	if want != nil {
		wantAny, err = anypb.New(want)
		if err != nil {
			return nil, fmt.Errorf("AttributeConflict could not marshal want: %w", err)
		}
	}

	var isAny *anypb.Any
	if is != nil {
		isAny, err = anypb.New(is)
		if err != nil {
			return nil, fmt.Errorf("AttributeConflict could not marshal is: %w", err)
		}
	}

	return &commonpb.AttributeConflict{
		Is:   isAny,
		Want: wantAny,
	}, nil
}
