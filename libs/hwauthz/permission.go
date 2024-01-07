package hwauthz

import (
	"github.com/google/uuid"
)

func NewCanUserViewTaskPermission(userID, taskID uuid.UUID) Permission {
	return NewPermission("task", taskID.String(), "view", "user", userID.String())
}

func NewCanUserUpdateTaskPermission(userID, taskID uuid.UUID) Permission {
	return NewPermission("task", taskID.String(), "update_task", "user", userID.String())
}

func NewCanUserCreateSubtaskOnTaskPermission(userID, taskID uuid.UUID) Permission {
	return NewPermission("task", taskID.String(), "create_subtask", "user", userID.String())
}

func NewCanUserDeleteSubtaskOnTaskPermission(userID, taskID uuid.UUID) Permission {
	return NewPermission("task", taskID.String(), "delete_subtask", "user", userID.String())
}

func NewCanUserUpdateSubtaskOnTaskPermission(userID, taskID uuid.UUID) Permission {
	return NewPermission("task", taskID.String(), "update_subtask", "user", userID.String())
}
