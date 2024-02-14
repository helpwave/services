// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.32.0
// 	protoc        (unknown)
// source: proto/services/property_svc/v1/property_value_svc.proto

package property_svc

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

// CreatePropertyValue
type CreatePropertyValueRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	SubjectId   string `protobuf:"bytes,1,opt,name=subject_id,json=subjectId,proto3" json:"subject_id,omitempty"`
	SubjectType string `protobuf:"bytes,2,opt,name=subject_type,json=subjectType,proto3" json:"subject_type,omitempty"`
	PropertyId  string `protobuf:"bytes,3,opt,name=property_id,json=propertyId,proto3" json:"property_id,omitempty"`
	// Types that are assignable to Value:
	//
	//	*CreatePropertyValueRequest_IsUndefined
	//	*CreatePropertyValueRequest_TextValue
	//	*CreatePropertyValueRequest_NumberValue
	//	*CreatePropertyValueRequest_BoolValue
	//	*CreatePropertyValueRequest_DateValue
	//	*CreatePropertyValueRequest_DateTimeValue
	//	*CreatePropertyValueRequest_SelectValue
	Value isCreatePropertyValueRequest_Value `protobuf_oneof:"value"`
}

func (x *CreatePropertyValueRequest) Reset() {
	*x = CreatePropertyValueRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_property_svc_v1_property_value_svc_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreatePropertyValueRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreatePropertyValueRequest) ProtoMessage() {}

func (x *CreatePropertyValueRequest) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_property_svc_v1_property_value_svc_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreatePropertyValueRequest.ProtoReflect.Descriptor instead.
func (*CreatePropertyValueRequest) Descriptor() ([]byte, []int) {
	return file_proto_services_property_svc_v1_property_value_svc_proto_rawDescGZIP(), []int{0}
}

func (x *CreatePropertyValueRequest) GetSubjectId() string {
	if x != nil {
		return x.SubjectId
	}
	return ""
}

func (x *CreatePropertyValueRequest) GetSubjectType() string {
	if x != nil {
		return x.SubjectType
	}
	return ""
}

func (x *CreatePropertyValueRequest) GetPropertyId() string {
	if x != nil {
		return x.PropertyId
	}
	return ""
}

func (m *CreatePropertyValueRequest) GetValue() isCreatePropertyValueRequest_Value {
	if m != nil {
		return m.Value
	}
	return nil
}

func (x *CreatePropertyValueRequest) GetIsUndefined() bool {
	if x, ok := x.GetValue().(*CreatePropertyValueRequest_IsUndefined); ok {
		return x.IsUndefined
	}
	return false
}

func (x *CreatePropertyValueRequest) GetTextValue() string {
	if x, ok := x.GetValue().(*CreatePropertyValueRequest_TextValue); ok {
		return x.TextValue
	}
	return ""
}

func (x *CreatePropertyValueRequest) GetNumberValue() float32 {
	if x, ok := x.GetValue().(*CreatePropertyValueRequest_NumberValue); ok {
		return x.NumberValue
	}
	return 0
}

func (x *CreatePropertyValueRequest) GetBoolValue() bool {
	if x, ok := x.GetValue().(*CreatePropertyValueRequest_BoolValue); ok {
		return x.BoolValue
	}
	return false
}

func (x *CreatePropertyValueRequest) GetDateValue() string {
	if x, ok := x.GetValue().(*CreatePropertyValueRequest_DateValue); ok {
		return x.DateValue
	}
	return ""
}

func (x *CreatePropertyValueRequest) GetDateTimeValue() string {
	if x, ok := x.GetValue().(*CreatePropertyValueRequest_DateTimeValue); ok {
		return x.DateTimeValue
	}
	return ""
}

func (x *CreatePropertyValueRequest) GetSelectValue() string {
	if x, ok := x.GetValue().(*CreatePropertyValueRequest_SelectValue); ok {
		return x.SelectValue
	}
	return ""
}

type isCreatePropertyValueRequest_Value interface {
	isCreatePropertyValueRequest_Value()
}

type CreatePropertyValueRequest_IsUndefined struct {
	IsUndefined bool `protobuf:"varint,4,opt,name=is_undefined,json=isUndefined,proto3,oneof"` // if it exists, it's true
}

