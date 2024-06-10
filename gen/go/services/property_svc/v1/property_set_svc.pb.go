// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.34.1
// 	protoc        (unknown)
// source: services/property_svc/v1/property_set_svc.proto

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

// CreatePropertySet
type CreatePropertySetRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Name string `protobuf:"bytes,1,opt,name=name,proto3" json:"name,omitempty"`
}

func (x *CreatePropertySetRequest) Reset() {
	*x = CreatePropertySetRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_services_property_svc_v1_property_set_svc_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreatePropertySetRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreatePropertySetRequest) ProtoMessage() {}

func (x *CreatePropertySetRequest) ProtoReflect() protoreflect.Message {
	mi := &file_services_property_svc_v1_property_set_svc_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreatePropertySetRequest.ProtoReflect.Descriptor instead.
func (*CreatePropertySetRequest) Descriptor() ([]byte, []int) {
	return file_services_property_svc_v1_property_set_svc_proto_rawDescGZIP(), []int{0}
}

func (x *CreatePropertySetRequest) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

type CreatePropertySetResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
}

func (x *CreatePropertySetResponse) Reset() {
	*x = CreatePropertySetResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_services_property_svc_v1_property_set_svc_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreatePropertySetResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreatePropertySetResponse) ProtoMessage() {}

func (x *CreatePropertySetResponse) ProtoReflect() protoreflect.Message {
	mi := &file_services_property_svc_v1_property_set_svc_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreatePropertySetResponse.ProtoReflect.Descriptor instead.
func (*CreatePropertySetResponse) Descriptor() ([]byte, []int) {
	return file_services_property_svc_v1_property_set_svc_proto_rawDescGZIP(), []int{1}
}

func (x *CreatePropertySetResponse) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

type GetPropertySetRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
}

func (x *GetPropertySetRequest) Reset() {
	*x = GetPropertySetRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_services_property_svc_v1_property_set_svc_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetPropertySetRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetPropertySetRequest) ProtoMessage() {}

func (x *GetPropertySetRequest) ProtoReflect() protoreflect.Message {
	mi := &file_services_property_svc_v1_property_set_svc_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetPropertySetRequest.ProtoReflect.Descriptor instead.
func (*GetPropertySetRequest) Descriptor() ([]byte, []int) {
	return file_services_property_svc_v1_property_set_svc_proto_rawDescGZIP(), []int{2}
}

func (x *GetPropertySetRequest) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

type GetPropertySetResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id   string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	Name string `protobuf:"bytes,2,opt,name=name,proto3" json:"name,omitempty"`
}

func (x *GetPropertySetResponse) Reset() {
	*x = GetPropertySetResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_services_property_svc_v1_property_set_svc_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetPropertySetResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetPropertySetResponse) ProtoMessage() {}

func (x *GetPropertySetResponse) ProtoReflect() protoreflect.Message {
	mi := &file_services_property_svc_v1_property_set_svc_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetPropertySetResponse.ProtoReflect.Descriptor instead.
func (*GetPropertySetResponse) Descriptor() ([]byte, []int) {
	return file_services_property_svc_v1_property_set_svc_proto_rawDescGZIP(), []int{3}
}

func (x *GetPropertySetResponse) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *GetPropertySetResponse) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

var File_services_property_svc_v1_property_set_svc_proto protoreflect.FileDescriptor

