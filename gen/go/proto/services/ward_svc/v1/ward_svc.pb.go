// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.30.0
// 	protoc        (unknown)
// source: proto/services/ward_svc/v1/ward_svc.proto

package ward_svc

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

type CreateWardRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Name string `protobuf:"bytes,1,opt,name=name,proto3" json:"name,omitempty" validate:"required"` // @gotags: validate:"required"
}

func (x *CreateWardRequest) Reset() {
	*x = CreateWardRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreateWardRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateWardRequest) ProtoMessage() {}

func (x *CreateWardRequest) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateWardRequest.ProtoReflect.Descriptor instead.
func (*CreateWardRequest) Descriptor() ([]byte, []int) {
	return file_proto_services_ward_svc_v1_ward_svc_proto_rawDescGZIP(), []int{0}
}

func (x *CreateWardRequest) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

type CreateWardResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id   string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	Name string `protobuf:"bytes,2,opt,name=name,proto3" json:"name,omitempty"`
}

func (x *CreateWardResponse) Reset() {
	*x = CreateWardResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreateWardResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateWardResponse) ProtoMessage() {}

func (x *CreateWardResponse) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateWardResponse.ProtoReflect.Descriptor instead.
func (*CreateWardResponse) Descriptor() ([]byte, []int) {
	return file_proto_services_ward_svc_v1_ward_svc_proto_rawDescGZIP(), []int{1}
}

func (x *CreateWardResponse) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *CreateWardResponse) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

type GetWardRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty" validate:"uuid4"` // @gotags: validate:"uuid4"
}

func (x *GetWardRequest) Reset() {
	*x = GetWardRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetWardRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetWardRequest) ProtoMessage() {}

func (x *GetWardRequest) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetWardRequest.ProtoReflect.Descriptor instead.
func (*GetWardRequest) Descriptor() ([]byte, []int) {
	return file_proto_services_ward_svc_v1_ward_svc_proto_rawDescGZIP(), []int{2}
}

func (x *GetWardRequest) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

type GetWardResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id   string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	Name string `protobuf:"bytes,2,opt,name=name,proto3" json:"name,omitempty"`
}

func (x *GetWardResponse) Reset() {
	*x = GetWardResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetWardResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetWardResponse) ProtoMessage() {}

func (x *GetWardResponse) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetWardResponse.ProtoReflect.Descriptor instead.
func (*GetWardResponse) Descriptor() ([]byte, []int) {
	return file_proto_services_ward_svc_v1_ward_svc_proto_rawDescGZIP(), []int{3}
}

func (x *GetWardResponse) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *GetWardResponse) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

type GetWardsRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *GetWardsRequest) Reset() {
	*x = GetWardsRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetWardsRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetWardsRequest) ProtoMessage() {}

func (x *GetWardsRequest) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetWardsRequest.ProtoReflect.Descriptor instead.
func (*GetWardsRequest) Descriptor() ([]byte, []int) {
	return file_proto_services_ward_svc_v1_ward_svc_proto_rawDescGZIP(), []int{4}
}

type GetWardsResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Wards []*GetWardsResponse_Ward `protobuf:"bytes,1,rep,name=wards,proto3" json:"wards,omitempty"`
}

func (x *GetWardsResponse) Reset() {
	*x = GetWardsResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[5]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetWardsResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetWardsResponse) ProtoMessage() {}

func (x *GetWardsResponse) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[5]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetWardsResponse.ProtoReflect.Descriptor instead.
func (*GetWardsResponse) Descriptor() ([]byte, []int) {
	return file_proto_services_ward_svc_v1_ward_svc_proto_rawDescGZIP(), []int{5}
}

func (x *GetWardsResponse) GetWards() []*GetWardsResponse_Ward {
	if x != nil {
		return x.Wards
	}
	return nil
}

type UpdateWardRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id   string  `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty" validate:"uuid4"` // @gotags: validate:"uuid4"
	Name *string `protobuf:"bytes,2,opt,name=name,proto3,oneof" json:"name,omitempty"`
}

func (x *UpdateWardRequest) Reset() {
	*x = UpdateWardRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[6]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *UpdateWardRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*UpdateWardRequest) ProtoMessage() {}

