// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc        (unknown)
// source: proto/libs/events/v1/organization_events.proto

package events

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

// TOPIC: ORGANIZATION_CREATED
type OrganizationCreatedEvent struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// the id of the created organization
	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	// the id of the user that created the organization
	UserId string `protobuf:"bytes,2,opt,name=user_id,json=userId,proto3" json:"user_id,omitempty"`
}

func (x *OrganizationCreatedEvent) Reset() {
	*x = OrganizationCreatedEvent{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_libs_events_v1_organization_events_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *OrganizationCreatedEvent) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*OrganizationCreatedEvent) ProtoMessage() {}

func (x *OrganizationCreatedEvent) ProtoReflect() protoreflect.Message {
	mi := &file_proto_libs_events_v1_organization_events_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use OrganizationCreatedEvent.ProtoReflect.Descriptor instead.
func (*OrganizationCreatedEvent) Descriptor() ([]byte, []int) {
	return file_proto_libs_events_v1_organization_events_proto_rawDescGZIP(), []int{0}
}

func (x *OrganizationCreatedEvent) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *OrganizationCreatedEvent) GetUserId() string {
	if x != nil {
		return x.UserId
	}
	return ""
}

// TOPIC: ORGANIZATION_DELETED
type OrganizationDeletedEvent struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// the id of the deleted organization
	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
}

func (x *OrganizationDeletedEvent) Reset() {
	*x = OrganizationDeletedEvent{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_libs_events_v1_organization_events_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *OrganizationDeletedEvent) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*OrganizationDeletedEvent) ProtoMessage() {}