var file_services_property_svc_v1_property_set_svc_proto_rawDesc = []byte{
	0x0a, 0x2f, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2f, 0x70, 0x72, 0x6f, 0x70, 0x65,
	0x72, 0x74, 0x79, 0x5f, 0x73, 0x76, 0x63, 0x2f, 0x76, 0x31, 0x2f, 0x70, 0x72, 0x6f, 0x70, 0x65,
	0x72, 0x74, 0x79, 0x5f, 0x73, 0x65, 0x74, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x70, 0x72, 0x6f, 0x74,
	0x6f, 0x12, 0x18, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x70,
	0x65, 0x72, 0x74, 0x79, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x22, 0x2e, 0x0a, 0x18, 0x43,
	0x72, 0x65, 0x61, 0x74, 0x65, 0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x53, 0x65, 0x74,
	0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x12, 0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18,
	0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x22, 0x2b, 0x0a, 0x19, 0x43,
	0x72, 0x65, 0x61, 0x74, 0x65, 0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x53, 0x65, 0x74,
	0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x22, 0x27, 0x0a, 0x15, 0x47, 0x65, 0x74, 0x50,
	0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x53, 0x65, 0x74, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73,
	0x74, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69,
	0x64, 0x22, 0x3c, 0x0a, 0x16, 0x47, 0x65, 0x74, 0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79,
	0x53, 0x65, 0x74, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x0e, 0x0a, 0x02, 0x69,
	0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x12, 0x12, 0x0a, 0x04, 0x6e,
	0x61, 0x6d, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x32,
	0x8b, 0x02, 0x0a, 0x12, 0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x53, 0x65, 0x74, 0x53,
	0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x12, 0x7e, 0x0a, 0x11, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65,
	0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x53, 0x65, 0x74, 0x12, 0x32, 0x2e, 0x73, 0x65,
	0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x5f,
	0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x50, 0x72, 0x6f,
	0x70, 0x65, 0x72, 0x74, 0x79, 0x53, 0x65, 0x74, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a,
	0x33, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x70, 0x65,
	0x72, 0x74, 0x79, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x2e, 0x43, 0x72, 0x65, 0x61, 0x74,
	0x65, 0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x53, 0x65, 0x74, 0x52, 0x65, 0x73, 0x70,
	0x6f, 0x6e, 0x73, 0x65, 0x22, 0x00, 0x12, 0x75, 0x0a, 0x0e, 0x47, 0x65, 0x74, 0x50, 0x72, 0x6f,
	0x70, 0x65, 0x72, 0x74, 0x79, 0x53, 0x65, 0x74, 0x12, 0x2f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69,
	0x63, 0x65, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x5f, 0x73, 0x76, 0x63,
	0x2e, 0x76, 0x31, 0x2e, 0x47, 0x65, 0x74, 0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x53,
	0x65, 0x74, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x30, 0x2e, 0x73, 0x65, 0x72, 0x76,
	0x69, 0x63, 0x65, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x5f, 0x73, 0x76,
	0x63, 0x2e, 0x76, 0x31, 0x2e, 0x47, 0x65, 0x74, 0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79,
	0x53, 0x65, 0x74, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x00, 0x42, 0xd2, 0x01,
	0x0a, 0x1c, 0x63, 0x6f, 0x6d, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x70,
	0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x42, 0x13,
	0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x53, 0x65, 0x74, 0x53, 0x76, 0x63, 0x50, 0x72,
	0x6f, 0x74, 0x6f, 0x50, 0x01, 0x5a, 0x1f, 0x67, 0x65, 0x6e, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x2f, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2f, 0x70, 0x72, 0x6f, 0x70, 0x65, 0x72,
	0x74, 0x79, 0x2d, 0x73, 0x76, 0x63, 0xa2, 0x02, 0x03, 0x53, 0x50, 0x58, 0xaa, 0x02, 0x17, 0x53,
	0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79,
	0x53, 0x76, 0x63, 0x2e, 0x56, 0x31, 0xca, 0x02, 0x17, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65,
	0x73, 0x5c, 0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x53, 0x76, 0x63, 0x5c, 0x56, 0x31,
	0xe2, 0x02, 0x23, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x5c, 0x50, 0x72, 0x6f, 0x70,
	0x65, 0x72, 0x74, 0x79, 0x53, 0x76, 0x63, 0x5c, 0x56, 0x31, 0x5c, 0x47, 0x50, 0x42, 0x4d, 0x65,
	0x74, 0x61, 0x64, 0x61, 0x74, 0x61, 0xea, 0x02, 0x19, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65,
	0x73, 0x3a, 0x3a, 0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x53, 0x76, 0x63, 0x3a, 0x3a,
	0x56, 0x31, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_services_property_svc_v1_property_set_svc_proto_rawDescOnce sync.Once
	file_services_property_svc_v1_property_set_svc_proto_rawDescData = file_services_property_svc_v1_property_set_svc_proto_rawDesc
)

func file_services_property_svc_v1_property_set_svc_proto_rawDescGZIP() []byte {
	file_services_property_svc_v1_property_set_svc_proto_rawDescOnce.Do(func() {
		file_services_property_svc_v1_property_set_svc_proto_rawDescData = protoimpl.X.CompressGZIP(file_services_property_svc_v1_property_set_svc_proto_rawDescData)
	})
	return file_services_property_svc_v1_property_set_svc_proto_rawDescData
}

var file_services_property_svc_v1_property_set_svc_proto_msgTypes = make([]protoimpl.MessageInfo, 4)
var file_services_property_svc_v1_property_set_svc_proto_goTypes = []interface{}{
	(*CreatePropertySetRequest)(nil),  // 0: services.property_svc.v1.CreatePropertySetRequest
	(*CreatePropertySetResponse)(nil), // 1: services.property_svc.v1.CreatePropertySetResponse
	(*GetPropertySetRequest)(nil),     // 2: services.property_svc.v1.GetPropertySetRequest
	(*GetPropertySetResponse)(nil),    // 3: services.property_svc.v1.GetPropertySetResponse
}
var file_services_property_svc_v1_property_set_svc_proto_depIdxs = []int32{
	0, // 0: services.property_svc.v1.PropertySetService.CreatePropertySet:input_type -> services.property_svc.v1.CreatePropertySetRequest
	2, // 1: services.property_svc.v1.PropertySetService.GetPropertySet:input_type -> services.property_svc.v1.GetPropertySetRequest
	1, // 2: services.property_svc.v1.PropertySetService.CreatePropertySet:output_type -> services.property_svc.v1.CreatePropertySetResponse
	3, // 3: services.property_svc.v1.PropertySetService.GetPropertySet:output_type -> services.property_svc.v1.GetPropertySetResponse
	2, // [2:4] is the sub-list for method output_type
	0, // [0:2] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_services_property_svc_v1_property_set_svc_proto_init() }
func file_services_property_svc_v1_property_set_svc_proto_init() {
	if File_services_property_svc_v1_property_set_svc_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_services_property_svc_v1_property_set_svc_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*CreatePropertySetRequest); i {
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
		file_services_property_svc_v1_property_set_svc_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*CreatePropertySetResponse); i {
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
		file_services_property_svc_v1_property_set_svc_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GetPropertySetRequest); i {
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
		file_services_property_svc_v1_property_set_svc_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GetPropertySetResponse); i {
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
			RawDescriptor: file_services_property_svc_v1_property_set_svc_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   4,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_services_property_svc_v1_property_set_svc_proto_goTypes,
		DependencyIndexes: file_services_property_svc_v1_property_set_svc_proto_depIdxs,
		MessageInfos:      file_services_property_svc_v1_property_set_svc_proto_msgTypes,
	}.Build()
	File_services_property_svc_v1_property_set_svc_proto = out.File
	file_services_property_svc_v1_property_set_svc_proto_rawDesc = nil
	file_services_property_svc_v1_property_set_svc_proto_goTypes = nil
	file_services_property_svc_v1_property_set_svc_proto_depIdxs = nil
}
