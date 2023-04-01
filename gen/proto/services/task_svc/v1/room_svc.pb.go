// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.30.0
// 	protoc        (unknown)
// source: proto/services/task_svc/v1/room_svc.proto

package task_svc

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

type CreateRoomRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Name         string `protobuf:"bytes,1,opt,name=name,proto3" json:"name,omitempty" validate:"required"`                  // @gotags: validate:"required"
	AmountOfBeds uint32 `protobuf:"varint,2,opt,name=amountOfBeds,proto3" json:"amountOfBeds,omitempty" validate:"required"` // @gotags: validate:"required"
}

func (x *CreateRoomRequest) Reset() {
	*x = CreateRoomRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_task_svc_v1_room_svc_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreateRoomRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateRoomRequest) ProtoMessage() {}

func (x *CreateRoomRequest) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_task_svc_v1_room_svc_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateRoomRequest.ProtoReflect.Descriptor instead.
func (*CreateRoomRequest) Descriptor() ([]byte, []int) {
	return file_proto_services_task_svc_v1_room_svc_proto_rawDescGZIP(), []int{0}
}

func (x *CreateRoomRequest) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *CreateRoomRequest) GetAmountOfBeds() uint32 {
	if x != nil {
		return x.AmountOfBeds
	}
	return 0
}

type CreateRoomResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
}

func (x *CreateRoomResponse) Reset() {
	*x = CreateRoomResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_task_svc_v1_room_svc_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreateRoomResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateRoomResponse) ProtoMessage() {}

func (x *CreateRoomResponse) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_task_svc_v1_room_svc_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateRoomResponse.ProtoReflect.Descriptor instead.
func (*CreateRoomResponse) Descriptor() ([]byte, []int) {
	return file_proto_services_task_svc_v1_room_svc_proto_rawDescGZIP(), []int{1}
}

func (x *CreateRoomResponse) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

type BedOfRoom struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
}

func (x *BedOfRoom) Reset() {
	*x = BedOfRoom{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_task_svc_v1_room_svc_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *BedOfRoom) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*BedOfRoom) ProtoMessage() {}

func (x *BedOfRoom) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_task_svc_v1_room_svc_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use BedOfRoom.ProtoReflect.Descriptor instead.
func (*BedOfRoom) Descriptor() ([]byte, []int) {
	return file_proto_services_task_svc_v1_room_svc_proto_rawDescGZIP(), []int{2}
}

func (x *BedOfRoom) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

type GetRoomRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty" validate:"uuid4"` // @gotags: validate:"uuid4"
}

func (x *GetRoomRequest) Reset() {
	*x = GetRoomRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_task_svc_v1_room_svc_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetRoomRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetRoomRequest) ProtoMessage() {}

func (x *GetRoomRequest) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_task_svc_v1_room_svc_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetRoomRequest.ProtoReflect.Descriptor instead.
func (*GetRoomRequest) Descriptor() ([]byte, []int) {
	return file_proto_services_task_svc_v1_room_svc_proto_rawDescGZIP(), []int{3}
}

func (x *GetRoomRequest) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

type GetRoomResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id   string       `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	Name string       `protobuf:"bytes,2,opt,name=name,proto3" json:"name,omitempty"`
	Beds []*BedOfRoom `protobuf:"bytes,3,rep,name=beds,proto3" json:"beds,omitempty"`
}

func (x *GetRoomResponse) Reset() {
	*x = GetRoomResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_task_svc_v1_room_svc_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetRoomResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetRoomResponse) ProtoMessage() {}

func (x *GetRoomResponse) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_task_svc_v1_room_svc_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetRoomResponse.ProtoReflect.Descriptor instead.
func (*GetRoomResponse) Descriptor() ([]byte, []int) {
	return file_proto_services_task_svc_v1_room_svc_proto_rawDescGZIP(), []int{4}
}

func (x *GetRoomResponse) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *GetRoomResponse) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *GetRoomResponse) GetBeds() []*BedOfRoom {
	if x != nil {
		return x.Beds
	}
	return nil
}

type UpdateRoomRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id   string  `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty" validate:"uuid4"` // @gotags: validate:"uuid4"
	Name *string `protobuf:"bytes,2,opt,name=name,proto3,oneof" json:"name,omitempty"`
}

func (x *UpdateRoomRequest) Reset() {
	*x = UpdateRoomRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_task_svc_v1_room_svc_proto_msgTypes[5]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *UpdateRoomRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*UpdateRoomRequest) ProtoMessage() {}