func (x *UpdateWardRequest) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[6]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use UpdateWardRequest.ProtoReflect.Descriptor instead.
func (*UpdateWardRequest) Descriptor() ([]byte, []int) {
	return file_proto_services_ward_svc_v1_ward_svc_proto_rawDescGZIP(), []int{6}
}

func (x *UpdateWardRequest) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *UpdateWardRequest) GetName() string {
	if x != nil && x.Name != nil {
		return *x.Name
	}
	return ""
}

type UpdateWardResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *UpdateWardResponse) Reset() {
	*x = UpdateWardResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[7]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *UpdateWardResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*UpdateWardResponse) ProtoMessage() {}

func (x *UpdateWardResponse) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[7]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use UpdateWardResponse.ProtoReflect.Descriptor instead.
func (*UpdateWardResponse) Descriptor() ([]byte, []int) {
	return file_proto_services_ward_svc_v1_ward_svc_proto_rawDescGZIP(), []int{7}
}

type DeleteWardRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty" validate:"uuid4"` // @gotags: validate:"uuid4"
}

func (x *DeleteWardRequest) Reset() {
	*x = DeleteWardRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[8]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *DeleteWardRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*DeleteWardRequest) ProtoMessage() {}

func (x *DeleteWardRequest) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[8]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use DeleteWardRequest.ProtoReflect.Descriptor instead.
func (*DeleteWardRequest) Descriptor() ([]byte, []int) {
	return file_proto_services_ward_svc_v1_ward_svc_proto_rawDescGZIP(), []int{8}
}

func (x *DeleteWardRequest) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

type DeleteWardResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *DeleteWardResponse) Reset() {
	*x = DeleteWardResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[9]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *DeleteWardResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*DeleteWardResponse) ProtoMessage() {}

func (x *DeleteWardResponse) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[9]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use DeleteWardResponse.ProtoReflect.Descriptor instead.
func (*DeleteWardResponse) Descriptor() ([]byte, []int) {
	return file_proto_services_ward_svc_v1_ward_svc_proto_rawDescGZIP(), []int{9}
}

type GetWardOverviewsRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *GetWardOverviewsRequest) Reset() {
	*x = GetWardOverviewsRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[10]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetWardOverviewsRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetWardOverviewsRequest) ProtoMessage() {}

func (x *GetWardOverviewsRequest) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[10]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetWardOverviewsRequest.ProtoReflect.Descriptor instead.
func (*GetWardOverviewsRequest) Descriptor() ([]byte, []int) {
	return file_proto_services_ward_svc_v1_ward_svc_proto_rawDescGZIP(), []int{10}
}

type GetWardOverviewsResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Wards []*GetWardOverviewsResponse_Ward `protobuf:"bytes,1,rep,name=wards,proto3" json:"wards,omitempty"`
}

func (x *GetWardOverviewsResponse) Reset() {
	*x = GetWardOverviewsResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[11]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetWardOverviewsResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetWardOverviewsResponse) ProtoMessage() {}

func (x *GetWardOverviewsResponse) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[11]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetWardOverviewsResponse.ProtoReflect.Descriptor instead.
func (*GetWardOverviewsResponse) Descriptor() ([]byte, []int) {
	return file_proto_services_ward_svc_v1_ward_svc_proto_rawDescGZIP(), []int{11}
}

func (x *GetWardOverviewsResponse) GetWards() []*GetWardOverviewsResponse_Ward {
	if x != nil {
		return x.Wards
	}
	return nil
}

type GetWardsResponse_Ward struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id   string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	Name string `protobuf:"bytes,2,opt,name=name,proto3" json:"name,omitempty"`
}

func (x *GetWardsResponse_Ward) Reset() {
	*x = GetWardsResponse_Ward{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[12]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetWardsResponse_Ward) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetWardsResponse_Ward) ProtoMessage() {}

func (x *GetWardsResponse_Ward) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[12]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetWardsResponse_Ward.ProtoReflect.Descriptor instead.
func (*GetWardsResponse_Ward) Descriptor() ([]byte, []int) {
	return file_proto_services_ward_svc_v1_ward_svc_proto_rawDescGZIP(), []int{5, 0}
}

func (x *GetWardsResponse_Ward) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *GetWardsResponse_Ward) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

