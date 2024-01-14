package hwes_test

import (
	"github.com/google/uuid"
	"hwes"
	"testing"
)

func TestResolveAggregateIDAndTypeFromStreamID(t *testing.T) {
	testCases := []struct {
		streamID              string
		expectedError         bool
		expectedAggregateType hwes.AggregateType
		expectedAggregateID   uuid.UUID
	}{
		{
			streamID:              "task-d9027be3-d00f-4eec-b50e-5f489df20433",
			expectedError:         false,
			expectedAggregateType: hwes.AggregateType("task"),
			expectedAggregateID:   uuid.MustParse("d9027be3-d00f-4eec-b50e-5f489df20433"),
		},
		{
			streamID:      "",
			expectedError: true,
		},
		{
			streamID:      "-",
			expectedError: true,
		},
		{
			streamID:      "task-",
			expectedError: true,
		},
		{
			streamID:      "-d9027be3-d00f-4eec-b50e-5f489df20433",
			expectedError: true,
		},
		{
			streamID:      "task-123",
			expectedError: true,
		},
	}

	for _, testCase := range testCases {
		aggregateType, aggregateID, err := hwes.ResolveAggregateIDAndTypeFromStreamID(testCase.streamID)
		if err != nil && testCase.expectedError {
			continue
		} else if err != nil {
			t.Error(err)
		}

		if aggregateType != testCase.expectedAggregateType {
			t.Errorf("invalid aggregate type. expected '%s' got '%s'.", testCase.expectedAggregateType, aggregateType)
		}

		if aggregateID != testCase.expectedAggregateID {
			t.Errorf("invalid aggregate id. expected '%s' got '%s'.", testCase.expectedAggregateID, aggregateID)
		}
	}
}
