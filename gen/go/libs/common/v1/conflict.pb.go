// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.34.1
// 	protoc        (unknown)
// source: libs/common/v1/conflict.proto

package v1

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	anypb "google.golang.org/protobuf/types/known/anypb"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

// Conflicts are returned, if a request was made with a consistency token, and a conflict to the requested action was caused.
// There are three states:
//   - WAS - the state expected to be the newest by the frontend as identified by the consistency token,
//   - WANT - the state resulting from applying the changes requested)
//   - IS - the true current state, which only differs from WAS if another action was performed since the client retrieved the WAS state
//
// If WAS == IS, or WANT and IS are merge-able (e.g., requested action changes "name", and another action has changed "age"), no conflict arises.
// Warning: If a previous action has deleted the resource, an error is raised, and no conflict returned.
type Conflict struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// when history_missing is true, this map will contain elements, that might not have been updated since you have seen them last.
	// it is then on you to compare these against your view of the world
	ConflictingAttributes map[string]*AttributeConflict `protobuf:"bytes,1,rep,name=conflicting_attributes,json=conflictingAttributes,proto3" json:"conflicting_attributes,omitempty" protobuf_key:"bytes,1,opt,name=key,proto3" protobuf_val:"bytes,2,opt,name=value,proto3"`
	HistoryMissing        bool                          `protobuf:"varint,2,opt,name=history_missing,json=historyMissing,proto3" json:"history_missing,omitempty"`
}

func (x *Conflict) Reset() {
	*x = Conflict{}
	if protoimpl.UnsafeEnabled {
		mi := &file_libs_common_v1_conflict_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Conflict) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Conflict) ProtoMessage() {}

func (x *Conflict) ProtoReflect() protoreflect.Message {
	mi := &file_libs_common_v1_conflict_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Conflict.ProtoReflect.Descriptor instead.
func (*Conflict) Descriptor() ([]byte, []int) {
	return file_libs_common_v1_conflict_proto_rawDescGZIP(), []int{0}
}

func (x *Conflict) GetConflictingAttributes() map[string]*AttributeConflict {
	if x != nil {
		return x.ConflictingAttributes
	}
	return nil
}

func (x *Conflict) GetHistoryMissing() bool {
	if x != nil {
		return x.HistoryMissing
	}
	return false
}

type AttributeConflict struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Is   *anypb.Any `protobuf:"bytes,1,opt,name=is,proto3" json:"is,omitempty"`     // CAUTION: may be missing, if the is underlying value is missing (e.g., unassigned beds)
	Want *anypb.Any `protobuf:"bytes,2,opt,name=want,proto3" json:"want,omitempty"` // CAUTION: may be missing, if the requested value is missing (e.g., unassignment of a bed)
}

func (x *AttributeConflict) Reset() {
	*x = AttributeConflict{}
	if protoimpl.UnsafeEnabled {
		mi := &file_libs_common_v1_conflict_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *AttributeConflict) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*AttributeConflict) ProtoMessage() {}

