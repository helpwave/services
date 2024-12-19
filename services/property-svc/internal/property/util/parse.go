package util

import (
	"common/hwerr"
	pb "gen/services/property_svc/v1"
)

func ParseFieldType(fieldType string) (pb.FieldType, error) {
	val, found := pb.FieldType_value[fieldType]
	if !found {
		return 0, hwerr.InvalidEnumError{Enum: "FieldType", Value: fieldType}
	}
	return (pb.FieldType)(val), nil
}

func ParseSubjectType(subjectType string) (pb.SubjectType, error) {
	val, found := pb.SubjectType_value[subjectType]
	if !found {
		return 0, hwerr.InvalidEnumError{Enum: "SubjectType", Value: subjectType}
	}
	return (pb.SubjectType)(val), nil
}
