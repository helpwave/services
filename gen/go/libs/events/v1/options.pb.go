// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.34.1
// 	protoc        (unknown)
// source: libs/events/v1/options.proto

package v1

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	descriptorpb "google.golang.org/protobuf/types/descriptorpb"
	reflect "reflect"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

var file_libs_events_v1_options_proto_extTypes = []protoimpl.ExtensionInfo{
	{
		ExtendedType:  (*descriptorpb.MessageOptions)(nil),
		ExtensionType: (*string)(nil),
		Field:         2123,
		Name:          "libs.events.v1.event_type",
		Tag:           "bytes,2123,opt,name=event_type",
		Filename:      "libs/events/v1/options.proto",
	},
}

// Extension fields to descriptorpb.MessageOptions.
var (
	// We can define our events in Protobuf. The type of an event like "PATIENT_CREATED_v1"
	// gets resolved via the option event_type.
	// The field number 2123 is an arbitrary number above 1000 for custom options.
	//
	// optional string event_type = 2123;
	E_EventType = &file_libs_events_v1_options_proto_extTypes[0]
)

var File_libs_events_v1_options_proto protoreflect.FileDescriptor

var file_libs_events_v1_options_proto_rawDesc = []byte{
	0x0a, 0x1c, 0x6c, 0x69, 0x62, 0x73, 0x2f, 0x65, 0x76, 0x65, 0x6e, 0x74, 0x73, 0x2f, 0x76, 0x31,
	0x2f, 0x6f, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x0e,
	0x6c, 0x69, 0x62, 0x73, 0x2e, 0x65, 0x76, 0x65, 0x6e, 0x74, 0x73, 0x2e, 0x76, 0x31, 0x1a, 0x20,
	0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2f,
	0x64, 0x65, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x6f, 0x72, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x3a, 0x3f, 0x0a, 0x0a, 0x65, 0x76, 0x65, 0x6e, 0x74, 0x5f, 0x74, 0x79, 0x70, 0x65, 0x12, 0x1f,
	0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66,
	0x2e, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x4f, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x73, 0x18,
	0xcb, 0x10, 0x20, 0x01, 0x28, 0x09, 0x52, 0x09, 0x65, 0x76, 0x65, 0x6e, 0x74, 0x54, 0x79, 0x70,
	0x65, 0x42, 0x90, 0x01, 0x0a, 0x12, 0x63, 0x6f, 0x6d, 0x2e, 0x6c, 0x69, 0x62, 0x73, 0x2e, 0x65,
	0x76, 0x65, 0x6e, 0x74, 0x73, 0x2e, 0x76, 0x31, 0x42, 0x0c, 0x4f, 0x70, 0x74, 0x69, 0x6f, 0x6e,
	0x73, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x50, 0x01, 0x5a, 0x12, 0x67, 0x65, 0x6e, 0x2f, 0x6c, 0x69,
	0x62, 0x73, 0x2f, 0x65, 0x76, 0x65, 0x6e, 0x74, 0x73, 0x2f, 0x76, 0x31, 0xa2, 0x02, 0x03, 0x4c,
	0x45, 0x58, 0xaa, 0x02, 0x0e, 0x4c, 0x69, 0x62, 0x73, 0x2e, 0x45, 0x76, 0x65, 0x6e, 0x74, 0x73,
	0x2e, 0x56, 0x31, 0xca, 0x02, 0x0e, 0x4c, 0x69, 0x62, 0x73, 0x5c, 0x45, 0x76, 0x65, 0x6e, 0x74,
	0x73, 0x5c, 0x56, 0x31, 0xe2, 0x02, 0x1a, 0x4c, 0x69, 0x62, 0x73, 0x5c, 0x45, 0x76, 0x65, 0x6e,
	0x74, 0x73, 0x5c, 0x56, 0x31, 0x5c, 0x47, 0x50, 0x42, 0x4d, 0x65, 0x74, 0x61, 0x64, 0x61, 0x74,
	0x61, 0xea, 0x02, 0x10, 0x4c, 0x69, 0x62, 0x73, 0x3a, 0x3a, 0x45, 0x76, 0x65, 0x6e, 0x74, 0x73,
	0x3a, 0x3a, 0x56, 0x31, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var file_libs_events_v1_options_proto_goTypes = []interface{}{
	(*descriptorpb.MessageOptions)(nil), // 0: google.protobuf.MessageOptions
}
var file_libs_events_v1_options_proto_depIdxs = []int32{
	0, // 0: libs.events.v1.event_type:extendee -> google.protobuf.MessageOptions
	1, // [1:1] is the sub-list for method output_type
	1, // [1:1] is the sub-list for method input_type
	1, // [1:1] is the sub-list for extension type_name
	0, // [0:1] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_libs_events_v1_options_proto_init() }
func file_libs_events_v1_options_proto_init() {
	if File_libs_events_v1_options_proto != nil {
		return
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_libs_events_v1_options_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   0,
			NumExtensions: 1,
			NumServices:   0,
		},
		GoTypes:           file_libs_events_v1_options_proto_goTypes,
		DependencyIndexes: file_libs_events_v1_options_proto_depIdxs,
		ExtensionInfos:    file_libs_events_v1_options_proto_extTypes,
	}.Build()
	File_libs_events_v1_options_proto = out.File
	file_libs_events_v1_options_proto_rawDesc = nil
	file_libs_events_v1_options_proto_goTypes = nil
	file_libs_events_v1_options_proto_depIdxs = nil
}
