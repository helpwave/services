package hwes_test

import (
	"context"
	"errors"
	"testing"

	"github.com/google/uuid"
	"hwes"
	"hwes/test"
)

type UserModel struct {
	ID       uuid.UUID
	Username string
}

func NewUserModel() *UserModel {
	return &UserModel{}
}

const UserAggregateType = "user"

type UserAggregate struct {
	*hwes.AggregateBase
	User *UserModel
}

func (a *UserAggregate) onUserCreated(evt hwes.Event) error {
	var payload UserCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	id, err := uuid.Parse(payload.ID)
	if err != nil {
		return err
	}

	a.User.ID = id
	a.User.Username = payload.Username

	return nil
}

func (a *UserAggregate) onUsernameUpdated(evt hwes.Event) error {
	var payload UsernameUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	a.User.Username = payload.Username

	return nil
}

func NewUserAggregate(id uuid.UUID) *UserAggregate {
	aggregate := &UserAggregate{User: NewUserModel()}
	aggregate.AggregateBase = hwes.NewAggregateBase(UserAggregateType, id)
	aggregate.User.ID = id

	aggregate.
		RegisterEventListener(UserCreated, aggregate.onUserCreated).
		RegisterEventListener(UsernameUpdated, aggregate.onUsernameUpdated)

	return aggregate
}

const UserInvalidEvent = "USER_INVALID_EVENT"

func NewUserInvalidEvent(a hwes.Aggregate) (hwes.Event, error) {
	return hwes.NewEvent(a, UserInvalidEvent)
}

const UserCreated = "USER_CREATED"

type UserCreatedEvent struct {
	ID       string
	Username string
}

func NewUserCreatedEvent(a hwes.Aggregate, id uuid.UUID, username string) (hwes.Event, error) {
	payload := UserCreatedEvent{
		ID:       id.String(),
		Username: username,
	}
	return hwes.NewEvent(a, UserCreated, hwes.WithData(&payload))
}

const UsernameUpdated = "USER_UPDATED"

type UsernameUpdatedEvent struct {
	PreviousUsername string
	Username         string
}

func NewUsernameUpdatedEvent(a hwes.Aggregate, previousUsername, username string) (hwes.Event, error) {
	payload := UsernameUpdatedEvent{
		PreviousUsername: previousUsername,
		Username:         username,
	}
	return hwes.NewEvent(a, UsernameUpdated, hwes.WithData(&payload))
}

func TestIntegration(t *testing.T) {
	ctx := context.Background()
	aggregateStore := test.NewAggregateStore()

	id := uuid.New()
	userAggregate := NewUserAggregate(id)

	// Apply USER_CREATED event

	userCreatedEvent, err := NewUserCreatedEvent(userAggregate, id, "testine.test")
	if err != nil {
		t.Fatal(err)
	}

	if err := userAggregate.Apply(userCreatedEvent); err != nil {
		t.Fatal(err)
	}

	// Apply USERNAME_UPDATED event

	usernameUpdatedEvent, err := NewUsernameUpdatedEvent(userAggregate, userAggregate.User.Username, "testine.test")
	if err != nil {
		t.Fatal(err)
	}

	if err := userAggregate.Apply(usernameUpdatedEvent); err != nil {
		t.Fatal(err)
	}

	if _, err := aggregateStore.Save(ctx, userAggregate); err != nil {
		t.Fatal(err)
	}

	// Now load

	loadedUserAggregate := NewUserAggregate(id)
	if err := aggregateStore.Load(ctx, loadedUserAggregate); err != nil {
		t.Fatal(err)
	}

	if loadedUserAggregate.User.ID != id {
		t.Fatal("invalid id")
	}

	if loadedUserAggregate.User.Username != "testine.test" {
		t.Fatal("invalid username")
	}
}

func TestAggregateBase_RegisterEventListener_HandleEvent(t *testing.T) {
	aggregate := NewUserAggregate(uuid.New())

	userInvalidEvent, err := NewUserInvalidEvent(aggregate)
	if err != nil {
		t.Error(err)
	}

	userCreatedEvent, err := NewUserCreatedEvent(aggregate, uuid.New(), "test")
	if err != nil {
		t.Error(err)
	}

	fncWithNoErr := func(event hwes.Event) error {
		return nil
	}

	fncWithErr := func(event hwes.Event) error {
		return errors.New("test error")
	}

	aggregate.RegisterEventListener(UserCreated, fncWithNoErr)

	if err := aggregate.HandleEvent(userCreatedEvent); err != nil {
		t.Error(err)
	}

	aggregate.RegisterEventListener(UserCreated, fncWithErr)

	if err := aggregate.HandleEvent(userCreatedEvent); err != nil {
		if errors.Unwrap(err).Error() != "test error" {
			t.Error(err)
		}
	} else {
		t.Error("expected an error")
	}

	aggregate.RegisterEventListener(UserCreated, fncWithNoErr)

	if err := aggregate.HandleEvent(userCreatedEvent); err != nil {
		t.Error(err)
	}

	if err := aggregate.HandleEvent(userInvalidEvent); err == nil {
		t.Error("event handler is not register and should therefore not be handled")
	}
}
