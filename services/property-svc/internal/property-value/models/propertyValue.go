package models

import (
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
)

type PropertyValue struct {
	ID          uuid.UUID
	PropertyID  uuid.UUID
	Value       interface{}
	SubjectID   uuid.UUID
	SubjectType pb.SubjectType
}

func NewPropertyValue() *PropertyValue {
	return &PropertyValue{}
}