func (x *OrganizationDeletedEvent) ProtoReflect() protoreflect.Message {
	mi := &file_proto_libs_events_v1_organization_events_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use OrganizationDeletedEvent.ProtoReflect.Descriptor instead.
func (*OrganizationDeletedEvent) Descriptor() ([]byte, []int) {
	return file_proto_libs_events_v1_organization_events_proto_rawDescGZIP(), []int{1}
}

func (x *OrganizationDeletedEvent) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

var File_proto_libs_events_v1_organization_events_proto protoreflect.FileDescriptor

var file_proto_libs_events_v1_organization_events_proto_rawDesc = []byte{
	0x0a, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x6c, 0x69, 0x62, 0x73, 0x2f, 0x65, 0x76, 0x65,
	0x6e, 0x74, 0x73, 0x2f, 0x76, 0x31, 0x2f, 0x6f, 0x72, 0x67, 0x61, 0x6e, 0x69, 0x7a, 0x61, 0x74,
	0x69, 0x6f, 0x6e, 0x5f, 0x65, 0x76, 0x65, 0x6e, 0x74, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x12, 0x14, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x6c, 0x69, 0x62, 0x73, 0x2e, 0x65, 0x76, 0x65,
	0x6e, 0x74, 0x73, 0x2e, 0x76, 0x31, 0x22, 0x43, 0x0a, 0x18, 0x4f, 0x72, 0x67, 0x61, 0x6e, 0x69,
	0x7a, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x64, 0x45, 0x76, 0x65,
	0x6e, 0x74, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02,
	0x69, 0x64, 0x12, 0x17, 0x0a, 0x07, 0x75, 0x73, 0x65, 0x72, 0x5f, 0x69, 0x64, 0x18, 0x02, 0x20,
	0x01, 0x28, 0x09, 0x52, 0x06, 0x75, 0x73, 0x65, 0x72, 0x49, 0x64, 0x22, 0x2a, 0x0a, 0x18, 0x4f,
	0x72, 0x67, 0x61, 0x6e, 0x69, 0x7a, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x44, 0x65, 0x6c, 0x65, 0x74,
	0x65, 0x64, 0x45, 0x76, 0x65, 0x6e, 0x74, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20,
	0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x42, 0xbd, 0x01, 0x0a, 0x18, 0x63, 0x6f, 0x6d, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x6c, 0x69, 0x62, 0x73, 0x2e, 0x65, 0x76, 0x65, 0x6e, 0x74,
	0x73, 0x2e, 0x76, 0x31, 0x42, 0x17, 0x4f, 0x72, 0x67, 0x61, 0x6e, 0x69, 0x7a, 0x61, 0x74, 0x69,
	0x6f, 0x6e, 0x45, 0x76, 0x65, 0x6e, 0x74, 0x73, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x50, 0x01, 0x5a,
	0x15, 0x67, 0x65, 0x6e, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x6c, 0x69, 0x62, 0x73, 0x2f,
	0x65, 0x76, 0x65, 0x6e, 0x74, 0x73, 0xa2, 0x02, 0x03, 0x50, 0x4c, 0x45, 0xaa, 0x02, 0x14, 0x50,
	0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x4c, 0x69, 0x62, 0x73, 0x2e, 0x45, 0x76, 0x65, 0x6e, 0x74, 0x73,
	0x2e, 0x56, 0x31, 0xca, 0x02, 0x14, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x5c, 0x4c, 0x69, 0x62, 0x73,
	0x5c, 0x45, 0x76, 0x65, 0x6e, 0x74, 0x73, 0x5c, 0x56, 0x31, 0xe2, 0x02, 0x20, 0x50, 0x72, 0x6f,
	0x74, 0x6f, 0x5c, 0x4c, 0x69, 0x62, 0x73, 0x5c, 0x45, 0x76, 0x65, 0x6e, 0x74, 0x73, 0x5c, 0x56,
	0x31, 0x5c, 0x47, 0x50, 0x42, 0x4d, 0x65, 0x74, 0x61, 0x64, 0x61, 0x74, 0x61, 0xea, 0x02, 0x17,
	0x50, 0x72, 0x6f, 0x74, 0x6f, 0x3a, 0x3a, 0x4c, 0x69, 0x62, 0x73, 0x3a, 0x3a, 0x45, 0x76, 0x65,
	0x6e, 0x74, 0x73, 0x3a, 0x3a, 0x56, 0x31, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_proto_libs_events_v1_organization_events_proto_rawDescOnce sync.Once
	file_proto_libs_events_v1_organization_events_proto_rawDescData = file_proto_libs_events_v1_organization_events_proto_rawDesc
)

func file_proto_libs_events_v1_organization_events_proto_rawDescGZIP() []byte {
	file_proto_libs_events_v1_organization_events_proto_rawDescOnce.Do(func() {
		file_proto_libs_events_v1_organization_events_proto_rawDescData = protoimpl.X.CompressGZIP(file_proto_libs_events_v1_organization_events_proto_rawDescData)
	})
	return file_proto_libs_events_v1_organization_events_proto_rawDescData
}

var file_proto_libs_events_v1_organization_events_proto_msgTypes = make([]protoimpl.MessageInfo, 2)
var file_proto_libs_events_v1_organization_events_proto_goTypes = []interface{}{
	(*OrganizationCreatedEvent)(nil), // 0: proto.libs.events.v1.OrganizationCreatedEvent
	(*OrganizationDeletedEvent)(nil), // 1: proto.libs.events.v1.OrganizationDeletedEvent
}
var file_proto_libs_events_v1_organization_events_proto_depIdxs = []int32{
	0, // [0:0] is the sub-list for method output_type
	0, // [0:0] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_proto_libs_events_v1_organization_events_proto_init() }
func file_proto_libs_events_v1_organization_events_proto_init() {
	if File_proto_libs_events_v1_organization_events_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_proto_libs_events_v1_organization_events_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*OrganizationCreatedEvent); i {
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
		file_proto_libs_events_v1_organization_events_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*OrganizationDeletedEvent); i {
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
			RawDescriptor: file_proto_libs_events_v1_organization_events_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   2,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_proto_libs_events_v1_organization_events_proto_goTypes,
		DependencyIndexes: file_proto_libs_events_v1_organization_events_proto_depIdxs,
		MessageInfos:      file_proto_libs_events_v1_organization_events_proto_msgTypes,
	}.Build()
	File_proto_libs_events_v1_organization_events_proto = out.File
	file_proto_libs_events_v1_organization_events_proto_rawDesc = nil
	file_proto_libs_events_v1_organization_events_proto_goTypes = nil
	file_proto_libs_events_v1_organization_events_proto_depIdxs = nil
}
