// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.28.1
// 	protoc        v3.12.2
// source: user-svc.proto

package api

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

type CreateUserRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Email    string `protobuf:"bytes,1,opt,name=email,proto3" json:"email,omitempty" validate:"required,email"`       // @gotags: validate:"required,email"
	Nickname string `protobuf:"bytes,2,opt,name=nickname,proto3" json:"nickname,omitempty" validate:"required"` // @gotags: validate:"required"
	FullName string `protobuf:"bytes,3,opt,name=fullName,proto3" json:"fullName,omitempty" validate:"required"` // @gotags: validate:"required"
	Password string `protobuf:"bytes,4,opt,name=password,proto3" json:"password,omitempty" validate:"required"` // @gotags: validate:"required"
}

func (x *CreateUserRequest) Reset() {
	*x = CreateUserRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_user_svc_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreateUserRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateUserRequest) ProtoMessage() {}

func (x *CreateUserRequest) ProtoReflect() protoreflect.Message {
	mi := &file_user_svc_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateUserRequest.ProtoReflect.Descriptor instead.
func (*CreateUserRequest) Descriptor() ([]byte, []int) {
	return file_user_svc_proto_rawDescGZIP(), []int{0}
}

func (x *CreateUserRequest) GetEmail() string {
	if x != nil {
		return x.Email
	}
	return ""
}

func (x *CreateUserRequest) GetNickname() string {
	if x != nil {
		return x.Nickname
	}
	return ""
}

func (x *CreateUserRequest) GetFullName() string {
	if x != nil {
		return x.FullName
	}
	return ""
}

func (x *CreateUserRequest) GetPassword() string {
	if x != nil {
		return x.Password
	}
	return ""
}

type CreateUserResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	UserID string `protobuf:"bytes,1,opt,name=userID,proto3" json:"userID,omitempty"`
}

func (x *CreateUserResponse) Reset() {
	*x = CreateUserResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_user_svc_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreateUserResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateUserResponse) ProtoMessage() {}

func (x *CreateUserResponse) ProtoReflect() protoreflect.Message {
	mi := &file_user_svc_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateUserResponse.ProtoReflect.Descriptor instead.
func (*CreateUserResponse) Descriptor() ([]byte, []int) {
	return file_user_svc_proto_rawDescGZIP(), []int{1}
}

func (x *CreateUserResponse) GetUserID() string {
	if x != nil {
		return x.UserID
	}
	return ""
}

type CreateOrgRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	LongName     string `protobuf:"bytes,1,opt,name=longName,proto3" json:"longName,omitempty" validate:"required,gte=4,lte=64"`         // @gotags: validate:"required,gte=4,lte=64"
	ShortName    string `protobuf:"bytes,2,opt,name=shortName,proto3" json:"shortName,omitempty" validate:"omitempty,gte=2,lte=16"`       // @gotags: validate:"omitempty,gte=2,lte=16"
	ContactEmail string `protobuf:"bytes,3,opt,name=contactEmail,proto3" json:"contactEmail,omitempty" validate:"required,email"` // @gotags: validate:"required,email"
}

func (x *CreateOrgRequest) Reset() {
	*x = CreateOrgRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_user_svc_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreateOrgRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateOrgRequest) ProtoMessage() {}

func (x *CreateOrgRequest) ProtoReflect() protoreflect.Message {
	mi := &file_user_svc_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateOrgRequest.ProtoReflect.Descriptor instead.
func (*CreateOrgRequest) Descriptor() ([]byte, []int) {
	return file_user_svc_proto_rawDescGZIP(), []int{2}
}

func (x *CreateOrgRequest) GetLongName() string {
	if x != nil {
		return x.LongName
	}
	return ""
}

func (x *CreateOrgRequest) GetShortName() string {
	if x != nil {
		return x.ShortName
	}
	return ""
}

func (x *CreateOrgRequest) GetContactEmail() string {
	if x != nil {
		return x.ContactEmail
	}
	return ""
}

type CreateOrgResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id           string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	LongName     string `protobuf:"bytes,2,opt,name=longName,proto3" json:"longName,omitempty"`
	ShortName    string `protobuf:"bytes,3,opt,name=shortName,proto3" json:"shortName,omitempty"`
	ContactEmail string `protobuf:"bytes,4,opt,name=contactEmail,proto3" json:"contactEmail,omitempty"`
	AvatarUrl    string `protobuf:"bytes,5,opt,name=avatarUrl,proto3" json:"avatarUrl,omitempty"`
	IsPersonal   bool   `protobuf:"varint,6,opt,name=isPersonal,proto3" json:"isPersonal,omitempty"`
}

func (x *CreateOrgResponse) Reset() {
	*x = CreateOrgResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_user_svc_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreateOrgResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateOrgResponse) ProtoMessage() {}

