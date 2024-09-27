package stories

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	"github.com/stretchr/testify/assert"
	"google.golang.org/protobuf/types/known/timestamppb"
	"math"
	"strconv"
	"strings"
	"testing"
	"time"
)

func TestUpdateTaskConflict_Name(t *testing.T) {
	ctx := context.Background()
	taskClient := taskServiceClient()

	patientId := preparePatient(t, ctx, "")

	A := "A"
	B := "B"
	C := "C"

	// Only testing HumanReadableIdentifier
	testMatrix := []struct {
		was            string
		is             string
		want           *string
		expectConflict bool
	}{
		{A, B, nil, false},
		{A, B, &B, false},
		{A, B, &C, true},
		{A, A, &C, false},
	}

	for i, o := range testMatrix {
		t.Run(t.Name()+"_"+strconv.Itoa(i), func(t *testing.T) {
			// WAS
			task, err := taskClient.CreateTask(ctx, &pb.CreateTaskRequest{
				Name:           o.was,
				Description:    nil,
				PatientId:      patientId,
				Public:         nil,
				DueAt:          nil,
				InitialStatus:  nil,
				AssignedUserId: nil,
				Subtasks:       nil,
			})
			assert.NoError(t, err)

			id := task.Id
			initialConsistency := task.Consistency

			// IS
			_, err = taskClient.UpdateTask(ctx, &pb.UpdateTaskRequest{
				Id:          id,
				Name:        &o.is,
				Consistency: &initialConsistency,
			})
			assert.NoError(t, err)

			// WANT
			updateRes, err := taskClient.UpdateTask(ctx, &pb.UpdateTaskRequest{
				Id:          id,
				Name:        o.want,
				Consistency: &initialConsistency,
			})
			assert.NoError(t, err)

			// EXPECT
			assert.Equal(t, o.expectConflict, updateRes.Conflict != nil)
			if o.expectConflict {
				conflict := updateRes.Conflict.ConflictingAttributes["name"]
				assert.NotNil(t, conflict)
				exp := "is:{[type.googleapis.com/google.protobuf.StringValue]:{value:\"B\"}} " +
					"want:{[type.googleapis.com/google.protobuf.StringValue]:{value:\"C\"}}"
				assert.Equal(t, exp, strings.Replace(conflict.String(), "  ", " ", 1))
			}
		})
	}
}

func TestUpdateTaskConflict_Description(t *testing.T) {
	ctx := context.Background()
	taskClient := taskServiceClient()

	patientId := preparePatient(t, ctx, "")

	A := "A"
	B := "B"
	C := "C"

	// Only testing HumanReadableIdentifier
	testMatrix := []struct {
		was            string
		is             string
		want           *string
		expectConflict bool
	}{
		{A, B, nil, false},
		{A, B, &B, false},
		{A, B, &C, true},
		{A, A, &C, false},
	}

	for i, o := range testMatrix {
		t.Run(t.Name()+"_"+strconv.Itoa(i), func(t *testing.T) {
			// WAS
			task, err := taskClient.CreateTask(ctx, &pb.CreateTaskRequest{
				Name:           t.Name(),
				Description:    &o.was,
				PatientId:      patientId,
				Public:         nil,
				DueAt:          nil,
				InitialStatus:  nil,
				AssignedUserId: nil,
				Subtasks:       nil,
			})
			assert.NoError(t, err)

			id := task.Id
			initialConsistency := task.Consistency

			// IS
			_, err = taskClient.UpdateTask(ctx, &pb.UpdateTaskRequest{
				Id:          id,
				Description: &o.is,
				Consistency: &initialConsistency,
			})
			assert.NoError(t, err)

			// WANT
			updateRes, err := taskClient.UpdateTask(ctx, &pb.UpdateTaskRequest{
				Id:          id,
				Description: o.want,
				Consistency: &initialConsistency,
			})
			assert.NoError(t, err)

			// EXPECT
			assert.Equal(t, o.expectConflict, updateRes.Conflict != nil)
			if o.expectConflict {
				conflict := updateRes.Conflict.ConflictingAttributes["description"]
				assert.NotNil(t, conflict)
				exp := "is:{[type.googleapis.com/google.protobuf.StringValue]:{value:\"B\"}} " +
					"want:{[type.googleapis.com/google.protobuf.StringValue]:{value:\"C\"}}"
				assert.Equal(t, exp, strings.Replace(conflict.String(), "  ", " ", 1))
			}
		})
	}
}

