package aggregate_test

import (
	"common/auth"
	"context"
	v1 "gen/libs/common/v1"
	"hwes"
	"testing"
	"time"

	"github.com/stretchr/testify/require"

	"github.com/google/uuid"

	"tasks-svc/internal/patient/aggregate"
	patientEventsV1 "tasks-svc/internal/patient/events/v1"
)

func MustApplyEvent(t *testing.T, aggregate hwes.Aggregate, newEvent func() (hwes.Event, error)) {
	t.Helper()

	event, err := newEvent()
	if err != nil {
		t.Error(err)
	}

	if err := aggregate.Progress(event); err != nil {
		t.Error(err)
	}
}

func TestPatientAggregate_CreatePatient(t *testing.T) {
	ctx := context.Background()
	ctx = auth.ContextWithUserID(ctx, uuid.New())
	ctx = auth.ContextWithOrganizationID(ctx, uuid.New())

	patientID := uuid.New()

	patientHumanReadableIdentifier := "tester"
	patientNotes := "test-notes"
	gender := v1.Gender_GENDER_DIVERSE
	dateOfBirth := time.Now().UTC()

	patientAggregate := aggregate.NewPatientAggregate(patientID)

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewPatientCreatedEvent(
			ctx,
			patientAggregate,
			patientID,
			patientHumanReadableIdentifier,
			patientNotes,
			gender,
			&dateOfBirth,
		)
	})

	require.Equal(t, patientHumanReadableIdentifier, patientAggregate.Patient.HumanReadableIdentifier)
	require.Equal(t, patientNotes, patientAggregate.Patient.Notes)
	require.Equal(t, gender, patientAggregate.Patient.Gender)
	require.Equal(t, dateOfBirth, *patientAggregate.Patient.DateOfBirth)
}

func TestPatientAggregate_UpdateNotes(t *testing.T) {
	ctx := context.Background()
	ctx = auth.ContextWithUserID(ctx, uuid.New())
	ctx = auth.ContextWithOrganizationID(ctx, uuid.New())

	patientID := uuid.New()

	patientHumanReadableIdentifier := "tester"
	initialPatientNotes := "test notes"
	updatedPatientNotes := "test notes updated"

	patientAggregate := aggregate.NewPatientAggregate(patientID)

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewPatientCreatedEvent(
			ctx,
			patientAggregate,
			patientID,
			patientHumanReadableIdentifier,
			initialPatientNotes,
			v1.Gender_GENDER_UNSPECIFIED,
			nil,
		)
	})

	require.Equal(t, initialPatientNotes, patientAggregate.Patient.Notes)

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewNotesUpdatedEvent(ctx, patientAggregate, updatedPatientNotes)
	})

	require.Equal(t, updatedPatientNotes, patientAggregate.Patient.Notes)
}

func TestPatientAggregate_UpdateHumanReadableIdentifier(t *testing.T) {
	ctx := context.Background()
	ctx = auth.ContextWithUserID(ctx, uuid.New())
	ctx = auth.ContextWithOrganizationID(ctx, uuid.New())

	patientID := uuid.New()

	initialPatientHumanReadableIdentifier := "tester"
	updatedPatientHumanReadableIdentifier := "tester updated"

	patientAggregate := aggregate.NewPatientAggregate(patientID)

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewPatientCreatedEvent(
			ctx,
			patientAggregate,
			patientID,
			initialPatientHumanReadableIdentifier,
			"",
			v1.Gender_GENDER_UNSPECIFIED,
			nil,
		)
	})

	require.Equal(t, initialPatientHumanReadableIdentifier, patientAggregate.Patient.HumanReadableIdentifier)

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewHumanReadableIdentifierUpdatedEvent(
			ctx,
			patientAggregate,
			updatedPatientHumanReadableIdentifier,
		)
	})
	require.Equal(t, updatedPatientHumanReadableIdentifier, patientAggregate.Patient.HumanReadableIdentifier)
}