func (x *CreateOrgResponse) ProtoReflect() protoreflect.Message {
	mi := &file_user_svc_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateOrgResponse.ProtoReflect.Descriptor instead.
func (*CreateOrgResponse) Descriptor() ([]byte, []int) {
	return file_user_svc_proto_rawDescGZIP(), []int{3}
}

func (x *CreateOrgResponse) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *CreateOrgResponse) GetLongName() string {
	if x != nil {
		return x.LongName
	}
	return ""
}

func (x *CreateOrgResponse) GetShortName() string {
	if x != nil {
		return x.ShortName
	}
	return ""
}

func (x *CreateOrgResponse) GetContactEmail() string {
	if x != nil {
		return x.ContactEmail
	}
	return ""
}

func (x *CreateOrgResponse) GetAvatarUrl() string {
	if x != nil {
		return x.AvatarUrl
	}
	return ""
}

func (x *CreateOrgResponse) GetIsPersonal() bool {
	if x != nil {
		return x.IsPersonal
	}
	return false
}

var File_user_svc_proto protoreflect.FileDescriptor

var file_user_svc_proto_rawDesc = []byte{
	0x0a, 0x0e, 0x75, 0x73, 0x65, 0x72, 0x2d, 0x73, 0x76, 0x63, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x22, 0x7d, 0x0a, 0x11, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x55, 0x73, 0x65, 0x72, 0x52, 0x65,
	0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x14, 0x0a, 0x05, 0x65, 0x6d, 0x61, 0x69, 0x6c, 0x18, 0x01,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x05, 0x65, 0x6d, 0x61, 0x69, 0x6c, 0x12, 0x1a, 0x0a, 0x08, 0x6e,
	0x69, 0x63, 0x6b, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x08, 0x6e,
	0x69, 0x63, 0x6b, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x1a, 0x0a, 0x08, 0x66, 0x75, 0x6c, 0x6c, 0x4e,
	0x61, 0x6d, 0x65, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x52, 0x08, 0x66, 0x75, 0x6c, 0x6c, 0x4e,
	0x61, 0x6d, 0x65, 0x12, 0x1a, 0x0a, 0x08, 0x70, 0x61, 0x73, 0x73, 0x77, 0x6f, 0x72, 0x64, 0x18,
	0x04, 0x20, 0x01, 0x28, 0x09, 0x52, 0x08, 0x70, 0x61, 0x73, 0x73, 0x77, 0x6f, 0x72, 0x64, 0x22,
	0x2c, 0x0a, 0x12, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x55, 0x73, 0x65, 0x72, 0x52, 0x65, 0x73,
	0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x16, 0x0a, 0x06, 0x75, 0x73, 0x65, 0x72, 0x49, 0x44, 0x18,
	0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x06, 0x75, 0x73, 0x65, 0x72, 0x49, 0x44, 0x22, 0x70, 0x0a,
	0x10, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x4f, 0x72, 0x67, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73,
	0x74, 0x12, 0x1a, 0x0a, 0x08, 0x6c, 0x6f, 0x6e, 0x67, 0x4e, 0x61, 0x6d, 0x65, 0x18, 0x01, 0x20,
	0x01, 0x28, 0x09, 0x52, 0x08, 0x6c, 0x6f, 0x6e, 0x67, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x1c, 0x0a,
	0x09, 0x73, 0x68, 0x6f, 0x72, 0x74, 0x4e, 0x61, 0x6d, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x09, 0x73, 0x68, 0x6f, 0x72, 0x74, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x22, 0x0a, 0x0c, 0x63,
	0x6f, 0x6e, 0x74, 0x61, 0x63, 0x74, 0x45, 0x6d, 0x61, 0x69, 0x6c, 0x18, 0x03, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x0c, 0x63, 0x6f, 0x6e, 0x74, 0x61, 0x63, 0x74, 0x45, 0x6d, 0x61, 0x69, 0x6c, 0x22,
	0xbf, 0x01, 0x0a, 0x11, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x4f, 0x72, 0x67, 0x52, 0x65, 0x73,
	0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x02, 0x69, 0x64, 0x12, 0x1a, 0x0a, 0x08, 0x6c, 0x6f, 0x6e, 0x67, 0x4e, 0x61, 0x6d,
	0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x08, 0x6c, 0x6f, 0x6e, 0x67, 0x4e, 0x61, 0x6d,
	0x65, 0x12, 0x1c, 0x0a, 0x09, 0x73, 0x68, 0x6f, 0x72, 0x74, 0x4e, 0x61, 0x6d, 0x65, 0x18, 0x03,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x09, 0x73, 0x68, 0x6f, 0x72, 0x74, 0x4e, 0x61, 0x6d, 0x65, 0x12,
	0x22, 0x0a, 0x0c, 0x63, 0x6f, 0x6e, 0x74, 0x61, 0x63, 0x74, 0x45, 0x6d, 0x61, 0x69, 0x6c, 0x18,
	0x04, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0c, 0x63, 0x6f, 0x6e, 0x74, 0x61, 0x63, 0x74, 0x45, 0x6d,
	0x61, 0x69, 0x6c, 0x12, 0x1c, 0x0a, 0x09, 0x61, 0x76, 0x61, 0x74, 0x61, 0x72, 0x55, 0x72, 0x6c,
	0x18, 0x05, 0x20, 0x01, 0x28, 0x09, 0x52, 0x09, 0x61, 0x76, 0x61, 0x74, 0x61, 0x72, 0x55, 0x72,
	0x6c, 0x12, 0x1e, 0x0a, 0x0a, 0x69, 0x73, 0x50, 0x65, 0x72, 0x73, 0x6f, 0x6e, 0x61, 0x6c, 0x18,
	0x06, 0x20, 0x01, 0x28, 0x08, 0x52, 0x0a, 0x69, 0x73, 0x50, 0x65, 0x72, 0x73, 0x6f, 0x6e, 0x61,
	0x6c, 0x32, 0x85, 0x01, 0x0a, 0x0b, 0x55, 0x73, 0x65, 0x72, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63,
	0x65, 0x12, 0x37, 0x0a, 0x0a, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x55, 0x73, 0x65, 0x72, 0x12,
	0x12, 0x2e, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x55, 0x73, 0x65, 0x72, 0x52, 0x65, 0x71, 0x75,
	0x65, 0x73, 0x74, 0x1a, 0x13, 0x2e, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x55, 0x73, 0x65, 0x72,
	0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x00, 0x12, 0x3d, 0x0a, 0x12, 0x43, 0x72,
	0x65, 0x61, 0x74, 0x65, 0x4f, 0x72, 0x67, 0x61, 0x6e, 0x69, 0x7a, 0x61, 0x74, 0x69, 0x6f, 0x6e,
	0x12, 0x11, 0x2e, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x4f, 0x72, 0x67, 0x52, 0x65, 0x71, 0x75,
	0x65, 0x73, 0x74, 0x1a, 0x12, 0x2e, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x4f, 0x72, 0x67, 0x52,
	0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x00, 0x42, 0x0e, 0x5a, 0x0c, 0x75, 0x73, 0x65,
	0x72, 0x2d, 0x73, 0x76, 0x63, 0x2f, 0x61, 0x70, 0x69, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x33,
}

