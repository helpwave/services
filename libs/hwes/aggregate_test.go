// Not in a separate hwes_test package to test the private resolveAggregateIDAndTypeFromStreamID()
package hwes

import (
	"testing"

	"github.com/google/uuid"
)

func TestResolveAggregateIDAndTypeFromStreamID(t *testing.T) {
	testCases := []struct {
		streamID              string
		expectedError         bool
		expectedAggregateType AggregateType
		expectedAggregateID   uuid.UUID
	}{
		{
			streamID:              "task-d9027be3-d00f-4eec-b50e-5f489df20433",
			expectedError:         false,
			expectedAggregateType: AggregateType("task"),
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
		aggregateID, aggregateType, err := resolveAggregateIDAndTypeFromStreamID(testCase.streamID)
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