type GetWardOverviewsResponse_Ward struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id          string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	Name        string `protobuf:"bytes,2,opt,name=name,proto3" json:"name,omitempty"`
	Unscheduled uint32 `protobuf:"varint,3,opt,name=unscheduled,proto3" json:"unscheduled,omitempty"`
	InProgress  uint32 `protobuf:"varint,4,opt,name=in_progress,json=inProgress,proto3" json:"in_progress,omitempty"`
	Done        uint32 `protobuf:"varint,5,opt,name=done,proto3" json:"done,omitempty"`
	BedCount    uint32 `protobuf:"varint,6,opt,name=bed_count,json=bedCount,proto3" json:"bed_count,omitempty"`
}

func (x *GetWardOverviewsResponse_Ward) Reset() {
	*x = GetWardOverviewsResponse_Ward{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[13]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetWardOverviewsResponse_Ward) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetWardOverviewsResponse_Ward) ProtoMessage() {}

func (x *GetWardOverviewsResponse_Ward) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[13]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetWardOverviewsResponse_Ward.ProtoReflect.Descriptor instead.
func (*GetWardOverviewsResponse_Ward) Descriptor() ([]byte, []int) {
	return file_proto_services_ward_svc_v1_ward_svc_proto_rawDescGZIP(), []int{11, 0}
}

func (x *GetWardOverviewsResponse_Ward) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *GetWardOverviewsResponse_Ward) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *GetWardOverviewsResponse_Ward) GetUnscheduled() uint32 {
	if x != nil {
		return x.Unscheduled
	}
	return 0
}

func (x *GetWardOverviewsResponse_Ward) GetInProgress() uint32 {
	if x != nil {
		return x.InProgress
	}
	return 0
}

func (x *GetWardOverviewsResponse_Ward) GetDone() uint32 {
	if x != nil {
		return x.Done
	}
	return 0
}

func (x *GetWardOverviewsResponse_Ward) GetBedCount() uint32 {
	if x != nil {
		return x.BedCount
	}
	return 0
}

var File_proto_services_ward_svc_v1_ward_svc_proto protoreflect.FileDescriptor

