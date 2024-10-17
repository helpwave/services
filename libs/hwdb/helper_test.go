package hwdb_test

import (
	"testing"

	"google.golang.org/protobuf/types/known/timestamppb"
	"hwdb"
)

func TestPbToTimestamp(t *testing.T) {
	t.Run("src = nil", func(t *testing.T) {
		if hwdb.PbToTimestamp(nil).Valid {
			t.Error()
		}
	})

	t.Run("src not nil", func(t *testing.T) {
		src := timestamppb.Timestamp{
			Seconds: 0,
			Nanos:   0,
		}
		res := hwdb.PbToTimestamp(&src)
		if !res.Valid {
			t.Error("returned ts with Valid = False")
		}

		if src.AsTime().UTC() != res.Time {
			t.Error("time was not constructed the way it should be")
		}
	})
}