func (x *AttributeConflict) ProtoReflect() protoreflect.Message {
	mi := &file_libs_common_v1_conflict_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use AttributeConflict.ProtoReflect.Descriptor instead.
func (*AttributeConflict) Descriptor() ([]byte, []int) {
	return file_libs_common_v1_conflict_proto_rawDescGZIP(), []int{1}
}

func (x *AttributeConflict) GetIs() *anypb.Any {
	if x != nil {
		return x.Is
	}
	return nil
}

func (x *AttributeConflict) GetWant() *anypb.Any {
	if x != nil {
		return x.Want
	}
	return nil
}

var File_libs_common_v1_conflict_proto protoreflect.FileDescriptor

var file_libs_common_v1_conflict_proto_rawDesc = []byte{
	0x0a, 0x1d, 0x6c, 0x69, 0x62, 0x73, 0x2f, 0x63, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e, 0x2f, 0x76, 0x31,
	0x2f, 0x63, 0x6f, 0x6e, 0x66, 0x6c, 0x69, 0x63, 0x74, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12,
	0x0e, 0x6c, 0x69, 0x62, 0x73, 0x2e, 0x63, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e, 0x2e, 0x76, 0x31, 0x1a,
	0x19, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66,
	0x2f, 0x61, 0x6e, 0x79, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0x8c, 0x02, 0x0a, 0x08, 0x43,
	0x6f, 0x6e, 0x66, 0x6c, 0x69, 0x63, 0x74, 0x12, 0x6a, 0x0a, 0x16, 0x63, 0x6f, 0x6e, 0x66, 0x6c,
	0x69, 0x63, 0x74, 0x69, 0x6e, 0x67, 0x5f, 0x61, 0x74, 0x74, 0x72, 0x69, 0x62, 0x75, 0x74, 0x65,
	0x73, 0x18, 0x01, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x33, 0x2e, 0x6c, 0x69, 0x62, 0x73, 0x2e, 0x63,
	0x6f, 0x6d, 0x6d, 0x6f, 0x6e, 0x2e, 0x76, 0x31, 0x2e, 0x43, 0x6f, 0x6e, 0x66, 0x6c, 0x69, 0x63,
	0x74, 0x2e, 0x43, 0x6f, 0x6e, 0x66, 0x6c, 0x69, 0x63, 0x74, 0x69, 0x6e, 0x67, 0x41, 0x74, 0x74,
	0x72, 0x69, 0x62, 0x75, 0x74, 0x65, 0x73, 0x45, 0x6e, 0x74, 0x72, 0x79, 0x52, 0x15, 0x63, 0x6f,
	0x6e, 0x66, 0x6c, 0x69, 0x63, 0x74, 0x69, 0x6e, 0x67, 0x41, 0x74, 0x74, 0x72, 0x69, 0x62, 0x75,
	0x74, 0x65, 0x73, 0x12, 0x27, 0x0a, 0x0f, 0x68, 0x69, 0x73, 0x74, 0x6f, 0x72, 0x79, 0x5f, 0x6d,
	0x69, 0x73, 0x73, 0x69, 0x6e, 0x67, 0x18, 0x02, 0x20, 0x01, 0x28, 0x08, 0x52, 0x0e, 0x68, 0x69,
	0x73, 0x74, 0x6f, 0x72, 0x79, 0x4d, 0x69, 0x73, 0x73, 0x69, 0x6e, 0x67, 0x1a, 0x6b, 0x0a, 0x1a,
	0x43, 0x6f, 0x6e, 0x66, 0x6c, 0x69, 0x63, 0x74, 0x69, 0x6e, 0x67, 0x41, 0x74, 0x74, 0x72, 0x69,
	0x62, 0x75, 0x74, 0x65, 0x73, 0x45, 0x6e, 0x74, 0x72, 0x79, 0x12, 0x10, 0x0a, 0x03, 0x6b, 0x65,
	0x79, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03, 0x6b, 0x65, 0x79, 0x12, 0x37, 0x0a, 0x05,
	0x76, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x21, 0x2e, 0x6c, 0x69,
	0x62, 0x73, 0x2e, 0x63, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e, 0x2e, 0x76, 0x31, 0x2e, 0x41, 0x74, 0x74,
	0x72, 0x69, 0x62, 0x75, 0x74, 0x65, 0x43, 0x6f, 0x6e, 0x66, 0x6c, 0x69, 0x63, 0x74, 0x52, 0x05,
	0x76, 0x61, 0x6c, 0x75, 0x65, 0x3a, 0x02, 0x38, 0x01, 0x22, 0x63, 0x0a, 0x11, 0x41, 0x74, 0x74,
	0x72, 0x69, 0x62, 0x75, 0x74, 0x65, 0x43, 0x6f, 0x6e, 0x66, 0x6c, 0x69, 0x63, 0x74, 0x12, 0x24,
	0x0a, 0x02, 0x69, 0x73, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x14, 0x2e, 0x67, 0x6f, 0x6f,
	0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x41, 0x6e, 0x79,
	0x52, 0x02, 0x69, 0x73, 0x12, 0x28, 0x0a, 0x04, 0x77, 0x61, 0x6e, 0x74, 0x18, 0x02, 0x20, 0x01,
	0x28, 0x0b, 0x32, 0x14, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74,
	0x6f, 0x62, 0x75, 0x66, 0x2e, 0x41, 0x6e, 0x79, 0x52, 0x04, 0x77, 0x61, 0x6e, 0x74, 0x42, 0x91,
	0x01, 0x0a, 0x12, 0x63, 0x6f, 0x6d, 0x2e, 0x6c, 0x69, 0x62, 0x73, 0x2e, 0x63, 0x6f, 0x6d, 0x6d,
	0x6f, 0x6e, 0x2e, 0x76, 0x31, 0x42, 0x0d, 0x43, 0x6f, 0x6e, 0x66, 0x6c, 0x69, 0x63, 0x74, 0x50,
	0x72, 0x6f, 0x74, 0x6f, 0x50, 0x01, 0x5a, 0x12, 0x67, 0x65, 0x6e, 0x2f, 0x6c, 0x69, 0x62, 0x73,
	0x2f, 0x63, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e, 0x2f, 0x76, 0x31, 0xa2, 0x02, 0x03, 0x4c, 0x43, 0x58,
	0xaa, 0x02, 0x0e, 0x4c, 0x69, 0x62, 0x73, 0x2e, 0x43, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e, 0x2e, 0x56,
	0x31, 0xca, 0x02, 0x0e, 0x4c, 0x69, 0x62, 0x73, 0x5c, 0x43, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e, 0x5c,
	0x56, 0x31, 0xe2, 0x02, 0x1a, 0x4c, 0x69, 0x62, 0x73, 0x5c, 0x43, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e,
	0x5c, 0x56, 0x31, 0x5c, 0x47, 0x50, 0x42, 0x4d, 0x65, 0x74, 0x61, 0x64, 0x61, 0x74, 0x61, 0xea,
	0x02, 0x10, 0x4c, 0x69, 0x62, 0x73, 0x3a, 0x3a, 0x43, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e, 0x3a, 0x3a,
	0x56, 0x31, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_libs_common_v1_conflict_proto_rawDescOnce sync.Once
	file_libs_common_v1_conflict_proto_rawDescData = file_libs_common_v1_conflict_proto_rawDesc
)

func file_libs_common_v1_conflict_proto_rawDescGZIP() []byte {
	file_libs_common_v1_conflict_proto_rawDescOnce.Do(func() {
		file_libs_common_v1_conflict_proto_rawDescData = protoimpl.X.CompressGZIP(file_libs_common_v1_conflict_proto_rawDescData)
	})
	return file_libs_common_v1_conflict_proto_rawDescData
}

var file_libs_common_v1_conflict_proto_msgTypes = make([]protoimpl.MessageInfo, 3)
var file_libs_common_v1_conflict_proto_goTypes = []interface{}{
	(*Conflict)(nil),          // 0: libs.common.v1.Conflict
	(*AttributeConflict)(nil), // 1: libs.common.v1.AttributeConflict
	nil,                       // 2: libs.common.v1.Conflict.ConflictingAttributesEntry
	(*anypb.Any)(nil),         // 3: google.protobuf.Any
}
var file_libs_common_v1_conflict_proto_depIdxs = []int32{
	2, // 0: libs.common.v1.Conflict.conflicting_attributes:type_name -> libs.common.v1.Conflict.ConflictingAttributesEntry
	3, // 1: libs.common.v1.AttributeConflict.is:type_name -> google.protobuf.Any
	3, // 2: libs.common.v1.AttributeConflict.want:type_name -> google.protobuf.Any
	1, // 3: libs.common.v1.Conflict.ConflictingAttributesEntry.value:type_name -> libs.common.v1.AttributeConflict
	4, // [4:4] is the sub-list for method output_type
	4, // [4:4] is the sub-list for method input_type
	4, // [4:4] is the sub-list for extension type_name
	4, // [4:4] is the sub-list for extension extendee
	0, // [0:4] is the sub-list for field type_name
}

func init() { file_libs_common_v1_conflict_proto_init() }
func file_libs_common_v1_conflict_proto_init() {
	if File_libs_common_v1_conflict_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_libs_common_v1_conflict_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Conflict); i {
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
		file_libs_common_v1_conflict_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*AttributeConflict); i {
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
			RawDescriptor: file_libs_common_v1_conflict_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   3,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_libs_common_v1_conflict_proto_goTypes,
		DependencyIndexes: file_libs_common_v1_conflict_proto_depIdxs,
		MessageInfos:      file_libs_common_v1_conflict_proto_msgTypes,
	}.Build()
	File_libs_common_v1_conflict_proto = out.File
	file_libs_common_v1_conflict_proto_rawDesc = nil
	file_libs_common_v1_conflict_proto_goTypes = nil
	file_libs_common_v1_conflict_proto_depIdxs = nil
}