var file_proto_services_ward_svc_v1_ward_svc_proto_rawDesc = []byte{
	0x0a, 0x29, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73,
	0x2f, 0x77, 0x61, 0x72, 0x64, 0x5f, 0x73, 0x76, 0x63, 0x2f, 0x76, 0x31, 0x2f, 0x77, 0x61, 0x72,
	0x64, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x1a, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x77, 0x61, 0x72, 0x64,
	0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x22, 0x27, 0x0a, 0x11, 0x43, 0x72, 0x65, 0x61, 0x74,
	0x65, 0x57, 0x61, 0x72, 0x64, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x12, 0x0a, 0x04,
	0x6e, 0x61, 0x6d, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65,
	0x22, 0x38, 0x0a, 0x12, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x57, 0x61, 0x72, 0x64, 0x52, 0x65,
	0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01,
	0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x12, 0x12, 0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x02,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x22, 0x20, 0x0a, 0x0e, 0x47, 0x65,
	0x74, 0x57, 0x61, 0x72, 0x64, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x0e, 0x0a, 0x02,
	0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x22, 0x35, 0x0a, 0x0f,
	0x47, 0x65, 0x74, 0x57, 0x61, 0x72, 0x64, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12,
	0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x12,
	0x12, 0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e,
	0x61, 0x6d, 0x65, 0x22, 0x11, 0x0a, 0x0f, 0x47, 0x65, 0x74, 0x57, 0x61, 0x72, 0x64, 0x73, 0x52,
	0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x22, 0x87, 0x01, 0x0a, 0x10, 0x47, 0x65, 0x74, 0x57, 0x61,
	0x72, 0x64, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x47, 0x0a, 0x05, 0x77,
	0x61, 0x72, 0x64, 0x73, 0x18, 0x01, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x31, 0x2e, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x77, 0x61, 0x72, 0x64,
	0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x47, 0x65, 0x74, 0x57, 0x61, 0x72, 0x64, 0x73,
	0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x2e, 0x57, 0x61, 0x72, 0x64, 0x52, 0x05, 0x77,
	0x61, 0x72, 0x64, 0x73, 0x1a, 0x2a, 0x0a, 0x04, 0x57, 0x61, 0x72, 0x64, 0x12, 0x0e, 0x0a, 0x02,
	0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x12, 0x12, 0x0a, 0x04,
	0x6e, 0x61, 0x6d, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65,
	0x22, 0x45, 0x0a, 0x11, 0x55, 0x70, 0x64, 0x61, 0x74, 0x65, 0x57, 0x61, 0x72, 0x64, 0x52, 0x65,
	0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x02, 0x69, 0x64, 0x12, 0x17, 0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x02, 0x20,
	0x01, 0x28, 0x09, 0x48, 0x00, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x88, 0x01, 0x01, 0x42, 0x07,
	0x0a, 0x05, 0x5f, 0x6e, 0x61, 0x6d, 0x65, 0x22, 0x14, 0x0a, 0x12, 0x55, 0x70, 0x64, 0x61, 0x74,
	0x65, 0x57, 0x61, 0x72, 0x64, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x23, 0x0a,
	0x11, 0x44, 0x65, 0x6c, 0x65, 0x74, 0x65, 0x57, 0x61, 0x72, 0x64, 0x52, 0x65, 0x71, 0x75, 0x65,
	0x73, 0x74, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02,
	0x69, 0x64, 0x22, 0x14, 0x0a, 0x12, 0x44, 0x65, 0x6c, 0x65, 0x74, 0x65, 0x57, 0x61, 0x72, 0x64,
	0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x19, 0x0a, 0x17, 0x47, 0x65, 0x74, 0x57,
	0x61, 0x72, 0x64, 0x4f, 0x76, 0x65, 0x72, 0x76, 0x69, 0x65, 0x77, 0x73, 0x52, 0x65, 0x71, 0x75,
	0x65, 0x73, 0x74, 0x22, 0x8c, 0x02, 0x0a, 0x18, 0x47, 0x65, 0x74, 0x57, 0x61, 0x72, 0x64, 0x4f,
	0x76, 0x65, 0x72, 0x76, 0x69, 0x65, 0x77, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65,
	0x12, 0x4f, 0x0a, 0x05, 0x77, 0x61, 0x72, 0x64, 0x73, 0x18, 0x01, 0x20, 0x03, 0x28, 0x0b, 0x32,
	0x39, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73,
	0x2e, 0x77, 0x61, 0x72, 0x64, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x47, 0x65, 0x74,
	0x57, 0x61, 0x72, 0x64, 0x4f, 0x76, 0x65, 0x72, 0x76, 0x69, 0x65, 0x77, 0x73, 0x52, 0x65, 0x73,
	0x70, 0x6f, 0x6e, 0x73, 0x65, 0x2e, 0x57, 0x61, 0x72, 0x64, 0x52, 0x05, 0x77, 0x61, 0x72, 0x64,
	0x73, 0x1a, 0x9e, 0x01, 0x0a, 0x04, 0x57, 0x61, 0x72, 0x64, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64,
	0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x12, 0x12, 0x0a, 0x04, 0x6e, 0x61,
	0x6d, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x20,
	0x0a, 0x0b, 0x75, 0x6e, 0x73, 0x63, 0x68, 0x65, 0x64, 0x75, 0x6c, 0x65, 0x64, 0x18, 0x03, 0x20,
	0x01, 0x28, 0x0d, 0x52, 0x0b, 0x75, 0x6e, 0x73, 0x63, 0x68, 0x65, 0x64, 0x75, 0x6c, 0x65, 0x64,
	0x12, 0x1f, 0x0a, 0x0b, 0x69, 0x6e, 0x5f, 0x70, 0x72, 0x6f, 0x67, 0x72, 0x65, 0x73, 0x73, 0x18,
	0x04, 0x20, 0x01, 0x28, 0x0d, 0x52, 0x0a, 0x69, 0x6e, 0x50, 0x72, 0x6f, 0x67, 0x72, 0x65, 0x73,
	0x73, 0x12, 0x12, 0x0a, 0x04, 0x64, 0x6f, 0x6e, 0x65, 0x18, 0x05, 0x20, 0x01, 0x28, 0x0d, 0x52,
	0x04, 0x64, 0x6f, 0x6e, 0x65, 0x12, 0x1b, 0x0a, 0x09, 0x62, 0x65, 0x64, 0x5f, 0x63, 0x6f, 0x75,
	0x6e, 0x74, 0x18, 0x06, 0x20, 0x01, 0x28, 0x0d, 0x52, 0x08, 0x62, 0x65, 0x64, 0x43, 0x6f, 0x75,
	0x6e, 0x74, 0x32, 0xaa, 0x05, 0x0a, 0x0b, 0x57, 0x61, 0x72, 0x64, 0x53, 0x65, 0x72, 0x76, 0x69,
	0x63, 0x65, 0x12, 0x6d, 0x0a, 0x0a, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x57, 0x61, 0x72, 0x64,
	0x12, 0x2d, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65,
	0x73, 0x2e, 0x77, 0x61, 0x72, 0x64, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x43, 0x72,
	0x65, 0x61, 0x74, 0x65, 0x57, 0x61, 0x72, 0x64, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a,
	0x2e, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73,
	0x2e, 0x77, 0x61, 0x72, 0x64, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x43, 0x72, 0x65,
	0x61, 0x74, 0x65, 0x57, 0x61, 0x72, 0x64, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22,
	0x00, 0x12, 0x64, 0x0a, 0x07, 0x47, 0x65, 0x74, 0x57, 0x61, 0x72, 0x64, 0x12, 0x2a, 0x2e, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x77, 0x61,
	0x72, 0x64, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x47, 0x65, 0x74, 0x57, 0x61, 0x72,
	0x64, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x2b, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x77, 0x61, 0x72, 0x64, 0x5f, 0x73,
	0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x47, 0x65, 0x74, 0x57, 0x61, 0x72, 0x64, 0x52, 0x65, 0x73,
	0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x00, 0x12, 0x67, 0x0a, 0x08, 0x47, 0x65, 0x74, 0x57, 0x61,
	0x72, 0x64, 0x73, 0x12, 0x2b, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76,
	0x69, 0x63, 0x65, 0x73, 0x2e, 0x77, 0x61, 0x72, 0x64, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31,
	0x2e, 0x47, 0x65, 0x74, 0x57, 0x61, 0x72, 0x64, 0x73, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74,
	0x1a, 0x2c, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65,
	0x73, 0x2e, 0x77, 0x61, 0x72, 0x64, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x47, 0x65,
	0x74, 0x57, 0x61, 0x72, 0x64, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x00,
	0x12, 0x6d, 0x0a, 0x0a, 0x55, 0x70, 0x64, 0x61, 0x74, 0x65, 0x57, 0x61, 0x72, 0x64, 0x12, 0x2d,
	0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e,
	0x77, 0x61, 0x72, 0x64, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x55, 0x70, 0x64, 0x61,
	0x74, 0x65, 0x57, 0x61, 0x72, 0x64, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x2e, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x77,
	0x61, 0x72, 0x64, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x55, 0x70, 0x64, 0x61, 0x74,
	0x65, 0x57, 0x61, 0x72, 0x64, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x00, 0x12,
	0x6d, 0x0a, 0x0a, 0x44, 0x65, 0x6c, 0x65, 0x74, 0x65, 0x57, 0x61, 0x72, 0x64, 0x12, 0x2d, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x77,
	0x61, 0x72, 0x64, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x44, 0x65, 0x6c, 0x65, 0x74,
	0x65, 0x57, 0x61, 0x72, 0x64, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x2e, 0x2e, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x77, 0x61,
	0x72, 0x64, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x44, 0x65, 0x6c, 0x65, 0x74, 0x65,
	0x57, 0x61, 0x72, 0x64, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x00, 0x12, 0x7f,
	0x0a, 0x10, 0x47, 0x65, 0x74, 0x57, 0x61, 0x72, 0x64, 0x4f, 0x76, 0x65, 0x72, 0x76, 0x69, 0x65,
	0x77, 0x73, 0x12, 0x33, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69,
	0x63, 0x65, 0x73, 0x2e, 0x77, 0x61, 0x72, 0x64, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e,
	0x47, 0x65, 0x74, 0x57, 0x61, 0x72, 0x64, 0x4f, 0x76, 0x65, 0x72, 0x76, 0x69, 0x65, 0x77, 0x73,
	0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x34, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e,
	0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x77, 0x61, 0x72, 0x64, 0x5f, 0x73, 0x76,
	0x63, 0x2e, 0x76, 0x31, 0x2e, 0x47, 0x65, 0x74, 0x57, 0x61, 0x72, 0x64, 0x4f, 0x76, 0x65, 0x72,
	0x76, 0x69, 0x65, 0x77, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x00, 0x42,
	0xd2, 0x01, 0x0a, 0x1e, 0x63, 0x6f, 0x6d, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65,
	0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x77, 0x61, 0x72, 0x64, 0x5f, 0x73, 0x76, 0x63, 0x2e,
	0x76, 0x31, 0x42, 0x0c, 0x57, 0x61, 0x72, 0x64, 0x53, 0x76, 0x63, 0x50, 0x72, 0x6f, 0x74, 0x6f,
	0x50, 0x01, 0x5a, 0x1b, 0x67, 0x65, 0x6e, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x73, 0x65,
	0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2f, 0x77, 0x61, 0x72, 0x64, 0x2d, 0x73, 0x76, 0x63, 0xa2,
	0x02, 0x03, 0x50, 0x53, 0x57, 0xaa, 0x02, 0x19, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x53, 0x65,
	0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x57, 0x61, 0x72, 0x64, 0x53, 0x76, 0x63, 0x2e, 0x56,
	0x31, 0xca, 0x02, 0x19, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x5c, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63,
	0x65, 0x73, 0x5c, 0x57, 0x61, 0x72, 0x64, 0x53, 0x76, 0x63, 0x5c, 0x56, 0x31, 0xe2, 0x02, 0x25,
	0x50, 0x72, 0x6f, 0x74, 0x6f, 0x5c, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x5c, 0x57,
	0x61, 0x72, 0x64, 0x53, 0x76, 0x63, 0x5c, 0x56, 0x31, 0x5c, 0x47, 0x50, 0x42, 0x4d, 0x65, 0x74,
	0x61, 0x64, 0x61, 0x74, 0x61, 0xea, 0x02, 0x1c, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x3a, 0x3a, 0x53,
	0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x3a, 0x3a, 0x57, 0x61, 0x72, 0x64, 0x53, 0x76, 0x63,
	0x3a, 0x3a, 0x56, 0x31, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_proto_services_ward_svc_v1_ward_svc_proto_rawDescOnce sync.Once
	file_proto_services_ward_svc_v1_ward_svc_proto_rawDescData = file_proto_services_ward_svc_v1_ward_svc_proto_rawDesc
)