func (x *UpdateRoomRequest) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_task_svc_v1_room_svc_proto_msgTypes[5]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use UpdateRoomRequest.ProtoReflect.Descriptor instead.
func (*UpdateRoomRequest) Descriptor() ([]byte, []int) {
	return file_proto_services_task_svc_v1_room_svc_proto_rawDescGZIP(), []int{5}
}

func (x *UpdateRoomRequest) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *UpdateRoomRequest) GetName() string {
	if x != nil && x.Name != nil {
		return *x.Name
	}
	return ""
}

type UpdateRoomResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *UpdateRoomResponse) Reset() {
	*x = UpdateRoomResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_task_svc_v1_room_svc_proto_msgTypes[6]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *UpdateRoomResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*UpdateRoomResponse) ProtoMessage() {}

func (x *UpdateRoomResponse) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_task_svc_v1_room_svc_proto_msgTypes[6]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use UpdateRoomResponse.ProtoReflect.Descriptor instead.
func (*UpdateRoomResponse) Descriptor() ([]byte, []int) {
	return file_proto_services_task_svc_v1_room_svc_proto_rawDescGZIP(), []int{6}
}

type AddBedsToRoomRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id           string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty" validate:"uuid4"` // @gotags: validate:"uuid4"
	AmountOfBeds uint32 `protobuf:"varint,3,opt,name=amountOfBeds,proto3" json:"amountOfBeds,omitempty"`
}

func (x *AddBedsToRoomRequest) Reset() {
	*x = AddBedsToRoomRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_task_svc_v1_room_svc_proto_msgTypes[7]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *AddBedsToRoomRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*AddBedsToRoomRequest) ProtoMessage() {}

func (x *AddBedsToRoomRequest) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_task_svc_v1_room_svc_proto_msgTypes[7]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use AddBedsToRoomRequest.ProtoReflect.Descriptor instead.
func (*AddBedsToRoomRequest) Descriptor() ([]byte, []int) {
	return file_proto_services_task_svc_v1_room_svc_proto_rawDescGZIP(), []int{7}
}

func (x *AddBedsToRoomRequest) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *AddBedsToRoomRequest) GetAmountOfBeds() uint32 {
	if x != nil {
		return x.AmountOfBeds
	}
	return 0
}

type AddBedsToRoomResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *AddBedsToRoomResponse) Reset() {
	*x = AddBedsToRoomResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_task_svc_v1_room_svc_proto_msgTypes[8]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *AddBedsToRoomResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*AddBedsToRoomResponse) ProtoMessage() {}

func (x *AddBedsToRoomResponse) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_task_svc_v1_room_svc_proto_msgTypes[8]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use AddBedsToRoomResponse.ProtoReflect.Descriptor instead.
func (*AddBedsToRoomResponse) Descriptor() ([]byte, []int) {
	return file_proto_services_task_svc_v1_room_svc_proto_rawDescGZIP(), []int{8}
}

var File_proto_services_task_svc_v1_room_svc_proto protoreflect.FileDescriptor