type CreatePropertyValueRequest_TextValue struct {
	TextValue string `protobuf:"bytes,5,opt,name=text_value,json=textValue,proto3,oneof"` // FIELD_TYPE_TEXT
}

type CreatePropertyValueRequest_NumberValue struct {
	NumberValue float32 `protobuf:"fixed32,6,opt,name=number_value,json=numberValue,proto3,oneof"` // FIELD_TYPE_NUMBER
}

type CreatePropertyValueRequest_BoolValue struct {
	BoolValue bool `protobuf:"varint,7,opt,name=bool_value,json=boolValue,proto3,oneof"` // FIELD_TYPE_CHECKBOX
}

type CreatePropertyValueRequest_DateValue struct {
	DateValue string `protobuf:"bytes,8,opt,name=date_value,json=dateValue,proto3,oneof"` // FIELD_TYPE_DATE TODO: is there a proto date type?
}

type CreatePropertyValueRequest_DateTimeValue struct {
	DateTimeValue string `protobuf:"bytes,9,opt,name=date_time_value,json=dateTimeValue,proto3,oneof"` // FIELD_TYPE_DATE_TIME
}

type CreatePropertyValueRequest_SelectValue struct {
	SelectValue string `protobuf:"bytes,10,opt,name=select_value,json=selectValue,proto3,oneof"` // FIELD_TYPE_SELECT, id of option
}

func (*CreatePropertyValueRequest_IsUndefined) isCreatePropertyValueRequest_Value() {}

func (*CreatePropertyValueRequest_TextValue) isCreatePropertyValueRequest_Value() {}

func (*CreatePropertyValueRequest_NumberValue) isCreatePropertyValueRequest_Value() {}

func (*CreatePropertyValueRequest_BoolValue) isCreatePropertyValueRequest_Value() {}

func (*CreatePropertyValueRequest_DateValue) isCreatePropertyValueRequest_Value() {}

func (*CreatePropertyValueRequest_DateTimeValue) isCreatePropertyValueRequest_Value() {}

func (*CreatePropertyValueRequest_SelectValue) isCreatePropertyValueRequest_Value() {}

type CreatePropertyValueResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
}

func (x *CreatePropertyValueResponse) Reset() {
	*x = CreatePropertyValueResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_property_svc_v1_property_value_svc_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreatePropertyValueResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreatePropertyValueResponse) ProtoMessage() {}

func (x *CreatePropertyValueResponse) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_property_svc_v1_property_value_svc_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreatePropertyValueResponse.ProtoReflect.Descriptor instead.
func (*CreatePropertyValueResponse) Descriptor() ([]byte, []int) {
	return file_proto_services_property_svc_v1_property_value_svc_proto_rawDescGZIP(), []int{1}
}

func (x *CreatePropertyValueResponse) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

type GetPropertyValueRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
}

func (x *GetPropertyValueRequest) Reset() {
	*x = GetPropertyValueRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_property_svc_v1_property_value_svc_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetPropertyValueRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetPropertyValueRequest) ProtoMessage() {}

func (x *GetPropertyValueRequest) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_property_svc_v1_property_value_svc_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetPropertyValueRequest.ProtoReflect.Descriptor instead.
func (*GetPropertyValueRequest) Descriptor() ([]byte, []int) {
	return file_proto_services_property_svc_v1_property_value_svc_proto_rawDescGZIP(), []int{2}
}

func (x *GetPropertyValueRequest) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

type GetPropertyValueResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id          string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	SubjectType string `protobuf:"bytes,2,opt,name=subject_type,json=subjectType,proto3" json:"subject_type,omitempty"`
	PropertyId  string `protobuf:"bytes,3,opt,name=property_id,json=propertyId,proto3" json:"property_id,omitempty"`
	// Types that are assignable to Value:
	//
	//	*GetPropertyValueResponse_IsUndefined
	//	*GetPropertyValueResponse_TextValue
	//	*GetPropertyValueResponse_NumberValue
	//	*GetPropertyValueResponse_BoolValue
	//	*GetPropertyValueResponse_DateValue
	//	*GetPropertyValueResponse_DateTimeValue
	//	*GetPropertyValueResponse_SelectValue
	Value isGetPropertyValueResponse_Value `protobuf_oneof:"value"`
}