func file_proto_services_ward_svc_v1_ward_svc_proto_rawDescGZIP() []byte {
	file_proto_services_ward_svc_v1_ward_svc_proto_rawDescOnce.Do(func() {
		file_proto_services_ward_svc_v1_ward_svc_proto_rawDescData = protoimpl.X.CompressGZIP(file_proto_services_ward_svc_v1_ward_svc_proto_rawDescData)
	})
	return file_proto_services_ward_svc_v1_ward_svc_proto_rawDescData
}

var file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes = make([]protoimpl.MessageInfo, 14)
var file_proto_services_ward_svc_v1_ward_svc_proto_goTypes = []interface{}{
	(*CreateWardRequest)(nil),             // 0: proto.services.ward_svc.v1.CreateWardRequest
	(*CreateWardResponse)(nil),            // 1: proto.services.ward_svc.v1.CreateWardResponse
	(*GetWardRequest)(nil),                // 2: proto.services.ward_svc.v1.GetWardRequest
	(*GetWardResponse)(nil),               // 3: proto.services.ward_svc.v1.GetWardResponse
	(*GetWardsRequest)(nil),               // 4: proto.services.ward_svc.v1.GetWardsRequest
	(*GetWardsResponse)(nil),              // 5: proto.services.ward_svc.v1.GetWardsResponse
	(*UpdateWardRequest)(nil),             // 6: proto.services.ward_svc.v1.UpdateWardRequest
	(*UpdateWardResponse)(nil),            // 7: proto.services.ward_svc.v1.UpdateWardResponse
	(*DeleteWardRequest)(nil),             // 8: proto.services.ward_svc.v1.DeleteWardRequest
	(*DeleteWardResponse)(nil),            // 9: proto.services.ward_svc.v1.DeleteWardResponse
	(*GetWardOverviewsRequest)(nil),       // 10: proto.services.ward_svc.v1.GetWardOverviewsRequest
	(*GetWardOverviewsResponse)(nil),      // 11: proto.services.ward_svc.v1.GetWardOverviewsResponse
	(*GetWardsResponse_Ward)(nil),         // 12: proto.services.ward_svc.v1.GetWardsResponse.Ward
	(*GetWardOverviewsResponse_Ward)(nil), // 13: proto.services.ward_svc.v1.GetWardOverviewsResponse.Ward
}
var file_proto_services_ward_svc_v1_ward_svc_proto_depIdxs = []int32{
	12, // 0: proto.services.ward_svc.v1.GetWardsResponse.wards:type_name -> proto.services.ward_svc.v1.GetWardsResponse.Ward
	13, // 1: proto.services.ward_svc.v1.GetWardOverviewsResponse.wards:type_name -> proto.services.ward_svc.v1.GetWardOverviewsResponse.Ward
	0,  // 2: proto.services.ward_svc.v1.WardService.CreateWard:input_type -> proto.services.ward_svc.v1.CreateWardRequest
	2,  // 3: proto.services.ward_svc.v1.WardService.GetWard:input_type -> proto.services.ward_svc.v1.GetWardRequest
	4,  // 4: proto.services.ward_svc.v1.WardService.GetWards:input_type -> proto.services.ward_svc.v1.GetWardsRequest
	6,  // 5: proto.services.ward_svc.v1.WardService.UpdateWard:input_type -> proto.services.ward_svc.v1.UpdateWardRequest
	8,  // 6: proto.services.ward_svc.v1.WardService.DeleteWard:input_type -> proto.services.ward_svc.v1.DeleteWardRequest
	10, // 7: proto.services.ward_svc.v1.WardService.GetWardOverviews:input_type -> proto.services.ward_svc.v1.GetWardOverviewsRequest
	1,  // 8: proto.services.ward_svc.v1.WardService.CreateWard:output_type -> proto.services.ward_svc.v1.CreateWardResponse
	3,  // 9: proto.services.ward_svc.v1.WardService.GetWard:output_type -> proto.services.ward_svc.v1.GetWardResponse
	5,  // 10: proto.services.ward_svc.v1.WardService.GetWards:output_type -> proto.services.ward_svc.v1.GetWardsResponse
	7,  // 11: proto.services.ward_svc.v1.WardService.UpdateWard:output_type -> proto.services.ward_svc.v1.UpdateWardResponse
	9,  // 12: proto.services.ward_svc.v1.WardService.DeleteWard:output_type -> proto.services.ward_svc.v1.DeleteWardResponse
	11, // 13: proto.services.ward_svc.v1.WardService.GetWardOverviews:output_type -> proto.services.ward_svc.v1.GetWardOverviewsResponse
	8,  // [8:14] is the sub-list for method output_type
	2,  // [2:8] is the sub-list for method input_type
	2,  // [2:2] is the sub-list for extension type_name
	2,  // [2:2] is the sub-list for extension extendee
	0,  // [0:2] is the sub-list for field type_name
}

