# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: proto/services/property_svc/v1/property_svc.proto
# Protobuf Python Version: 4.25.2
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
from google.protobuf.internal import builder as _builder
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


from proto.services.property_svc.v1 import types_pb2 as proto_dot_services_dot_property__svc_dot_v1_dot_types__pb2


DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n1proto/services/property_svc/v1/property_svc.proto\x12\x1eproto.services.property_svc.v1\x1a*proto/services/property_svc/v1/types.proto\"\x82\x07\n\x15\x43reatePropertyRequest\x12\x45\n\x07\x63ontext\x18\x01 \x01(\x0e\x32+.proto.services.property_svc.v1.ViewContextR\x07\x63ontext\x12N\n\x0csubject_type\x18\x02 \x01(\x0e\x32+.proto.services.property_svc.v1.SubjectTypeR\x0bsubjectType\x12H\n\nfield_type\x18\x03 \x01(\x0e\x32).proto.services.property_svc.v1.FieldTypeR\tfieldType\x12\x12\n\x04name\x18\x04 \x01(\tR\x04name\x12%\n\x0b\x64\x65scription\x18\x05 \x01(\tH\x01R\x0b\x64\x65scription\x88\x01\x01\x12\x1a\n\x06set_id\x18\x06 \x01(\tH\x02R\x05setId\x88\x01\x01\x12O\n\"always_include_for_current_context\x18\x07 \x01(\x08H\x03R\x1e\x61lwaysIncludeForCurrentContext\x88\x01\x01\x12\x14\n\x04none\x18\x08 \x01(\x08H\x00R\x04none\x12\x63\n\x0bselect_data\x18\t \x01(\x0b\x32@.proto.services.property_svc.v1.CreatePropertyRequest.SelectDataH\x00R\nselectData\x1a\x8f\x02\n\nSelectData\x12*\n\x0e\x61llow_freetext\x18\x01 \x01(\x08H\x00R\rallowFreetext\x88\x01\x01\x12g\n\x07options\x18\x02 \x03(\x0b\x32M.proto.services.property_svc.v1.CreatePropertyRequest.SelectData.SelectOptionR\x07options\x1aY\n\x0cSelectOption\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12%\n\x0b\x64\x65scription\x18\x02 \x01(\tH\x00R\x0b\x64\x65scription\x88\x01\x01\x42\x0e\n\x0c_descriptionB\x11\n\x0f_allow_freetextB\x11\n\x0f\x66ield_type_dataB\x0e\n\x0c_descriptionB\t\n\x07_set_idB%\n#_always_include_for_current_context\"9\n\x16\x43reatePropertyResponse\x12\x1f\n\x0bproperty_id\x18\x01 \x01(\tR\npropertyId\"k\n\x12GetPropertyRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x45\n\x07\x63ontext\x18\x02 \x01(\x0e\x32+.proto.services.property_svc.v1.ViewContextR\x07\x63ontext\"\xe6\x06\n\x13GetPropertyResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12N\n\x0csubject_type\x18\x02 \x01(\x0e\x32+.proto.services.property_svc.v1.SubjectTypeR\x0bsubjectType\x12H\n\nfield_type\x18\x03 \x01(\x0e\x32).proto.services.property_svc.v1.FieldTypeR\tfieldType\x12\x12\n\x04name\x18\x04 \x01(\tR\x04name\x12%\n\x0b\x64\x65scription\x18\x05 \x01(\tH\x01R\x0b\x64\x65scription\x88\x01\x01\x12\x1f\n\x0bis_archived\x18\x06 \x01(\x08R\nisArchived\x12\x1a\n\x06set_id\x18\x08 \x01(\tH\x02R\x05setId\x88\x01\x01\x12\x14\n\x04none\x18\t \x01(\x08H\x00R\x04none\x12\x61\n\x0bselect_data\x18\n \x01(\x0b\x32>.proto.services.property_svc.v1.GetPropertyResponse.SelectDataH\x00R\nselectData\x12O\n\"always_include_for_current_context\x18\x0b \x01(\x08H\x03R\x1e\x61lwaysIncludeForCurrentContext\x88\x01\x01\x1a\x8d\x02\n\nSelectData\x12*\n\x0e\x61llow_freetext\x18\x01 \x01(\x08H\x00R\rallowFreetext\x88\x01\x01\x12\x65\n\x07options\x18\x02 \x03(\x0b\x32K.proto.services.property_svc.v1.GetPropertyResponse.SelectData.SelectOptionR\x07options\x1aY\n\x0cSelectOption\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12%\n\x0b\x64\x65scription\x18\x02 \x01(\tH\x00R\x0b\x64\x65scription\x88\x01\x01\x42\x0e\n\x0c_descriptionB\x11\n\x0f_allow_freetextB\x11\n\x0f\x66ield_type_dataB\x0e\n\x0c_descriptionB\t\n\x07_set_idB%\n#_always_include_for_current_context\"\xc4\x07\n\x15UpdatePropertyRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12S\n\x0csubject_type\x18\x02 \x01(\x0e\x32+.proto.services.property_svc.v1.SubjectTypeH\x01R\x0bsubjectType\x88\x01\x01\x12M\n\nfield_type\x18\x03 \x01(\x0e\x32).proto.services.property_svc.v1.FieldTypeH\x02R\tfieldType\x88\x01\x01\x12\x17\n\x04name\x18\x04 \x01(\tH\x03R\x04name\x88\x01\x01\x12%\n\x0b\x64\x65scription\x18\x05 \x01(\tH\x04R\x0b\x64\x65scription\x88\x01\x01\x12$\n\x0bis_archived\x18\x06 \x01(\x08H\x05R\nisArchived\x88\x01\x01\x12\x1a\n\x06set_id\x18\x08 \x01(\tH\x06R\x05setId\x88\x01\x01\x12\x14\n\x04none\x18\t \x01(\x08H\x00R\x04none\x12\x63\n\x0bselect_data\x18\n \x01(\x0b\x32@.proto.services.property_svc.v1.UpdatePropertyRequest.SelectDataH\x00R\nselectData\x1a\x92\x03\n\nSelectData\x12*\n\x0e\x61llow_freetext\x18\x01 \x01(\x08H\x00R\rallowFreetext\x88\x01\x01\x12%\n\x0eremove_options\x18\x02 \x03(\tR\rremoveOptions\x12t\n\x0eupsert_options\x18\x03 \x03(\x0b\x32M.proto.services.property_svc.v1.UpdatePropertyRequest.SelectData.SelectOptionR\rupsertOptions\x1a\xa7\x01\n\x0cSelectOption\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x17\n\x04name\x18\x02 \x01(\tH\x00R\x04name\x88\x01\x01\x12%\n\x0b\x64\x65scription\x18\x03 \x01(\tH\x01R\x0b\x64\x65scription\x88\x01\x01\x12 \n\tis_custom\x18\x04 \x01(\x08H\x02R\x08isCustom\x88\x01\x01\x42\x07\n\x05_nameB\x0e\n\x0c_descriptionB\x0c\n\n_is_customB\x11\n\x0f_allow_freetextB\x11\n\x0f\x66ield_type_dataB\x0f\n\r_subject_typeB\r\n\x0b_field_typeB\x07\n\x05_nameB\x0e\n\x0c_descriptionB\x0e\n\x0c_is_archivedB\t\n\x07_set_id\"\x18\n\x16UpdatePropertyResponse2\x93\x03\n\x0fPropertyService\x12\x81\x01\n\x0e\x43reateProperty\x12\x35.proto.services.property_svc.v1.CreatePropertyRequest\x1a\x36.proto.services.property_svc.v1.CreatePropertyResponse\"\x00\x12x\n\x0bGetProperty\x12\x32.proto.services.property_svc.v1.GetPropertyRequest\x1a\x33.proto.services.property_svc.v1.GetPropertyResponse\"\x00\x12\x81\x01\n\x0eUpdateProperty\x12\x35.proto.services.property_svc.v1.UpdatePropertyRequest\x1a\x36.proto.services.property_svc.v1.UpdatePropertyResponse\"\x00\x42\xee\x01\n\"com.proto.services.property_svc.v1B\x10PropertySvcProtoP\x01Z\x1fgen/proto/services/property-svc\xa2\x02\x03PSP\xaa\x02\x1dProto.Services.PropertySvc.V1\xca\x02\x1dProto\\Services\\PropertySvc\\V1\xe2\x02)Proto\\Services\\PropertySvc\\V1\\GPBMetadata\xea\x02 Proto::Services::PropertySvc::V1b\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'proto.services.property_svc.v1.property_svc_pb2', _globals)
if _descriptor._USE_C_DESCRIPTORS == False:
  _globals['DESCRIPTOR']._options = None
  _globals['DESCRIPTOR']._serialized_options = b'\n\"com.proto.services.property_svc.v1B\020PropertySvcProtoP\001Z\037gen/proto/services/property-svc\242\002\003PSP\252\002\035Proto.Services.PropertySvc.V1\312\002\035Proto\\Services\\PropertySvc\\V1\342\002)Proto\\Services\\PropertySvc\\V1\\GPBMetadata\352\002 Proto::Services::PropertySvc::V1'
  _globals['_CREATEPROPERTYREQUEST']._serialized_start=130
  _globals['_CREATEPROPERTYREQUEST']._serialized_end=1028
  _globals['_CREATEPROPERTYREQUEST_SELECTDATA']._serialized_start=672
  _globals['_CREATEPROPERTYREQUEST_SELECTDATA']._serialized_end=943
  _globals['_CREATEPROPERTYREQUEST_SELECTDATA_SELECTOPTION']._serialized_start=835
  _globals['_CREATEPROPERTYREQUEST_SELECTDATA_SELECTOPTION']._serialized_end=924
  _globals['_CREATEPROPERTYRESPONSE']._serialized_start=1030
  _globals['_CREATEPROPERTYRESPONSE']._serialized_end=1087
  _globals['_GETPROPERTYREQUEST']._serialized_start=1089
  _globals['_GETPROPERTYREQUEST']._serialized_end=1196
  _globals['_GETPROPERTYRESPONSE']._serialized_start=1199
  _globals['_GETPROPERTYRESPONSE']._serialized_end=2069
  _globals['_GETPROPERTYRESPONSE_SELECTDATA']._serialized_start=1715
  _globals['_GETPROPERTYRESPONSE_SELECTDATA']._serialized_end=1984
  _globals['_GETPROPERTYRESPONSE_SELECTDATA_SELECTOPTION']._serialized_start=835
  _globals['_GETPROPERTYRESPONSE_SELECTDATA_SELECTOPTION']._serialized_end=924
  _globals['_UPDATEPROPERTYREQUEST']._serialized_start=2072
  _globals['_UPDATEPROPERTYREQUEST']._serialized_end=3036
  _globals['_UPDATEPROPERTYREQUEST_SELECTDATA']._serialized_start=2531
  _globals['_UPDATEPROPERTYREQUEST_SELECTDATA']._serialized_end=2933
  _globals['_UPDATEPROPERTYREQUEST_SELECTDATA_SELECTOPTION']._serialized_start=2747
  _globals['_UPDATEPROPERTYREQUEST_SELECTDATA_SELECTOPTION']._serialized_end=2914
  _globals['_UPDATEPROPERTYRESPONSE']._serialized_start=3038
  _globals['_UPDATEPROPERTYRESPONSE']._serialized_end=3062
  _globals['_PROPERTYSERVICE']._serialized_start=3065
  _globals['_PROPERTYSERVICE']._serialized_end=3468
# @@protoc_insertion_point(module_scope)
