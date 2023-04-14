// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.30.0
// 	protoc        (unknown)
// source: proto/services/user_svc/v1/organization_svc.proto

package user_svc

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

type CreateOrganizationRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	LongName     string `protobuf:"bytes,1,opt,name=long_name,json=longName,proto3" json:"long_name,omitempty" validate:"required,gte=4,lte=64"`             // @gotags: validate:"required,gte=4,lte=64"
	ShortName    string `protobuf:"bytes,2,opt,name=short_name,json=shortName,proto3" json:"short_name,omitempty" validate:"omitempty,gte=2,lte=16"`          // @gotags: validate:"omitempty,gte=2,lte=16"
	ContactEmail string `protobuf:"bytes,3,opt,name=contact_email,json=contactEmail,proto3" json:"contact_email,omitempty" validate:"required,email"` // @gotags: validate:"required,email"
	IsPersonal   bool   `protobuf:"varint,4,opt,name=is_personal,json=isPersonal,proto3" json:"is_personal,omitempty" validate:"required"`      // @gotags: validate:"required"
}

func (x *CreateOrganizationRequest) Reset() {
	*x = CreateOrganizationRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_user_svc_v1_organization_svc_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreateOrganizationRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateOrganizationRequest) ProtoMessage() {}

func (x *CreateOrganizationRequest) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_user_svc_v1_organization_svc_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateOrganizationRequest.ProtoReflect.Descriptor instead.
func (*CreateOrganizationRequest) Descriptor() ([]byte, []int) {
	return file_proto_services_user_svc_v1_organization_svc_proto_rawDescGZIP(), []int{0}
}

func (x *CreateOrganizationRequest) GetLongName() string {
	if x != nil {
		return x.LongName
	}
	return ""
}

func (x *CreateOrganizationRequest) GetShortName() string {
	if x != nil {
		return x.ShortName
	}
	return ""
}

func (x *CreateOrganizationRequest) GetContactEmail() string {
	if x != nil {
		return x.ContactEmail
	}
	return ""
}

func (x *CreateOrganizationRequest) GetIsPersonal() bool {
	if x != nil {
		return x.IsPersonal
	}
	return false
}

type CreateOrganizationResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
}

func (x *CreateOrganizationResponse) Reset() {
	*x = CreateOrganizationResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_user_svc_v1_organization_svc_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreateOrganizationResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateOrganizationResponse) ProtoMessage() {}

func (x *CreateOrganizationResponse) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_user_svc_v1_organization_svc_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateOrganizationResponse.ProtoReflect.Descriptor instead.
func (*CreateOrganizationResponse) Descriptor() ([]byte, []int) {
	return file_proto_services_user_svc_v1_organization_svc_proto_rawDescGZIP(), []int{1}
}

func (x *CreateOrganizationResponse) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

type CreateOrganizationForUserRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	LongName     string `protobuf:"bytes,1,opt,name=long_name,json=longName,proto3" json:"long_name,omitempty" validate:"required,gte=4,lte=64"`             // @gotags: validate:"required,gte=4,lte=64"
	ShortName    string `protobuf:"bytes,2,opt,name=short_name,json=shortName,proto3" json:"short_name,omitempty" validate:"omitempty,gte=2,lte=16"`          // @gotags: validate:"omitempty,gte=2,lte=16"
	ContactEmail string `protobuf:"bytes,3,opt,name=contact_email,json=contactEmail,proto3" json:"contact_email,omitempty" validate:"required,email"` // @gotags: validate:"required,email"
	IsPersonal   bool   `protobuf:"varint,4,opt,name=is_personal,json=isPersonal,proto3" json:"is_personal,omitempty" validate:"required"`      // @gotags: validate:"required"
	UserId       string `protobuf:"bytes,5,opt,name=user_id,json=userId,proto3" json:"user_id,omitempty" validate:"uuid4"`                   // @gotags: validate:"uuid4"
}