func init() { file_proto_services_ward_svc_v1_ward_svc_proto_init() }
func file_proto_services_ward_svc_v1_ward_svc_proto_init() {
	if File_proto_services_ward_svc_v1_ward_svc_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*CreateWardRequest); i {
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
		file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*CreateWardResponse); i {
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
		file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GetWardRequest); i {
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
		file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GetWardResponse); i {
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
		file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GetWardsRequest); i {
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
		file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[5].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GetWardsResponse); i {
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
		file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[6].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*UpdateWardRequest); i {
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
		file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[7].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*UpdateWardResponse); i {
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
		file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[8].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*DeleteWardRequest); i {
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
		file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[9].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*DeleteWardResponse); i {
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
		file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[10].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GetWardOverviewsRequest); i {
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
		file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[11].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GetWardOverviewsResponse); i {
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
		file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[12].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GetWardsResponse_Ward); i {
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
		file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[13].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GetWardOverviewsResponse_Ward); i {
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
	file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes[6].OneofWrappers = []interface{}{}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_proto_services_ward_svc_v1_ward_svc_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   14,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_proto_services_ward_svc_v1_ward_svc_proto_goTypes,
		DependencyIndexes: file_proto_services_ward_svc_v1_ward_svc_proto_depIdxs,
		MessageInfos:      file_proto_services_ward_svc_v1_ward_svc_proto_msgTypes,
	}.Build()
	File_proto_services_ward_svc_v1_ward_svc_proto = out.File
	file_proto_services_ward_svc_v1_ward_svc_proto_rawDesc = nil
	file_proto_services_ward_svc_v1_ward_svc_proto_goTypes = nil
	file_proto_services_ward_svc_v1_ward_svc_proto_depIdxs = nil
}
