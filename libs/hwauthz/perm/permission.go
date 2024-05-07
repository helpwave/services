package perm

import (
	"github.com/google/uuid"
	"hwauthz"
)

func NewCanUserViewTaskPermission(userID, taskID uuid.UUID) hwauthz.Permission {
	return hwauthz.NewPermission("task", taskID.String(), "view", "user", userID.String())
}

func NewCanUserUpdateTaskPermission(userID, taskID uuid.UUID) hwauthz.Permission {
	return hwauthz.NewPermission("task", taskID.String(), "update_task", "user", userID.String())
}

func NewCanUserCreateSubtaskOnTaskPermission(userID, taskID uuid.UUID) hwauthz.Permission {
	return hwauthz.NewPermission("task", taskID.String(), "create_subtask", "user", userID.String())
}

func NewCanUserDeleteSubtaskOnTaskPermission(userID, taskID uuid.UUID) hwauthz.Permission {
	return hwauthz.NewPermission("task", taskID.String(), "delete_subtask", "user", userID.String())
}

func NewCanUserUpdateSubtaskOnTaskPermission(userID, taskID uuid.UUID) hwauthz.Permission {
	return hwauthz.NewPermission("task", taskID.String(), "update_subtask", "user", userID.String())
}

func NewCanUserAssignTaskPermission(userID, taskID uuid.UUID) hwauthz.Permission {
	return hwauthz.NewPermission("task", taskID.String(), "assign", "user", userID.String())
}

func NewCanUserCompleteSubtaskPermission(userID, taskID uuid.UUID) hwauthz.Permission {
	return hwauthz.NewPermission("task", taskID.String(), "assign", "user", userID.String())
}