func (x *GetPropertyValueResponse) Reset() {
	*x = GetPropertyValueResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_property_svc_v1_property_value_svc_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetPropertyValueResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetPropertyValueResponse) ProtoMessage() {}

func (x *GetPropertyValueResponse) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_property_svc_v1_property_value_svc_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetPropertyValueResponse.ProtoReflect.Descriptor instead.
func (*GetPropertyValueResponse) Descriptor() ([]byte, []int) {
	return file_proto_services_property_svc_v1_property_value_svc_proto_rawDescGZIP(), []int{3}
}

func (x *GetPropertyValueResponse) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *GetPropertyValueResponse) GetSubjectType() string {
	if x != nil {
		return x.SubjectType
	}
	return ""
}

func (x *GetPropertyValueResponse) GetPropertyId() string {
	if x != nil {
		return x.PropertyId
	}
	return ""
}

func (m *GetPropertyValueResponse) GetValue() isGetPropertyValueResponse_Value {
	if m != nil {
		return m.Value
	}
	return nil
}

func (x *GetPropertyValueResponse) GetIsUndefined() bool {
	if x, ok := x.GetValue().(*GetPropertyValueResponse_IsUndefined); ok {
		return x.IsUndefined
	}
	return false
}

func (x *GetPropertyValueResponse) GetTextValue() string {
	if x, ok := x.GetValue().(*GetPropertyValueResponse_TextValue); ok {
		return x.TextValue
	}
	return ""
}

func (x *GetPropertyValueResponse) GetNumberValue() float32 {
	if x, ok := x.GetValue().(*GetPropertyValueResponse_NumberValue); ok {
		return x.NumberValue
	}
	return 0
}

func (x *GetPropertyValueResponse) GetBoolValue() bool {
	if x, ok := x.GetValue().(*GetPropertyValueResponse_BoolValue); ok {
		return x.BoolValue
	}
	return false
}

func (x *GetPropertyValueResponse) GetDateValue() string {
	if x, ok := x.GetValue().(*GetPropertyValueResponse_DateValue); ok {
		return x.DateValue
	}
	return ""
}

func (x *GetPropertyValueResponse) GetDateTimeValue() string {
	if x, ok := x.GetValue().(*GetPropertyValueResponse_DateTimeValue); ok {
		return x.DateTimeValue
	}
	return ""
}

func (x *GetPropertyValueResponse) GetSelectValue() string {
	if x, ok := x.GetValue().(*GetPropertyValueResponse_SelectValue); ok {
		return x.SelectValue
	}
	return ""
}

type isGetPropertyValueResponse_Value interface {
	isGetPropertyValueResponse_Value()
}

type GetPropertyValueResponse_IsUndefined struct {
	IsUndefined bool `protobuf:"varint,4,opt,name=is_undefined,json=isUndefined,proto3,oneof"` // if it exists, it's true
}

type GetPropertyValueResponse_TextValue struct {
	TextValue string `protobuf:"bytes,5,opt,name=text_value,json=textValue,proto3,oneof"` // FIELD_TYPE_TEXT
}

type GetPropertyValueResponse_NumberValue struct {
	NumberValue float32 `protobuf:"fixed32,6,opt,name=number_value,json=numberValue,proto3,oneof"` // FIELD_TYPE_NUMBER
}

type GetPropertyValueResponse_BoolValue struct {
	BoolValue bool `protobuf:"varint,7,opt,name=bool_value,json=boolValue,proto3,oneof"` // FIELD_TYPE_CHECKBOX
}

type GetPropertyValueResponse_DateValue struct {
	DateValue string `protobuf:"bytes,8,opt,name=date_value,json=dateValue,proto3,oneof"` // FIELD_TYPE_DATE TODO: is there a proto date type?
}

type GetPropertyValueResponse_DateTimeValue struct {
	DateTimeValue string `protobuf:"bytes,9,opt,name=date_time_value,json=dateTimeValue,proto3,oneof"` // FIELD_TYPE_DATE_TIME
}

type GetPropertyValueResponse_SelectValue struct {
	SelectValue string `protobuf:"bytes,10,opt,name=select_value,json=selectValue,proto3,oneof"` // FIELD_TYPE_SELECT, id of option
}

func (*GetPropertyValueResponse_IsUndefined) isGetPropertyValueResponse_Value() {}