var file_proto_services_task_svc_v1_room_svc_proto_rawDesc = []byte{
	0x0a, 0x29, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73,
	0x2f, 0x74, 0x61, 0x73, 0x6b, 0x5f, 0x73, 0x76, 0x63, 0x2f, 0x76, 0x31, 0x2f, 0x72, 0x6f, 0x6f,
	0x6d, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x1a, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x74, 0x61, 0x73, 0x6b,
	0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x22, 0x4b, 0x0a, 0x11, 0x43, 0x72, 0x65, 0x61, 0x74,
	0x65, 0x52, 0x6f, 0x6f, 0x6d, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x12, 0x0a, 0x04,
	0x6e, 0x61, 0x6d, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65,
	0x12, 0x22, 0x0a, 0x0c, 0x61, 0x6d, 0x6f, 0x75, 0x6e, 0x74, 0x4f, 0x66, 0x42, 0x65, 0x64, 0x73,
	0x18, 0x02, 0x20, 0x01, 0x28, 0x0d, 0x52, 0x0c, 0x61, 0x6d, 0x6f, 0x75, 0x6e, 0x74, 0x4f, 0x66,
	0x42, 0x65, 0x64, 0x73, 0x22, 0x24, 0x0a, 0x12, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x52, 0x6f,
	0x6f, 0x6d, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64,
	0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x22, 0x1b, 0x0a, 0x09, 0x42, 0x65,
	0x64, 0x4f, 0x66, 0x52, 0x6f, 0x6f, 0x6d, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20,
	0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x22, 0x20, 0x0a, 0x0e, 0x47, 0x65, 0x74, 0x52, 0x6f,
	0x6f, 0x6d, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18,
	0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x22, 0x70, 0x0a, 0x0f, 0x47, 0x65, 0x74,
	0x52, 0x6f, 0x6f, 0x6d, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x0e, 0x0a, 0x02,
	0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x12, 0x12, 0x0a, 0x04,
	0x6e, 0x61, 0x6d, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65,
	0x12, 0x39, 0x0a, 0x04, 0x62, 0x65, 0x64, 0x73, 0x18, 0x03, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x25,
	0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e,
	0x74, 0x61, 0x73, 0x6b, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x42, 0x65, 0x64, 0x4f,
	0x66, 0x52, 0x6f, 0x6f, 0x6d, 0x52, 0x04, 0x62, 0x65, 0x64, 0x73, 0x22, 0x45, 0x0a, 0x11, 0x55,
	0x70, 0x64, 0x61, 0x74, 0x65, 0x52, 0x6f, 0x6f, 0x6d, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74,
	0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64,
	0x12, 0x17, 0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x48, 0x00,
	0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x88, 0x01, 0x01, 0x42, 0x07, 0x0a, 0x05, 0x5f, 0x6e, 0x61,
	0x6d, 0x65, 0x22, 0x14, 0x0a, 0x12, 0x55, 0x70, 0x64, 0x61, 0x74, 0x65, 0x52, 0x6f, 0x6f, 0x6d,
	0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x4a, 0x0a, 0x14, 0x41, 0x64, 0x64, 0x42,
	0x65, 0x64, 0x73, 0x54, 0x6f, 0x52, 0x6f, 0x6f, 0x6d, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74,
	0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64,
	0x12, 0x22, 0x0a, 0x0c, 0x61, 0x6d, 0x6f, 0x75, 0x6e, 0x74, 0x4f, 0x66, 0x42, 0x65, 0x64, 0x73,
	0x18, 0x03, 0x20, 0x01, 0x28, 0x0d, 0x52, 0x0c, 0x61, 0x6d, 0x6f, 0x75, 0x6e, 0x74, 0x4f, 0x66,
	0x42, 0x65, 0x64, 0x73, 0x22, 0x17, 0x0a, 0x15, 0x41, 0x64, 0x64, 0x42, 0x65, 0x64, 0x73, 0x54,
	0x6f, 0x52, 0x6f, 0x6f, 0x6d, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x32, 0xc9, 0x03,
	0x0a, 0x0b, 0x52, 0x6f, 0x6f, 0x6d, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x12, 0x6d, 0x0a,
	0x0a, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x52, 0x6f, 0x6f, 0x6d, 0x12, 0x2d, 0x2e, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x74, 0x61, 0x73,
	0x6b, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x52,
	0x6f, 0x6f, 0x6d, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x2e, 0x2e, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x74, 0x61, 0x73, 0x6b,
	0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x52, 0x6f,
	0x6f, 0x6d, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x00, 0x12, 0x64, 0x0a, 0x07,
	0x47, 0x65, 0x74, 0x52, 0x6f, 0x6f, 0x6d, 0x12, 0x2a, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e,
	0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x74, 0x61, 0x73, 0x6b, 0x5f, 0x73, 0x76,
	0x63, 0x2e, 0x76, 0x31, 0x2e, 0x47, 0x65, 0x74, 0x52, 0x6f, 0x6f, 0x6d, 0x52, 0x65, 0x71, 0x75,
	0x65, 0x73, 0x74, 0x1a, 0x2b, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76,
	0x69, 0x63, 0x65, 0x73, 0x2e, 0x74, 0x61, 0x73, 0x6b, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31,
	0x2e, 0x47, 0x65, 0x74, 0x52, 0x6f, 0x6f, 0x6d, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65,
	0x22, 0x00, 0x12, 0x6d, 0x0a, 0x0a, 0x55, 0x70, 0x64, 0x61, 0x74, 0x65, 0x52, 0x6f, 0x6f, 0x6d,
	0x12, 0x2d, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65,
	0x73, 0x2e, 0x74, 0x61, 0x73, 0x6b, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x55, 0x70,
	0x64, 0x61, 0x74, 0x65, 0x52, 0x6f, 0x6f, 0x6d, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a,
	0x2e, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73,
	0x2e, 0x74, 0x61, 0x73, 0x6b, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x55, 0x70, 0x64,
	0x61, 0x74, 0x65, 0x52, 0x6f, 0x6f, 0x6d, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22,
	0x00, 0x12, 0x76, 0x0a, 0x0d, 0x41, 0x64, 0x64, 0x42, 0x65, 0x64, 0x73, 0x54, 0x6f, 0x52, 0x6f,
	0x6f, 0x6d, 0x12, 0x30, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69,
	0x63, 0x65, 0x73, 0x2e, 0x74, 0x61, 0x73, 0x6b, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e,
	0x41, 0x64, 0x64, 0x42, 0x65, 0x64, 0x73, 0x54, 0x6f, 0x52, 0x6f, 0x6f, 0x6d, 0x52, 0x65, 0x71,
	0x75, 0x65, 0x73, 0x74, 0x1a, 0x31, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72,
	0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x74, 0x61, 0x73, 0x6b, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76,
	0x31, 0x2e, 0x41, 0x64, 0x64, 0x42, 0x65, 0x64, 0x73, 0x54, 0x6f, 0x52, 0x6f, 0x6f, 0x6d, 0x52,
	0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x00, 0x42, 0xd2, 0x01, 0x0a, 0x1e, 0x63, 0x6f,
	0x6d, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73,
	0x2e, 0x74, 0x61, 0x73, 0x6b, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x42, 0x0c, 0x52, 0x6f,
	0x6f, 0x6d, 0x53, 0x76, 0x63, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x50, 0x01, 0x5a, 0x1b, 0x67, 0x65,
	0x6e, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73,
	0x2f, 0x74, 0x61, 0x73, 0x6b, 0x2d, 0x73, 0x76, 0x63, 0xa2, 0x02, 0x03, 0x50, 0x53, 0x54, 0xaa,
	0x02, 0x19, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73,
	0x2e, 0x54, 0x61, 0x73, 0x6b, 0x53, 0x76, 0x63, 0x2e, 0x56, 0x31, 0xca, 0x02, 0x19, 0x50, 0x72,
	0x6f, 0x74, 0x6f, 0x5c, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x5c, 0x54, 0x61, 0x73,
	0x6b, 0x53, 0x76, 0x63, 0x5c, 0x56, 0x31, 0xe2, 0x02, 0x25, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x5c,
	0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x5c, 0x54, 0x61, 0x73, 0x6b, 0x53, 0x76, 0x63,
	0x5c, 0x56, 0x31, 0x5c, 0x47, 0x50, 0x42, 0x4d, 0x65, 0x74, 0x61, 0x64, 0x61, 0x74, 0x61, 0xea,
	0x02, 0x1c, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x3a, 0x3a, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65,
	0x73, 0x3a, 0x3a, 0x54, 0x61, 0x73, 0x6b, 0x53, 0x76, 0x63, 0x3a, 0x3a, 0x56, 0x31, 0x62, 0x06,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_proto_services_task_svc_v1_room_svc_proto_rawDescOnce sync.Once
	file_proto_services_task_svc_v1_room_svc_proto_rawDescData = file_proto_services_task_svc_v1_room_svc_proto_rawDesc
)

