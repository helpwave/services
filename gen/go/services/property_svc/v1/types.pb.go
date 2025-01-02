// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.34.1
// 	protoc        (unknown)
// source: services/property_svc/v1/types.proto

package v1

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	timestamppb "google.golang.org/protobuf/types/known/timestamppb"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type SubjectType int32

const (
	SubjectType_SUBJECT_TYPE_UNSPECIFIED SubjectType = 0
	SubjectType_SUBJECT_TYPE_PATIENT     SubjectType = 1
	SubjectType_SUBJECT_TYPE_TASK        SubjectType = 2
)

// Enum value maps for SubjectType.
var (
	SubjectType_name = map[int32]string{
		0: "SUBJECT_TYPE_UNSPECIFIED",
		1: "SUBJECT_TYPE_PATIENT",
		2: "SUBJECT_TYPE_TASK",
	}
	SubjectType_value = map[string]int32{
		"SUBJECT_TYPE_UNSPECIFIED": 0,
		"SUBJECT_TYPE_PATIENT":     1,
		"SUBJECT_TYPE_TASK":        2,
	}
)

func (x SubjectType) Enum() *SubjectType {
	p := new(SubjectType)
	*p = x
	return p
}

func (x SubjectType) String() string {
	return protoimpl.X.EnumStringOf(x.Descriptor(), protoreflect.EnumNumber(x))
}

func (SubjectType) Descriptor() protoreflect.EnumDescriptor {
	return file_services_property_svc_v1_types_proto_enumTypes[0].Descriptor()
}

func (SubjectType) Type() protoreflect.EnumType {
	return &file_services_property_svc_v1_types_proto_enumTypes[0]
}

func (x SubjectType) Number() protoreflect.EnumNumber {
	return protoreflect.EnumNumber(x)
}

// Deprecated: Use SubjectType.Descriptor instead.
func (SubjectType) EnumDescriptor() ([]byte, []int) {
	return file_services_property_svc_v1_types_proto_rawDescGZIP(), []int{0}
}

type FieldType int32

const (
	FieldType_FIELD_TYPE_UNSPECIFIED  FieldType = 0
	FieldType_FIELD_TYPE_TEXT         FieldType = 1
	FieldType_FIELD_TYPE_NUMBER       FieldType = 2
	FieldType_FIELD_TYPE_CHECKBOX     FieldType = 3
	FieldType_FIELD_TYPE_DATE         FieldType = 4
	FieldType_FIELD_TYPE_DATE_TIME    FieldType = 5
	FieldType_FIELD_TYPE_SELECT       FieldType = 6
	FieldType_FIELD_TYPE_MULTI_SELECT FieldType = 7
)

// Enum value maps for FieldType.
var (
	FieldType_name = map[int32]string{
		0: "FIELD_TYPE_UNSPECIFIED",
		1: "FIELD_TYPE_TEXT",
		2: "FIELD_TYPE_NUMBER",
		3: "FIELD_TYPE_CHECKBOX",
		4: "FIELD_TYPE_DATE",
		5: "FIELD_TYPE_DATE_TIME",
		6: "FIELD_TYPE_SELECT",
		7: "FIELD_TYPE_MULTI_SELECT",
	}
	FieldType_value = map[string]int32{
		"FIELD_TYPE_UNSPECIFIED":  0,
		"FIELD_TYPE_TEXT":         1,
		"FIELD_TYPE_NUMBER":       2,
		"FIELD_TYPE_CHECKBOX":     3,
		"FIELD_TYPE_DATE":         4,
		"FIELD_TYPE_DATE_TIME":    5,
		"FIELD_TYPE_SELECT":       6,
		"FIELD_TYPE_MULTI_SELECT": 7,
	}
)

func (x FieldType) Enum() *FieldType {
	p := new(FieldType)
	*p = x
	return p
}

func (x FieldType) String() string {
	return protoimpl.X.EnumStringOf(x.Descriptor(), protoreflect.EnumNumber(x))
}

func (FieldType) Descriptor() protoreflect.EnumDescriptor {
	return file_services_property_svc_v1_types_proto_enumTypes[1].Descriptor()
}

func (FieldType) Type() protoreflect.EnumType {
	return &file_services_property_svc_v1_types_proto_enumTypes[1]
}

func (x FieldType) Number() protoreflect.EnumNumber {
	return protoreflect.EnumNumber(x)
}

// Deprecated: Use FieldType.Descriptor instead.
func (FieldType) EnumDescriptor() ([]byte, []int) {
	return file_services_property_svc_v1_types_proto_rawDescGZIP(), []int{1}
}