func (*GetPropertyValueResponse_TextValue) isGetPropertyValueResponse_Value() {}

func (*GetPropertyValueResponse_NumberValue) isGetPropertyValueResponse_Value() {}

func (*GetPropertyValueResponse_BoolValue) isGetPropertyValueResponse_Value() {}

func (*GetPropertyValueResponse_DateValue) isGetPropertyValueResponse_Value() {}

func (*GetPropertyValueResponse_DateTimeValue) isGetPropertyValueResponse_Value() {}

func (*GetPropertyValueResponse_SelectValue) isGetPropertyValueResponse_Value() {}

var File_proto_services_property_svc_v1_property_value_svc_proto protoreflect.FileDescriptor

var file_proto_services_property_svc_v1_property_value_svc_proto_rawDesc = []byte{
	0x0a, 0x37, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73,
	0x2f, 0x70, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x5f, 0x73, 0x76, 0x63, 0x2f, 0x76, 0x31,
	0x2f, 0x70, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x5f, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x5f,
	0x73, 0x76, 0x63, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x1e, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x70, 0x65, 0x72,
	0x74, 0x79, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x22, 0x84, 0x03, 0x0a, 0x1a, 0x43, 0x72,
	0x65, 0x61, 0x74, 0x65, 0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x56, 0x61, 0x6c, 0x75,
	0x65, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x1d, 0x0a, 0x0a, 0x73, 0x75, 0x62, 0x6a,
	0x65, 0x63, 0x74, 0x5f, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x09, 0x73, 0x75,
	0x62, 0x6a, 0x65, 0x63, 0x74, 0x49, 0x64, 0x12, 0x21, 0x0a, 0x0c, 0x73, 0x75, 0x62, 0x6a, 0x65,
	0x63, 0x74, 0x5f, 0x74, 0x79, 0x70, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0b, 0x73,
	0x75, 0x62, 0x6a, 0x65, 0x63, 0x74, 0x54, 0x79, 0x70, 0x65, 0x12, 0x1f, 0x0a, 0x0b, 0x70, 0x72,
	0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x5f, 0x69, 0x64, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x0a, 0x70, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x49, 0x64, 0x12, 0x23, 0x0a, 0x0c, 0x69,
	0x73, 0x5f, 0x75, 0x6e, 0x64, 0x65, 0x66, 0x69, 0x6e, 0x65, 0x64, 0x18, 0x04, 0x20, 0x01, 0x28,
	0x08, 0x48, 0x00, 0x52, 0x0b, 0x69, 0x73, 0x55, 0x6e, 0x64, 0x65, 0x66, 0x69, 0x6e, 0x65, 0x64,
	0x12, 0x1f, 0x0a, 0x0a, 0x74, 0x65, 0x78, 0x74, 0x5f, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x05,
	0x20, 0x01, 0x28, 0x09, 0x48, 0x00, 0x52, 0x09, 0x74, 0x65, 0x78, 0x74, 0x56, 0x61, 0x6c, 0x75,
	0x65, 0x12, 0x23, 0x0a, 0x0c, 0x6e, 0x75, 0x6d, 0x62, 0x65, 0x72, 0x5f, 0x76, 0x61, 0x6c, 0x75,
	0x65, 0x18, 0x06, 0x20, 0x01, 0x28, 0x02, 0x48, 0x00, 0x52, 0x0b, 0x6e, 0x75, 0x6d, 0x62, 0x65,
	0x72, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x12, 0x1f, 0x0a, 0x0a, 0x62, 0x6f, 0x6f, 0x6c, 0x5f, 0x76,
	0x61, 0x6c, 0x75, 0x65, 0x18, 0x07, 0x20, 0x01, 0x28, 0x08, 0x48, 0x00, 0x52, 0x09, 0x62, 0x6f,
	0x6f, 0x6c, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x12, 0x1f, 0x0a, 0x0a, 0x64, 0x61, 0x74, 0x65, 0x5f,
	0x76, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x08, 0x20, 0x01, 0x28, 0x09, 0x48, 0x00, 0x52, 0x09, 0x64,
	0x61, 0x74, 0x65, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x12, 0x28, 0x0a, 0x0f, 0x64, 0x61, 0x74, 0x65,
	0x5f, 0x74, 0x69, 0x6d, 0x65, 0x5f, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x09, 0x20, 0x01, 0x28,
	0x09, 0x48, 0x00, 0x52, 0x0d, 0x64, 0x61, 0x74, 0x65, 0x54, 0x69, 0x6d, 0x65, 0x56, 0x61, 0x6c,
	0x75, 0x65, 0x12, 0x23, 0x0a, 0x0c, 0x73, 0x65, 0x6c, 0x65, 0x63, 0x74, 0x5f, 0x76, 0x61, 0x6c,
	0x75, 0x65, 0x18, 0x0a, 0x20, 0x01, 0x28, 0x09, 0x48, 0x00, 0x52, 0x0b, 0x73, 0x65, 0x6c, 0x65,
	0x63, 0x74, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x42, 0x07, 0x0a, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65,
	0x22, 0x2d, 0x0a, 0x1b, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x50, 0x72, 0x6f, 0x70, 0x65, 0x72,
	0x74, 0x79, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12,
	0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x22,
	0x29, 0x0a, 0x17, 0x47, 0x65, 0x74, 0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x56, 0x61,
	0x6c, 0x75, 0x65, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64,
	0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x22, 0xf3, 0x02, 0x0a, 0x18, 0x47,
	0x65, 0x74, 0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x52,
	0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20,
	0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x12, 0x21, 0x0a, 0x0c, 0x73, 0x75, 0x62, 0x6a, 0x65,
	0x63, 0x74, 0x5f, 0x74, 0x79, 0x70, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0b, 0x73,
	0x75, 0x62, 0x6a, 0x65, 0x63, 0x74, 0x54, 0x79, 0x70, 0x65, 0x12, 0x1f, 0x0a, 0x0b, 0x70, 0x72,
	0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x5f, 0x69, 0x64, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x0a, 0x70, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x49, 0x64, 0x12, 0x23, 0x0a, 0x0c, 0x69,
	0x73, 0x5f, 0x75, 0x6e, 0x64, 0x65, 0x66, 0x69, 0x6e, 0x65, 0x64, 0x18, 0x04, 0x20, 0x01, 0x28,
	0x08, 0x48, 0x00, 0x52, 0x0b, 0x69, 0x73, 0x55, 0x6e, 0x64, 0x65, 0x66, 0x69, 0x6e, 0x65, 0x64,
	0x12, 0x1f, 0x0a, 0x0a, 0x74, 0x65, 0x78, 0x74, 0x5f, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x05,
	0x20, 0x01, 0x28, 0x09, 0x48, 0x00, 0x52, 0x09, 0x74, 0x65, 0x78, 0x74, 0x56, 0x61, 0x6c, 0x75,
	0x65, 0x12, 0x23, 0x0a, 0x0c, 0x6e, 0x75, 0x6d, 0x62, 0x65, 0x72, 0x5f, 0x76, 0x61, 0x6c, 0x75,
	0x65, 0x18, 0x06, 0x20, 0x01, 0x28, 0x02, 0x48, 0x00, 0x52, 0x0b, 0x6e, 0x75, 0x6d, 0x62, 0x65,
	0x72, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x12, 0x1f, 0x0a, 0x0a, 0x62, 0x6f, 0x6f, 0x6c, 0x5f, 0x76,
	0x61, 0x6c, 0x75, 0x65, 0x18, 0x07, 0x20, 0x01, 0x28, 0x08, 0x48, 0x00, 0x52, 0x09, 0x62, 0x6f,
	0x6f, 0x6c, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x12, 0x1f, 0x0a, 0x0a, 0x64, 0x61, 0x74, 0x65, 0x5f,
	0x76, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x08, 0x20, 0x01, 0x28, 0x09, 0x48, 0x00, 0x52, 0x09, 0x64,
	0x61, 0x74, 0x65, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x12, 0x28, 0x0a, 0x0f, 0x64, 0x61, 0x74, 0x65,
	0x5f, 0x74, 0x69, 0x6d, 0x65, 0x5f, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x09, 0x20, 0x01, 0x28,
	0x09, 0x48, 0x00, 0x52, 0x0d, 0x64, 0x61, 0x74, 0x65, 0x54, 0x69, 0x6d, 0x65, 0x56, 0x61, 0x6c,
	0x75, 0x65, 0x12, 0x23, 0x0a, 0x0c, 0x73, 0x65, 0x6c, 0x65, 0x63, 0x74, 0x5f, 0x76, 0x61, 0x6c,
	0x75, 0x65, 0x18, 0x0a, 0x20, 0x01, 0x28, 0x09, 0x48, 0x00, 0x52, 0x0b, 0x73, 0x65, 0x6c, 0x65,
	0x63, 0x74, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x42, 0x07, 0x0a, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65,
	0x32, 0xb3, 0x02, 0x0a, 0x14, 0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x56, 0x61, 0x6c,
	0x75, 0x65, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x12, 0x90, 0x01, 0x0a, 0x13, 0x43, 0x72,
	0x65, 0x61, 0x74, 0x65, 0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x56, 0x61, 0x6c, 0x75,
	0x65, 0x12, 0x3a, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63,
	0x65, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x5f, 0x73, 0x76, 0x63, 0x2e,
	0x76, 0x31, 0x2e, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74,
	0x79, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x3b, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x70,
	0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x43,
	0x72, 0x65, 0x61, 0x74, 0x65, 0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x56, 0x61, 0x6c,
	0x75, 0x65, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x00, 0x12, 0x87, 0x01, 0x0a,
	0x10, 0x47, 0x65, 0x74, 0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x56, 0x61, 0x6c, 0x75,
	0x65, 0x12, 0x37, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63,
	0x65, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x5f, 0x73, 0x76, 0x63, 0x2e,
	0x76, 0x31, 0x2e, 0x47, 0x65, 0x74, 0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x56, 0x61,
	0x6c, 0x75, 0x65, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x38, 0x2e, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x70,
	0x65, 0x72, 0x74, 0x79, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x47, 0x65, 0x74, 0x50,
	0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x52, 0x65, 0x73, 0x70,
	0x6f, 0x6e, 0x73, 0x65, 0x22, 0x00, 0x42, 0xf3, 0x01, 0x0a, 0x22, 0x63, 0x6f, 0x6d, 0x2e, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x70, 0x72,
	0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x42, 0x15, 0x50,
	0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x53, 0x76, 0x63, 0x50,
	0x72, 0x6f, 0x74, 0x6f, 0x50, 0x01, 0x5a, 0x1f, 0x67, 0x65, 0x6e, 0x2f, 0x70, 0x72, 0x6f, 0x74,
	0x6f, 0x2f, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2f, 0x70, 0x72, 0x6f, 0x70, 0x65,
	0x72, 0x74, 0x79, 0x2d, 0x73, 0x76, 0x63, 0xa2, 0x02, 0x03, 0x50, 0x53, 0x50, 0xaa, 0x02, 0x1d,
	0x50, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x50,
	0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x53, 0x76, 0x63, 0x2e, 0x56, 0x31, 0xca, 0x02, 0x1d,
	0x50, 0x72, 0x6f, 0x74, 0x6f, 0x5c, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x5c, 0x50,
	0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x53, 0x76, 0x63, 0x5c, 0x56, 0x31, 0xe2, 0x02, 0x29,
	0x50, 0x72, 0x6f, 0x74, 0x6f, 0x5c, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x5c, 0x50,
	0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x53, 0x76, 0x63, 0x5c, 0x56, 0x31, 0x5c, 0x47, 0x50,
	0x42, 0x4d, 0x65, 0x74, 0x61, 0x64, 0x61, 0x74, 0x61, 0xea, 0x02, 0x20, 0x50, 0x72, 0x6f, 0x74,
	0x6f, 0x3a, 0x3a, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x3a, 0x3a, 0x50, 0x72, 0x6f,
	0x70, 0x65, 0x72, 0x74, 0x79, 0x53, 0x76, 0x63, 0x3a, 0x3a, 0x56, 0x31, 0x62, 0x06, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_proto_services_property_svc_v1_property_value_svc_proto_rawDescOnce sync.Once
	file_proto_services_property_svc_v1_property_value_svc_proto_rawDescData = file_proto_services_property_svc_v1_property_value_svc_proto_rawDesc
)