func file_proto_services_task_svc_v1_room_svc_proto_rawDescGZIP() []byte {
	file_proto_services_task_svc_v1_room_svc_proto_rawDescOnce.Do(func() {
		file_proto_services_task_svc_v1_room_svc_proto_rawDescData = protoimpl.X.CompressGZIP(file_proto_services_task_svc_v1_room_svc_proto_rawDescData)
	})
	return file_proto_services_task_svc_v1_room_svc_proto_rawDescData
}

var file_proto_services_task_svc_v1_room_svc_proto_msgTypes = make([]protoimpl.MessageInfo, 9)
var file_proto_services_task_svc_v1_room_svc_proto_goTypes = []interface{}{
	(*CreateRoomRequest)(nil),     // 0: proto.services.task_svc.v1.CreateRoomRequest
	(*CreateRoomResponse)(nil),    // 1: proto.services.task_svc.v1.CreateRoomResponse
	(*BedOfRoom)(nil),             // 2: proto.services.task_svc.v1.BedOfRoom
	(*GetRoomRequest)(nil),        // 3: proto.services.task_svc.v1.GetRoomRequest
	(*GetRoomResponse)(nil),       // 4: proto.services.task_svc.v1.GetRoomResponse
	(*UpdateRoomRequest)(nil),     // 5: proto.services.task_svc.v1.UpdateRoomRequest
	(*UpdateRoomResponse)(nil),    // 6: proto.services.task_svc.v1.UpdateRoomResponse
	(*AddBedsToRoomRequest)(nil),  // 7: proto.services.task_svc.v1.AddBedsToRoomRequest
	(*AddBedsToRoomResponse)(nil), // 8: proto.services.task_svc.v1.AddBedsToRoomResponse
}
var file_proto_services_task_svc_v1_room_svc_proto_depIdxs = []int32{
	2, // 0: proto.services.task_svc.v1.GetRoomResponse.beds:type_name -> proto.services.task_svc.v1.BedOfRoom
	0, // 1: proto.services.task_svc.v1.RoomService.CreateRoom:input_type -> proto.services.task_svc.v1.CreateRoomRequest
	3, // 2: proto.services.task_svc.v1.RoomService.GetRoom:input_type -> proto.services.task_svc.v1.GetRoomRequest
	5, // 3: proto.services.task_svc.v1.RoomService.UpdateRoom:input_type -> proto.services.task_svc.v1.UpdateRoomRequest
	7, // 4: proto.services.task_svc.v1.RoomService.AddBedsToRoom:input_type -> proto.services.task_svc.v1.AddBedsToRoomRequest
	1, // 5: proto.services.task_svc.v1.RoomService.CreateRoom:output_type -> proto.services.task_svc.v1.CreateRoomResponse
	4, // 6: proto.services.task_svc.v1.RoomService.GetRoom:output_type -> proto.services.task_svc.v1.GetRoomResponse
	6, // 7: proto.services.task_svc.v1.RoomService.UpdateRoom:output_type -> proto.services.task_svc.v1.UpdateRoomResponse
	8, // 8: proto.services.task_svc.v1.RoomService.AddBedsToRoom:output_type -> proto.services.task_svc.v1.AddBedsToRoomResponse
	5, // [5:9] is the sub-list for method output_type
	1, // [1:5] is the sub-list for method input_type
	1, // [1:1] is the sub-list for extension type_name
	1, // [1:1] is the sub-list for extension extendee
	0, // [0:1] is the sub-list for field type_name
}