type Date struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// information more precise than date information shall be disregarded by clients
	Date *timestamppb.Timestamp `protobuf:"bytes,1,opt,name=date,proto3" json:"date,omitempty" validate:"required"` // @gotags: validate:"required"
}

func (x *Date) Reset() {
	*x = Date{}
	if protoimpl.UnsafeEnabled {
		mi := &file_services_property_svc_v1_types_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Date) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Date) ProtoMessage() {}

func (x *Date) ProtoReflect() protoreflect.Message {
	mi := &file_services_property_svc_v1_types_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Date.ProtoReflect.Descriptor instead.
func (*Date) Descriptor() ([]byte, []int) {
	return file_services_property_svc_v1_types_proto_rawDescGZIP(), []int{0}
}

func (x *Date) GetDate() *timestamppb.Timestamp {
	if x != nil {
		return x.Date
	}
	return nil
}

var File_services_property_svc_v1_types_proto protoreflect.FileDescriptor

var file_services_property_svc_v1_types_proto_rawDesc = []byte{
	0x0a, 0x24, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2f, 0x70, 0x72, 0x6f, 0x70, 0x65,
	0x72, 0x74, 0x79, 0x5f, 0x73, 0x76, 0x63, 0x2f, 0x76, 0x31, 0x2f, 0x74, 0x79, 0x70, 0x65, 0x73,
	0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x18, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73,
	0x2e, 0x70, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31,
	0x1a, 0x1f, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75,
	0x66, 0x2f, 0x74, 0x69, 0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d, 0x70, 0x2e, 0x70, 0x72, 0x6f, 0x74,
	0x6f, 0x22, 0x36, 0x0a, 0x04, 0x44, 0x61, 0x74, 0x65, 0x12, 0x2e, 0x0a, 0x04, 0x64, 0x61, 0x74,
	0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1a, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65,
	0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x54, 0x69, 0x6d, 0x65, 0x73, 0x74,
	0x61, 0x6d, 0x70, 0x52, 0x04, 0x64, 0x61, 0x74, 0x65, 0x2a, 0x5c, 0x0a, 0x0b, 0x53, 0x75, 0x62,
	0x6a, 0x65, 0x63, 0x74, 0x54, 0x79, 0x70, 0x65, 0x12, 0x1c, 0x0a, 0x18, 0x53, 0x55, 0x42, 0x4a,
	0x45, 0x43, 0x54, 0x5f, 0x54, 0x59, 0x50, 0x45, 0x5f, 0x55, 0x4e, 0x53, 0x50, 0x45, 0x43, 0x49,
	0x46, 0x49, 0x45, 0x44, 0x10, 0x00, 0x12, 0x18, 0x0a, 0x14, 0x53, 0x55, 0x42, 0x4a, 0x45, 0x43,
	0x54, 0x5f, 0x54, 0x59, 0x50, 0x45, 0x5f, 0x50, 0x41, 0x54, 0x49, 0x45, 0x4e, 0x54, 0x10, 0x01,
	0x12, 0x15, 0x0a, 0x11, 0x53, 0x55, 0x42, 0x4a, 0x45, 0x43, 0x54, 0x5f, 0x54, 0x59, 0x50, 0x45,
	0x5f, 0x54, 0x41, 0x53, 0x4b, 0x10, 0x02, 0x2a, 0xcf, 0x01, 0x0a, 0x09, 0x46, 0x69, 0x65, 0x6c,
	0x64, 0x54, 0x79, 0x70, 0x65, 0x12, 0x1a, 0x0a, 0x16, 0x46, 0x49, 0x45, 0x4c, 0x44, 0x5f, 0x54,
	0x59, 0x50, 0x45, 0x5f, 0x55, 0x4e, 0x53, 0x50, 0x45, 0x43, 0x49, 0x46, 0x49, 0x45, 0x44, 0x10,
	0x00, 0x12, 0x13, 0x0a, 0x0f, 0x46, 0x49, 0x45, 0x4c, 0x44, 0x5f, 0x54, 0x59, 0x50, 0x45, 0x5f,
	0x54, 0x45, 0x58, 0x54, 0x10, 0x01, 0x12, 0x15, 0x0a, 0x11, 0x46, 0x49, 0x45, 0x4c, 0x44, 0x5f,
	0x54, 0x59, 0x50, 0x45, 0x5f, 0x4e, 0x55, 0x4d, 0x42, 0x45, 0x52, 0x10, 0x02, 0x12, 0x17, 0x0a,
	0x13, 0x46, 0x49, 0x45, 0x4c, 0x44, 0x5f, 0x54, 0x59, 0x50, 0x45, 0x5f, 0x43, 0x48, 0x45, 0x43,
	0x4b, 0x42, 0x4f, 0x58, 0x10, 0x03, 0x12, 0x13, 0x0a, 0x0f, 0x46, 0x49, 0x45, 0x4c, 0x44, 0x5f,
	0x54, 0x59, 0x50, 0x45, 0x5f, 0x44, 0x41, 0x54, 0x45, 0x10, 0x04, 0x12, 0x18, 0x0a, 0x14, 0x46,
	0x49, 0x45, 0x4c, 0x44, 0x5f, 0x54, 0x59, 0x50, 0x45, 0x5f, 0x44, 0x41, 0x54, 0x45, 0x5f, 0x54,
	0x49, 0x4d, 0x45, 0x10, 0x05, 0x12, 0x15, 0x0a, 0x11, 0x46, 0x49, 0x45, 0x4c, 0x44, 0x5f, 0x54,
	0x59, 0x50, 0x45, 0x5f, 0x53, 0x45, 0x4c, 0x45, 0x43, 0x54, 0x10, 0x06, 0x12, 0x1b, 0x0a, 0x17,
	0x46, 0x49, 0x45, 0x4c, 0x44, 0x5f, 0x54, 0x59, 0x50, 0x45, 0x5f, 0x4d, 0x55, 0x4c, 0x54, 0x49,
	0x5f, 0x53, 0x45, 0x4c, 0x45, 0x43, 0x54, 0x10, 0x07, 0x42, 0xc6, 0x01, 0x0a, 0x1c, 0x63, 0x6f,
	0x6d, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x70, 0x65,
	0x72, 0x74, 0x79, 0x5f, 0x73, 0x76, 0x63, 0x2e, 0x76, 0x31, 0x42, 0x0a, 0x54, 0x79, 0x70, 0x65,
	0x73, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x50, 0x01, 0x5a, 0x1c, 0x67, 0x65, 0x6e, 0x2f, 0x73, 0x65,
	0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2f, 0x70, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x2d,
	0x73, 0x76, 0x63, 0x2f, 0x76, 0x31, 0xa2, 0x02, 0x03, 0x53, 0x50, 0x58, 0xaa, 0x02, 0x17, 0x53,
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
	file_services_property_svc_v1_types_proto_rawDescOnce sync.Once
	file_services_property_svc_v1_types_proto_rawDescData = file_services_property_svc_v1_types_proto_rawDesc
)

func file_services_property_svc_v1_types_proto_rawDescGZIP() []byte {
	file_services_property_svc_v1_types_proto_rawDescOnce.Do(func() {
		file_services_property_svc_v1_types_proto_rawDescData = protoimpl.X.CompressGZIP(file_services_property_svc_v1_types_proto_rawDescData)
	})
	return file_services_property_svc_v1_types_proto_rawDescData
}

var file_services_property_svc_v1_types_proto_enumTypes = make([]protoimpl.EnumInfo, 2)
var file_services_property_svc_v1_types_proto_msgTypes = make([]protoimpl.MessageInfo, 1)
var file_services_property_svc_v1_types_proto_goTypes = []interface{}{
	(SubjectType)(0),              // 0: services.property_svc.v1.SubjectType
	(FieldType)(0),                // 1: services.property_svc.v1.FieldType
	(*Date)(nil),                  // 2: services.property_svc.v1.Date
	(*timestamppb.Timestamp)(nil), // 3: google.protobuf.Timestamp
}
var file_services_property_svc_v1_types_proto_depIdxs = []int32{
	3, // 0: services.property_svc.v1.Date.date:type_name -> google.protobuf.Timestamp
	1, // [1:1] is the sub-list for method output_type
	1, // [1:1] is the sub-list for method input_type
	1, // [1:1] is the sub-list for extension type_name
	1, // [1:1] is the sub-list for extension extendee
	0, // [0:1] is the sub-list for field type_name
}

func init() { file_services_property_svc_v1_types_proto_init() }
func file_services_property_svc_v1_types_proto_init() {
	if File_services_property_svc_v1_types_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_services_property_svc_v1_types_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Date); i {
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
			RawDescriptor: file_services_property_svc_v1_types_proto_rawDesc,
			NumEnums:      2,
			NumMessages:   1,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_services_property_svc_v1_types_proto_goTypes,
		DependencyIndexes: file_services_property_svc_v1_types_proto_depIdxs,
		EnumInfos:         file_services_property_svc_v1_types_proto_enumTypes,
		MessageInfos:      file_services_property_svc_v1_types_proto_msgTypes,
	}.Build()
	File_services_property_svc_v1_types_proto = out.File
	file_services_property_svc_v1_types_proto_rawDesc = nil
	file_services_property_svc_v1_types_proto_goTypes = nil
	file_services_property_svc_v1_types_proto_depIdxs = nil
}