func (x *CreateOrganizationForUserRequest) Reset() {
	*x = CreateOrganizationForUserRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_user_svc_v1_organization_svc_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreateOrganizationForUserRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateOrganizationForUserRequest) ProtoMessage() {}

func (x *CreateOrganizationForUserRequest) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_user_svc_v1_organization_svc_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateOrganizationForUserRequest.ProtoReflect.Descriptor instead.
func (*CreateOrganizationForUserRequest) Descriptor() ([]byte, []int) {
	return file_proto_services_user_svc_v1_organization_svc_proto_rawDescGZIP(), []int{2}
}

func (x *CreateOrganizationForUserRequest) GetLongName() string {
	if x != nil {
		return x.LongName
	}
	return ""
}

func (x *CreateOrganizationForUserRequest) GetShortName() string {
	if x != nil {
		return x.ShortName
	}
	return ""
}

func (x *CreateOrganizationForUserRequest) GetContactEmail() string {
	if x != nil {
		return x.ContactEmail
	}
	return ""
}

func (x *CreateOrganizationForUserRequest) GetIsPersonal() bool {
	if x != nil {
		return x.IsPersonal
	}
	return false
}

func (x *CreateOrganizationForUserRequest) GetUserId() string {
	if x != nil {
		return x.UserId
	}
	return ""
}

type CreateOrganizationForUserResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
}

func (x *CreateOrganizationForUserResponse) Reset() {
	*x = CreateOrganizationForUserResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_user_svc_v1_organization_svc_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreateOrganizationForUserResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateOrganizationForUserResponse) ProtoMessage() {}

func (x *CreateOrganizationForUserResponse) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_user_svc_v1_organization_svc_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateOrganizationForUserResponse.ProtoReflect.Descriptor instead.
func (*CreateOrganizationForUserResponse) Descriptor() ([]byte, []int) {
	return file_proto_services_user_svc_v1_organization_svc_proto_rawDescGZIP(), []int{3}
}

func (x *CreateOrganizationForUserResponse) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

type Member struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	UserId string `protobuf:"bytes,1,opt,name=user_id,json=userId,proto3" json:"user_id,omitempty"`
}

func (x *Member) Reset() {
	*x = Member{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_user_svc_v1_organization_svc_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Member) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Member) ProtoMessage() {}

func (x *Member) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_user_svc_v1_organization_svc_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Member.ProtoReflect.Descriptor instead.
func (*Member) Descriptor() ([]byte, []int) {
	return file_proto_services_user_svc_v1_organization_svc_proto_rawDescGZIP(), []int{4}
}

func (x *Member) GetUserId() string {
	if x != nil {
		return x.UserId
	}
	return ""
}

type GetOrganizationRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty" validate:"uuid4"` // @gotags: validate:"uuid4"
}

func (x *GetOrganizationRequest) Reset() {
	*x = GetOrganizationRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_user_svc_v1_organization_svc_proto_msgTypes[5]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetOrganizationRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetOrganizationRequest) ProtoMessage() {}

func (x *GetOrganizationRequest) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_user_svc_v1_organization_svc_proto_msgTypes[5]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetOrganizationRequest.ProtoReflect.Descriptor instead.
func (*GetOrganizationRequest) Descriptor() ([]byte, []int) {
	return file_proto_services_user_svc_v1_organization_svc_proto_rawDescGZIP(), []int{5}
}

func (x *GetOrganizationRequest) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

type GetOrganizationResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id           string    `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	LongName     string    `protobuf:"bytes,2,opt,name=long_name,json=longName,proto3" json:"long_name,omitempty"`
	ShortName    string    `protobuf:"bytes,3,opt,name=short_name,json=shortName,proto3" json:"short_name,omitempty"`
	ContactEmail string    `protobuf:"bytes,4,opt,name=contact_email,json=contactEmail,proto3" json:"contact_email,omitempty"`
	AvatarUrl    string    `protobuf:"bytes,5,opt,name=avatar_url,json=avatarUrl,proto3" json:"avatar_url,omitempty"`
	IsPersonal   bool      `protobuf:"varint,6,opt,name=is_personal,json=isPersonal,proto3" json:"is_personal,omitempty"`
	Members      []*Member `protobuf:"bytes,7,rep,name=members,proto3" json:"members,omitempty"`
}

func (x *GetOrganizationResponse) Reset() {
	*x = GetOrganizationResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_services_user_svc_v1_organization_svc_proto_msgTypes[6]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetOrganizationResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetOrganizationResponse) ProtoMessage() {}

func (x *GetOrganizationResponse) ProtoReflect() protoreflect.Message {
	mi := &file_proto_services_user_svc_v1_organization_svc_proto_msgTypes[6]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetOrganizationResponse.ProtoReflect.Descriptor instead.
func (*GetOrganizationResponse) Descriptor() ([]byte, []int) {
	return file_proto_services_user_svc_v1_organization_svc_proto_rawDescGZIP(), []int{6}
}

func (x *GetOrganizationResponse) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *GetOrganizationResponse) GetLongName() string {
	if x != nil {
		return x.LongName
	}
	return ""
}

func (x *GetOrganizationResponse) GetShortName() string {
	if x != nil {
		return x.ShortName
	}
	return ""
}

func (x *GetOrganizationResponse) GetContactEmail() string {
	if x != nil {
		return x.ContactEmail
	}
	return ""
}

func (x *GetOrganizationResponse) GetAvatarUrl() string {
	if x != nil {
		return x.AvatarUrl
	}
	return ""
}

func (x *GetOrganizationResponse) GetIsPersonal() bool {
	if x != nil {
		return x.IsPersonal
	}
	return false
}

func (x *GetOrganizationResponse) GetMembers() []*Member {
	if x != nil {
		return x.Members
	}
	return nil
}

var File_proto_services_user_svc_v1_organization_svc_proto protoreflect.FileDescriptor

var file_proto_services_user_svc_v1_organization_svc_proto_rawDesc = []byte{
	0x0a, 0x31, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73,
	0x2f, 0x75, 0x73, 0x65, 0x72, 0x5f, 0x73, 0x76, 0x63, 0x2f, 0x76, 0x31, 0x2f, 0x6f, 0x72, 0x67,
	0x61, 0x6e, 0x69, 0x7a, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x12, 0x1a, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69,
	0x63, 0x65, 0x73, 0x2e, 0x75, 0x73, 0x65, 0x72, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x22,
	0x9d, 0x01, 0x0a, 0x19, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x4f, 0x72, 0x67, 0x61, 0x6e, 0x69,
	0x7a, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x1b, 0x0a,
	0x09, 0x6c, 0x6f, 0x6e, 0x67, 0x5f, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x08, 0x6c, 0x6f, 0x6e, 0x67, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x1d, 0x0a, 0x0a, 0x73, 0x68,
	0x6f, 0x72, 0x74, 0x5f, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x09,
	0x73, 0x68, 0x6f, 0x72, 0x74, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x23, 0x0a, 0x0d, 0x63, 0x6f, 0x6e,
	0x74, 0x61, 0x63, 0x74, 0x5f, 0x65, 0x6d, 0x61, 0x69, 0x6c, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x0c, 0x63, 0x6f, 0x6e, 0x74, 0x61, 0x63, 0x74, 0x45, 0x6d, 0x61, 0x69, 0x6c, 0x12, 0x1f,
	0x0a, 0x0b, 0x69, 0x73, 0x5f, 0x70, 0x65, 0x72, 0x73, 0x6f, 0x6e, 0x61, 0x6c, 0x18, 0x04, 0x20,
	0x01, 0x28, 0x08, 0x52, 0x0a, 0x69, 0x73, 0x50, 0x65, 0x72, 0x73, 0x6f, 0x6e, 0x61, 0x6c, 0x22,
	0x2c, 0x0a, 0x1a, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x4f, 0x72, 0x67, 0x61, 0x6e, 0x69, 0x7a,
	0x61, 0x74, 0x69, 0x6f, 0x6e, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x0e, 0x0a,
	0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x22, 0xbd, 0x01,
	0x0a, 0x20, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x4f, 0x72, 0x67, 0x61, 0x6e, 0x69, 0x7a, 0x61,
	0x74, 0x69, 0x6f, 0x6e, 0x46, 0x6f, 0x72, 0x55, 0x73, 0x65, 0x72, 0x52, 0x65, 0x71, 0x75, 0x65,
	0x73, 0x74, 0x12, 0x1b, 0x0a, 0x09, 0x6c, 0x6f, 0x6e, 0x67, 0x5f, 0x6e, 0x61, 0x6d, 0x65, 0x18,
	0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x08, 0x6c, 0x6f, 0x6e, 0x67, 0x4e, 0x61, 0x6d, 0x65, 0x12,
	0x1d, 0x0a, 0x0a, 0x73, 0x68, 0x6f, 0x72, 0x74, 0x5f, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x02, 0x20,
	0x01, 0x28, 0x09, 0x52, 0x09, 0x73, 0x68, 0x6f, 0x72, 0x74, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x23,
	0x0a, 0x0d, 0x63, 0x6f, 0x6e, 0x74, 0x61, 0x63, 0x74, 0x5f, 0x65, 0x6d, 0x61, 0x69, 0x6c, 0x18,
	0x03, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0c, 0x63, 0x6f, 0x6e, 0x74, 0x61, 0x63, 0x74, 0x45, 0x6d,
	0x61, 0x69, 0x6c, 0x12, 0x1f, 0x0a, 0x0b, 0x69, 0x73, 0x5f, 0x70, 0x65, 0x72, 0x73, 0x6f, 0x6e,
	0x61, 0x6c, 0x18, 0x04, 0x20, 0x01, 0x28, 0x08, 0x52, 0x0a, 0x69, 0x73, 0x50, 0x65, 0x72, 0x73,
	0x6f, 0x6e, 0x61, 0x6c, 0x12, 0x17, 0x0a, 0x07, 0x75, 0x73, 0x65, 0x72, 0x5f, 0x69, 0x64, 0x18,
	0x05, 0x20, 0x01, 0x28, 0x09, 0x52, 0x06, 0x75, 0x73, 0x65, 0x72, 0x49, 0x64, 0x22, 0x33, 0x0a,
	0x21, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x4f, 0x72, 0x67, 0x61, 0x6e, 0x69, 0x7a, 0x61, 0x74,
	0x69, 0x6f, 0x6e, 0x46, 0x6f, 0x72, 0x55, 0x73, 0x65, 0x72, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e,
	0x73, 0x65, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02,
	0x69, 0x64, 0x22, 0x21, 0x0a, 0x06, 0x4d, 0x65, 0x6d, 0x62, 0x65, 0x72, 0x12, 0x17, 0x0a, 0x07,
	0x75, 0x73, 0x65, 0x72, 0x5f, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x06, 0x75,
	0x73, 0x65, 0x72, 0x49, 0x64, 0x22, 0x28, 0x0a, 0x16, 0x47, 0x65, 0x74, 0x4f, 0x72, 0x67, 0x61,
	0x6e, 0x69, 0x7a, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12,
	0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x22,
	0x88, 0x02, 0x0a, 0x17, 0x47, 0x65, 0x74, 0x4f, 0x72, 0x67, 0x61, 0x6e, 0x69, 0x7a, 0x61, 0x74,
	0x69, 0x6f, 0x6e, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x0e, 0x0a, 0x02, 0x69,
	0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x12, 0x1b, 0x0a, 0x09, 0x6c,
	0x6f, 0x6e, 0x67, 0x5f, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x08,
	0x6c, 0x6f, 0x6e, 0x67, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x1d, 0x0a, 0x0a, 0x73, 0x68, 0x6f, 0x72,
	0x74, 0x5f, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x52, 0x09, 0x73, 0x68,
	0x6f, 0x72, 0x74, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x23, 0x0a, 0x0d, 0x63, 0x6f, 0x6e, 0x74, 0x61,
	0x63, 0x74, 0x5f, 0x65, 0x6d, 0x61, 0x69, 0x6c, 0x18, 0x04, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0c,
	0x63, 0x6f, 0x6e, 0x74, 0x61, 0x63, 0x74, 0x45, 0x6d, 0x61, 0x69, 0x6c, 0x12, 0x1d, 0x0a, 0x0a,
	0x61, 0x76, 0x61, 0x74, 0x61, 0x72, 0x5f, 0x75, 0x72, 0x6c, 0x18, 0x05, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x09, 0x61, 0x76, 0x61, 0x74, 0x61, 0x72, 0x55, 0x72, 0x6c, 0x12, 0x1f, 0x0a, 0x0b, 0x69,
	0x73, 0x5f, 0x70, 0x65, 0x72, 0x73, 0x6f, 0x6e, 0x61, 0x6c, 0x18, 0x06, 0x20, 0x01, 0x28, 0x08,
	0x52, 0x0a, 0x69, 0x73, 0x50, 0x65, 0x72, 0x73, 0x6f, 0x6e, 0x61, 0x6c, 0x12, 0x3c, 0x0a, 0x07,
	0x6d, 0x65, 0x6d, 0x62, 0x65, 0x72, 0x73, 0x18, 0x07, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x22, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x75,
	0x73, 0x65, 0x72, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x4d, 0x65, 0x6d, 0x62, 0x65,
	0x72, 0x52, 0x07, 0x6d, 0x65, 0x6d, 0x62, 0x65, 0x72, 0x73, 0x32, 0xb8, 0x03, 0x0a, 0x13, 0x4f,
	0x72, 0x67, 0x61, 0x6e, 0x69, 0x7a, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x53, 0x65, 0x72, 0x76, 0x69,
	0x63, 0x65, 0x12, 0x85, 0x01, 0x0a, 0x12, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x4f, 0x72, 0x67,
	0x61, 0x6e, 0x69, 0x7a, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x35, 0x2e, 0x70, 0x72, 0x6f, 0x74,
	0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x75, 0x73, 0x65, 0x72, 0x5f,
	0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x4f, 0x72, 0x67,
	0x61, 0x6e, 0x69, 0x7a, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74,
	0x1a, 0x36, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65,
	0x73, 0x2e, 0x75, 0x73, 0x65, 0x72, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x43, 0x72,
	0x65, 0x61, 0x74, 0x65, 0x4f, 0x72, 0x67, 0x61, 0x6e, 0x69, 0x7a, 0x61, 0x74, 0x69, 0x6f, 0x6e,
	0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x00, 0x12, 0x9a, 0x01, 0x0a, 0x19, 0x43,
	0x72, 0x65, 0x61, 0x74, 0x65, 0x4f, 0x72, 0x67, 0x61, 0x6e, 0x69, 0x7a, 0x61, 0x74, 0x69, 0x6f,
	0x6e, 0x46, 0x6f, 0x72, 0x55, 0x73, 0x65, 0x72, 0x12, 0x3c, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x75, 0x73, 0x65, 0x72, 0x5f, 0x73,
	0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x4f, 0x72, 0x67, 0x61,
	0x6e, 0x69, 0x7a, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x46, 0x6f, 0x72, 0x55, 0x73, 0x65, 0x72, 0x52,
	0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x3d, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73,
	0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x75, 0x73, 0x65, 0x72, 0x5f, 0x73, 0x76, 0x63,
	0x2e, 0x76, 0x31, 0x2e, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x4f, 0x72, 0x67, 0x61, 0x6e, 0x69,
	0x7a, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x46, 0x6f, 0x72, 0x55, 0x73, 0x65, 0x72, 0x52, 0x65, 0x73,
	0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x00, 0x12, 0x7c, 0x0a, 0x0f, 0x47, 0x65, 0x74, 0x4f, 0x72,
	0x67, 0x61, 0x6e, 0x69, 0x7a, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x32, 0x2e, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x75, 0x73, 0x65, 0x72,
	0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x47, 0x65, 0x74, 0x4f, 0x72, 0x67, 0x61, 0x6e,
	0x69, 0x7a, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x33,
	0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e,
	0x75, 0x73, 0x65, 0x72, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x47, 0x65, 0x74, 0x4f,
	0x72, 0x67, 0x61, 0x6e, 0x69, 0x7a, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x52, 0x65, 0x73, 0x70, 0x6f,
	0x6e, 0x73, 0x65, 0x22, 0x00, 0x42, 0xda, 0x01, 0x0a, 0x1e, 0x63, 0x6f, 0x6d, 0x2e, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x75, 0x73, 0x65,
	0x72, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x42, 0x14, 0x4f, 0x72, 0x67, 0x61, 0x6e, 0x69,
	0x7a, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x53, 0x76, 0x63, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x50, 0x01,
	0x5a, 0x1b, 0x67, 0x65, 0x6e, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x73, 0x65, 0x72, 0x76,
	0x69, 0x63, 0x65, 0x73, 0x2f, 0x75, 0x73, 0x65, 0x72, 0x2d, 0x73, 0x76, 0x63, 0xa2, 0x02, 0x03,
	0x50, 0x53, 0x55, 0xaa, 0x02, 0x19, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x53, 0x65, 0x72, 0x76,
	0x69, 0x63, 0x65, 0x73, 0x2e, 0x55, 0x73, 0x65, 0x72, 0x53, 0x76, 0x63, 0x2e, 0x56, 0x31, 0xca,
	0x02, 0x19, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x5c, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73,
	0x5c, 0x55, 0x73, 0x65, 0x72, 0x53, 0x76, 0x63, 0x5c, 0x56, 0x31, 0xe2, 0x02, 0x25, 0x50, 0x72,
	0x6f, 0x74, 0x6f, 0x5c, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x5c, 0x55, 0x73, 0x65,
	0x72, 0x53, 0x76, 0x63, 0x5c, 0x56, 0x31, 0x5c, 0x47, 0x50, 0x42, 0x4d, 0x65, 0x74, 0x61, 0x64,
	0x61, 0x74, 0x61, 0xea, 0x02, 0x1c, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x3a, 0x3a, 0x53, 0x65, 0x72,
	0x76, 0x69, 0x63, 0x65, 0x73, 0x3a, 0x3a, 0x55, 0x73, 0x65, 0x72, 0x53, 0x76, 0x63, 0x3a, 0x3a,
	0x56, 0x31, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_proto_services_user_svc_v1_organization_svc_proto_rawDescOnce sync.Once
	file_proto_services_user_svc_v1_organization_svc_proto_rawDescData = file_proto_services_user_svc_v1_organization_svc_proto_rawDesc
)

func file_proto_services_user_svc_v1_organization_svc_proto_rawDescGZIP() []byte {
	file_proto_services_user_svc_v1_organization_svc_proto_rawDescOnce.Do(func() {
		file_proto_services_user_svc_v1_organization_svc_proto_rawDescData = protoimpl.X.CompressGZIP(file_proto_services_user_svc_v1_organization_svc_proto_rawDescData)
	})
	return file_proto_services_user_svc_v1_organization_svc_proto_rawDescData
}

var file_proto_services_user_svc_v1_organization_svc_proto_msgTypes = make([]protoimpl.MessageInfo, 7)
var file_proto_services_user_svc_v1_organization_svc_proto_goTypes = []interface{}{
	(*CreateOrganizationRequest)(nil),         // 0: proto.services.user_svc.v1.CreateOrganizationRequest
	(*CreateOrganizationResponse)(nil),        // 1: proto.services.user_svc.v1.CreateOrganizationResponse
	(*CreateOrganizationForUserRequest)(nil),  // 2: proto.services.user_svc.v1.CreateOrganizationForUserRequest
	(*CreateOrganizationForUserResponse)(nil), // 3: proto.services.user_svc.v1.CreateOrganizationForUserResponse
	(*Member)(nil),                  // 4: proto.services.user_svc.v1.Member
	(*GetOrganizationRequest)(nil),  // 5: proto.services.user_svc.v1.GetOrganizationRequest
	(*GetOrganizationResponse)(nil), // 6: proto.services.user_svc.v1.GetOrganizationResponse
}
var file_proto_services_user_svc_v1_organization_svc_proto_depIdxs = []int32{
	4, // 0: proto.services.user_svc.v1.GetOrganizationResponse.members:type_name -> proto.services.user_svc.v1.Member
	0, // 1: proto.services.user_svc.v1.OrganizationService.CreateOrganization:input_type -> proto.services.user_svc.v1.CreateOrganizationRequest
	2, // 2: proto.services.user_svc.v1.OrganizationService.CreateOrganizationForUser:input_type -> proto.services.user_svc.v1.CreateOrganizationForUserRequest
	5, // 3: proto.services.user_svc.v1.OrganizationService.GetOrganization:input_type -> proto.services.user_svc.v1.GetOrganizationRequest
	1, // 4: proto.services.user_svc.v1.OrganizationService.CreateOrganization:output_type -> proto.services.user_svc.v1.CreateOrganizationResponse
	3, // 5: proto.services.user_svc.v1.OrganizationService.CreateOrganizationForUser:output_type -> proto.services.user_svc.v1.CreateOrganizationForUserResponse
	6, // 6: proto.services.user_svc.v1.OrganizationService.GetOrganization:output_type -> proto.services.user_svc.v1.GetOrganizationResponse
	4, // [4:7] is the sub-list for method output_type
	1, // [1:4] is the sub-list for method input_type
	1, // [1:1] is the sub-list for extension type_name
	1, // [1:1] is the sub-list for extension extendee
	0, // [0:1] is the sub-list for field type_name
}

func init() { file_proto_services_user_svc_v1_organization_svc_proto_init() }
func file_proto_services_user_svc_v1_organization_svc_proto_init() {
	if File_proto_services_user_svc_v1_organization_svc_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_proto_services_user_svc_v1_organization_svc_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*CreateOrganizationRequest); i {
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
		file_proto_services_user_svc_v1_organization_svc_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*CreateOrganizationResponse); i {
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
		file_proto_services_user_svc_v1_organization_svc_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*CreateOrganizationForUserRequest); i {
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
		file_proto_services_user_svc_v1_organization_svc_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*CreateOrganizationForUserResponse); i {
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
		file_proto_services_user_svc_v1_organization_svc_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Member); i {
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
		file_proto_services_user_svc_v1_organization_svc_proto_msgTypes[5].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GetOrganizationRequest); i {
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
		file_proto_services_user_svc_v1_organization_svc_proto_msgTypes[6].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GetOrganizationResponse); i {
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
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_proto_services_user_svc_v1_organization_svc_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   7,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_proto_services_user_svc_v1_organization_svc_proto_goTypes,
		DependencyIndexes: file_proto_services_user_svc_v1_organization_svc_proto_depIdxs,
		MessageInfos:      file_proto_services_user_svc_v1_organization_svc_proto_msgTypes,
	}.Build()
	File_proto_services_user_svc_v1_organization_svc_proto = out.File
	file_proto_services_user_svc_v1_organization_svc_proto_rawDesc = nil
	file_proto_services_user_svc_v1_organization_svc_proto_goTypes = nil
	file_proto_services_user_svc_v1_organization_svc_proto_depIdxs = nil
}