func file_proto_services_property_svc_v1_property_value_svc_proto_rawDescGZIP() []byte {
	file_proto_services_property_svc_v1_property_value_svc_proto_rawDescOnce.Do(func() {
		file_proto_services_property_svc_v1_property_value_svc_proto_rawDescData = protoimpl.X.CompressGZIP(file_proto_services_property_svc_v1_property_value_svc_proto_rawDescData)
	})
	return file_proto_services_property_svc_v1_property_value_svc_proto_rawDescData
}

var file_proto_services_property_svc_v1_property_value_svc_proto_msgTypes = make([]protoimpl.MessageInfo, 4)
var file_proto_services_property_svc_v1_property_value_svc_proto_goTypes = []interface{}{
	(*CreatePropertyValueRequest)(nil),  // 0: proto.services.property_svc.v1.CreatePropertyValueRequest
	(*CreatePropertyValueResponse)(nil), // 1: proto.services.property_svc.v1.CreatePropertyValueResponse
	(*GetPropertyValueRequest)(nil),     // 2: proto.services.property_svc.v1.GetPropertyValueRequest
	(*GetPropertyValueResponse)(nil),    // 3: proto.services.property_svc.v1.GetPropertyValueResponse
}
var file_proto_services_property_svc_v1_property_value_svc_proto_depIdxs = []int32{
	0, // 0: proto.services.property_svc.v1.PropertyValueService.CreatePropertyValue:input_type -> proto.services.property_svc.v1.CreatePropertyValueRequest
	2, // 1: proto.services.property_svc.v1.PropertyValueService.GetPropertyValue:input_type -> proto.services.property_svc.v1.GetPropertyValueRequest
	1, // 2: proto.services.property_svc.v1.PropertyValueService.CreatePropertyValue:output_type -> proto.services.property_svc.v1.CreatePropertyValueResponse
	3, // 3: proto.services.property_svc.v1.PropertyValueService.GetPropertyValue:output_type -> proto.services.property_svc.v1.GetPropertyValueResponse
	2, // [2:4] is the sub-list for method output_type
	0, // [0:2] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_proto_services_property_svc_v1_property_value_svc_proto_init() }
func file_proto_services_property_svc_v1_property_value_svc_proto_init() {
	if File_proto_services_property_svc_v1_property_value_svc_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_proto_services_property_svc_v1_property_value_svc_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*CreatePropertyValueRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_services_property_svc_v1_property_value_svc_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*CreatePropertyValueResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_services_property_svc_v1_property_value_svc_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GetPropertyValueRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_services_property_svc_v1_property_value_svc_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GetPropertyValueResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	file_proto_services_property_svc_v1_property_value_svc_proto_msgTypes[0].OneofWrappers = []interface{}{
		(*CreatePropertyValueRequest_IsUndefined)(nil),
		(*CreatePropertyValueRequest_TextValue)(nil),
		(*CreatePropertyValueRequest_NumberValue)(nil),
		(*CreatePropertyValueRequest_BoolValue)(nil),
		(*CreatePropertyValueRequest_DateValue)(nil),
		(*CreatePropertyValueRequest_DateTimeValue)(nil),
		(*CreatePropertyValueRequest_SelectValue)(nil),
	}
	file_proto_services_property_svc_v1_property_value_svc_proto_msgTypes[3].OneofWrappers = []interface{}{
		(*GetPropertyValueResponse_IsUndefined)(nil),
		(*GetPropertyValueResponse_TextValue)(nil),
		(*GetPropertyValueResponse_NumberValue)(nil),
		(*GetPropertyValueResponse_BoolValue)(nil),
		(*GetPropertyValueResponse_DateValue)(nil),
		(*GetPropertyValueResponse_DateTimeValue)(nil),
		(*GetPropertyValueResponse_SelectValue)(nil),
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_proto_services_property_svc_v1_property_value_svc_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   4,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_proto_services_property_svc_v1_property_value_svc_proto_goTypes,
		DependencyIndexes: file_proto_services_property_svc_v1_property_value_svc_proto_depIdxs,
		MessageInfos:      file_proto_services_property_svc_v1_property_value_svc_proto_msgTypes,
	}.Build()
	File_proto_services_property_svc_v1_property_value_svc_proto = out.File
	file_proto_services_property_svc_v1_property_value_svc_proto_rawDesc = nil
	file_proto_services_property_svc_v1_property_value_svc_proto_goTypes = nil
	file_proto_services_property_svc_v1_property_value_svc_proto_depIdxs = nil
}