func init() { file_proto_services_task_svc_v1_room_svc_proto_init() }
func file_proto_services_task_svc_v1_room_svc_proto_init() {
	if File_proto_services_task_svc_v1_room_svc_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_proto_services_task_svc_v1_room_svc_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*CreateRoomRequest); i {
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
		file_proto_services_task_svc_v1_room_svc_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*CreateRoomResponse); i {
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
		file_proto_services_task_svc_v1_room_svc_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*BedOfRoom); i {
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
		file_proto_services_task_svc_v1_room_svc_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GetRoomRequest); i {
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
		file_proto_services_task_svc_v1_room_svc_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GetRoomResponse); i {
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
		file_proto_services_task_svc_v1_room_svc_proto_msgTypes[5].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*UpdateRoomRequest); i {
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
		file_proto_services_task_svc_v1_room_svc_proto_msgTypes[6].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*UpdateRoomResponse); i {
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
		file_proto_services_task_svc_v1_room_svc_proto_msgTypes[7].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*AddBedsToRoomRequest); i {
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
		file_proto_services_task_svc_v1_room_svc_proto_msgTypes[8].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*AddBedsToRoomResponse); i {
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
	file_proto_services_task_svc_v1_room_svc_proto_msgTypes[5].OneofWrappers = []interface{}{}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_proto_services_task_svc_v1_room_svc_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   9,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_proto_services_task_svc_v1_room_svc_proto_goTypes,
		DependencyIndexes: file_proto_services_task_svc_v1_room_svc_proto_depIdxs,
		MessageInfos:      file_proto_services_task_svc_v1_room_svc_proto_msgTypes,
	}.Build()
	File_proto_services_task_svc_v1_room_svc_proto = out.File
	file_proto_services_task_svc_v1_room_svc_proto_rawDesc = nil
	file_proto_services_task_svc_v1_room_svc_proto_goTypes = nil
	file_proto_services_task_svc_v1_room_svc_proto_depIdxs = nil
}