var (
	file_user_svc_proto_rawDescOnce sync.Once
	file_user_svc_proto_rawDescData = file_user_svc_proto_rawDesc
)

func file_user_svc_proto_rawDescGZIP() []byte {
	file_user_svc_proto_rawDescOnce.Do(func() {
		file_user_svc_proto_rawDescData = protoimpl.X.CompressGZIP(file_user_svc_proto_rawDescData)
	})
	return file_user_svc_proto_rawDescData
}

var file_user_svc_proto_msgTypes = make([]protoimpl.MessageInfo, 4)
var file_user_svc_proto_goTypes = []interface{}{
	(*CreateUserRequest)(nil),  // 0: CreateUserRequest
	(*CreateUserResponse)(nil), // 1: CreateUserResponse
	(*CreateOrgRequest)(nil),   // 2: CreateOrgRequest
	(*CreateOrgResponse)(nil),  // 3: CreateOrgResponse
}
var file_user_svc_proto_depIdxs = []int32{
	0, // 0: UserService.CreateUser:input_type -> CreateUserRequest
	2, // 1: UserService.CreateOrganization:input_type -> CreateOrgRequest
	1, // 2: UserService.CreateUser:output_type -> CreateUserResponse
	3, // 3: UserService.CreateOrganization:output_type -> CreateOrgResponse
	2, // [2:4] is the sub-list for method output_type
	0, // [0:2] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_user_svc_proto_init() }
func file_user_svc_proto_init() {
	if File_user_svc_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_user_svc_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*CreateUserRequest); i {
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
		file_user_svc_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*CreateUserResponse); i {
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
		file_user_svc_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*CreateOrgRequest); i {
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
		file_user_svc_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*CreateOrgResponse); i {
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
			RawDescriptor: file_user_svc_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   4,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_user_svc_proto_goTypes,
		DependencyIndexes: file_user_svc_proto_depIdxs,
		MessageInfos:      file_user_svc_proto_msgTypes,
	}.Build()
	File_user_svc_proto = out.File
	file_user_svc_proto_rawDesc = nil
	file_user_svc_proto_goTypes = nil
	file_user_svc_proto_depIdxs = nil
}