func TestPatientAggregate_UpdateGender(t *testing.T) {
	ctx := context.Background()
	ctx = auth.ContextWithUserID(ctx, uuid.New())
	ctx = auth.ContextWithOrganizationID(ctx, uuid.New())

	patientID := uuid.New()

	patientAggregate := aggregate.NewPatientAggregate(patientID)

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewPatientCreatedEvent(
			ctx,
			patientAggregate,
			patientID,
			t.Name(),
			"",
			v1.Gender_GENDER_UNSPECIFIED,
			nil,
		)
	})

	require.Equal(t, v1.Gender_GENDER_UNSPECIFIED, patientAggregate.Patient.Gender)

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewGenderUpdatedEvent(
			ctx,
			patientAggregate,
			v1.Gender_GENDER_DIVERSE,
		)
	})
	require.Equal(t, v1.Gender_GENDER_DIVERSE, patientAggregate.Patient.Gender)
}

func TestPatientAggregate_UpdateDateOfBirth(t *testing.T) {
	ctx := context.Background()
	ctx = auth.ContextWithUserID(ctx, uuid.New())
	ctx = auth.ContextWithOrganizationID(ctx, uuid.New())

	patientID := uuid.New()

	patientAggregate := aggregate.NewPatientAggregate(patientID)

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewPatientCreatedEvent(
			ctx,
			patientAggregate,
			patientID,
			t.Name(),
			"",
			v1.Gender_GENDER_UNSPECIFIED,
			nil,
		)
	})

	newDoB := time.Now().UTC()

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewDateOfBirthUpdatedEvent(
			ctx,
			patientAggregate,
			newDoB,
		)
	})
	require.Equal(t, newDoB, *patientAggregate.Patient.DateOfBirth)
}

func TestPatientAggregate_DischargeReadmitPatient(t *testing.T) {
	ctx := context.Background()
	ctx = auth.ContextWithUserID(ctx, uuid.New())
	ctx = auth.ContextWithOrganizationID(ctx, uuid.New())

	patientID := uuid.New()
	patientHumanReadableIdentifier := "tester"
	patientAggregate := aggregate.NewPatientAggregate(patientID)

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewPatientCreatedEvent(
			ctx,
			patientAggregate,
			patientID,
			patientHumanReadableIdentifier,
			"",
			v1.Gender_GENDER_UNSPECIFIED,
			nil,
		)
	})

	require.Equal(t, patientHumanReadableIdentifier, patientAggregate.Patient.HumanReadableIdentifier)

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewPatientDischargedEvent(ctx, patientAggregate)
	})

	if !patientAggregate.Patient.IsDischarged {
		t.Error("Patient has not been discharged")
	}

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewPatientReadmittedEvent(ctx, patientAggregate)
	})

	if patientAggregate.Patient.IsDischarged {
		t.Error("Patient has not been readmitted")
	}
}

func TestPatientAggregate_AssignUnassignBed(t *testing.T) {
	ctx := context.Background()
	ctx = auth.ContextWithUserID(ctx, uuid.New())
	ctx = auth.ContextWithOrganizationID(ctx, uuid.New())

	patientID := uuid.New()

	newBedID := uuid.New()
	patientHumanReadableIdentifier := "tester"
	patientAggregate := aggregate.NewPatientAggregate(patientID)

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewPatientCreatedEvent(
			ctx,
			patientAggregate,
			patientID,
			patientHumanReadableIdentifier,
			"",
			v1.Gender_GENDER_UNSPECIFIED,
			nil,
		)
	})

	require.Equal(t, patientHumanReadableIdentifier, patientAggregate.Patient.HumanReadableIdentifier)

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewBedAssignedEvent(ctx, patientAggregate, newBedID)
	})

	require.Equal(t, newBedID, patientAggregate.Patient.BedID.UUID)

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewBedUnassignedEvent(ctx, patientAggregate)
	})

	require.Equal(t, uuid.Nil, patientAggregate.Patient.BedID.UUID)
}

func TestPatientAggregate_DeletePatient(t *testing.T) {
	ctx := auth.ContextWithUserID(context.Background(), uuid.New())

	patientID := uuid.New()

	humanRI := "Test Patient"
	notes := ""

	patientAggregate := aggregate.NewPatientAggregate(patientID)

	err := patientAggregate.CreatePatient(
		ctx,
		humanRI,
		notes,
		v1.Gender_GENDER_UNSPECIFIED,
		nil,
	)
	require.NoError(t, err)

	if err := patientAggregate.DeletePatient(ctx); err != nil {
		t.Error(err)
	}

	if !patientAggregate.IsDeleted() {
		t.Errorf("Expected task to be deleted")
	}
}