func TestUpdateTaskConflict_DueAt(t *testing.T) {
	ctx := context.Background()
	taskClient := taskServiceClient()

	patientId := preparePatient(t, ctx, "")

	A := timestamppb.New(time.Now())
	B := timestamppb.New(time.Now().Add(time.Hour))
	C := timestamppb.New(time.Now().Add(time.Hour * 2))

	// Only testing HumanReadableIdentifier
	testMatrix := []struct {
		was            *timestamppb.Timestamp
		is             *timestamppb.Timestamp
		want           *timestamppb.Timestamp
		expectConflict bool
	}{
		{A, B, nil, false},
		{A, B, B, false},
		{A, B, C, true},
		{A, A, C, false},
		{nil, B, C, true},
		{nil, C, C, false},
	}

	for i, o := range testMatrix {
		t.Run(t.Name()+"_"+strconv.Itoa(i), func(t *testing.T) {
			// WAS
			task, err := taskClient.CreateTask(ctx, &pb.CreateTaskRequest{
				Name:           t.Name(),
				Description:    nil,
				PatientId:      patientId,
				Public:         nil,
				DueAt:          o.was,
				InitialStatus:  nil,
				AssignedUserId: nil,
				Subtasks:       nil,
			})
			assert.NoError(t, err)

			id := task.Id
			initialConsistency := task.Consistency

			// IS
			_, err = taskClient.UpdateTask(ctx, &pb.UpdateTaskRequest{
				Id:          id,
				DueAt:       o.is,
				Consistency: &initialConsistency,
			})
			assert.NoError(t, err)

			// WANT
			updateRes, err := taskClient.UpdateTask(ctx, &pb.UpdateTaskRequest{
				Id:          id,
				DueAt:       o.want,
				Consistency: &initialConsistency,
			})
			assert.NoError(t, err)

			// EXPECT
			assert.Equal(t, o.expectConflict, updateRes.Conflict != nil)
			if o.expectConflict {
				conflict := updateRes.Conflict.ConflictingAttributes["due_at"]
				assert.NotNil(t, conflict)
				exp := "is:{[type.googleapis.com/google.protobuf.Timestamp]:{" + o.is.String() + "}} " +
					"want:{[type.googleapis.com/google.protobuf.Timestamp]:{" + o.want.String() + "}}"
				assert.Equal(t,
					strings.Replace(exp, "  ", " ", math.MaxInt),
					strings.Replace(conflict.String(), "  ", " ", math.MaxInt),
				)
			}
		})
	}
}

func TestUpdateTaskConflict_Status(t *testing.T) {
	ctx := context.Background()
	taskClient := taskServiceClient()

	patientId := preparePatient(t, ctx, "")

	A := pb.TaskStatus_TASK_STATUS_TODO
	B := pb.TaskStatus_TASK_STATUS_IN_PROGRESS
	C := pb.TaskStatus_TASK_STATUS_DONE

	// Only testing HumanReadableIdentifier
	testMatrix := []struct {
		was            pb.TaskStatus
		is             *pb.TaskStatus
		want           *pb.TaskStatus
		expectConflict bool
	}{
		{A, &B, nil, false},
		{A, &B, &B, false},
		{A, &B, &C, true},
		{A, &A, &C, false},
	}

	for i, o := range testMatrix {
		t.Run(t.Name()+"_"+strconv.Itoa(i), func(t *testing.T) {
			// WAS
			task, err := taskClient.CreateTask(ctx, &pb.CreateTaskRequest{
				Name:           t.Name(),
				Description:    nil,
				PatientId:      patientId,
				Public:         nil,
				DueAt:          nil,
				InitialStatus:  &o.was,
				AssignedUserId: nil,
				Subtasks:       nil,
			})
			assert.NoError(t, err)

			id := task.Id
			initialConsistency := task.Consistency

			// IS
			_, err = taskClient.UpdateTask(ctx, &pb.UpdateTaskRequest{
				Id:          id,
				Status:      o.is,
				Consistency: &initialConsistency,
			})
			assert.NoError(t, err)

			// WANT
			updateRes, err := taskClient.UpdateTask(ctx, &pb.UpdateTaskRequest{
				Id:          id,
				Status:      o.want,
				Consistency: &initialConsistency,
			})
			assert.NoError(t, err)

			// EXPECT
			assert.Equal(t, o.expectConflict, updateRes.Conflict != nil)
			if o.expectConflict {
				conflict := updateRes.Conflict.ConflictingAttributes["status"]
				assert.NotNil(t, conflict)
				exp := "want:{[type.googleapis.com/google.protobuf.Int32Value]:{value:" + strconv.Itoa(int(*o.want)) + "}}"

				if o.is != nil {
					exp = "is:{[type.googleapis.com/google.protobuf.Int32Value]:{value:" + strconv.Itoa(int(*o.is)) + "}} " +
						"want:{[type.googleapis.com/google.protobuf.Int32Value]:{value:" + strconv.Itoa(int(*o.want)) + "}}"
				}
				assert.Equal(t, exp, strings.Replace(conflict.String(), "  ", " ", 1))
			}
		})
	}
}
