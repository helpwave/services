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




DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n1proto/services/property_svc/v1/property_svc.proto\x12\x1eproto.services.property_svc.v1\"\xb7\x01\n\x15\x43reatePropertyRequest\x12\x1d\n\nsubject_id\x18\x01 \x01(\tR\tsubjectId\x12!\n\x0csubject_type\x18\x02 \x01(\tR\x0bsubjectType\x12H\n\nfield_type\x18\x03 \x01(\x0e\x32).proto.services.property_svc.v1.FieldTypeR\tfieldType\x12\x12\n\x04name\x18\x04 \x01(\tR\x04name\"(\n\x16\x43reatePropertyResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"$\n\x12GetPropertyRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\xf6\x02\n\x13GetPropertyResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12!\n\x0csubject_type\x18\x03 \x01(\tR\x0bsubjectType\x12\x1d\n\nsubject_id\x18\x04 \x01(\tR\tsubjectId\x12H\n\nfield_type\x18\x05 \x01(\x0e\x32).proto.services.property_svc.v1.FieldTypeR\tfieldType\x12%\n\x0b\x64\x65scription\x18\x06 \x01(\tH\x00R\x0b\x64\x65scription\x88\x01\x01\x12$\n\x0bis_archived\x18\x07 \x01(\x08H\x01R\nisArchived\x88\x01\x01\x12-\n\x10is_soft_required\x18\x08 \x01(\x08H\x02R\x0eisSoftRequired\x88\x01\x01\x42\x0e\n\x0c_descriptionB\x0e\n\x0c_is_archivedB\x13\n\x11_is_soft_required*\x95\x01\n\tFieldType\x12\x13\n\x0f\x46IELD_TYPE_TEXT\x10\x00\x12\x15\n\x11\x46IELD_TYPE_NUMBER\x10\x01\x12\x17\n\x13\x46IELD_TYPE_CHECKBOX\x10\x02\x12\x13\n\x0f\x46IELD_TYPE_DATE\x10\x03\x12\x17\n\x13\x46IELD_TYPE_DATETIME\x10\x04\x12\x15\n\x11\x46IELD_TYPE_SELECT\x10\x05\x32\x8f\x02\n\x0fPropertyService\x12\x81\x01\n\x0e\x43reateProperty\x12\x35.proto.services.property_svc.v1.CreatePropertyRequest\x1a\x36.proto.services.property_svc.v1.CreatePropertyResponse\"\x00\x12x\n\x0bGetProperty\x12\x32.proto.services.property_svc.v1.GetPropertyRequest\x1a\x33.proto.services.property_svc.v1.GetPropertyResponse\"\x00\x42\xee\x01\n\"com.proto.services.property_svc.v1B\x10PropertySvcProtoP\x01Z\x1fgen/proto/services/property-svc\xa2\x02\x03PSP\xaa\x02\x1dProto.Services.PropertySvc.V1\xca\x02\x1dProto\\Services\\PropertySvc\\V1\xe2\x02)Proto\\Services\\PropertySvc\\V1\\GPBMetadata\xea\x02 Proto::Services::PropertySvc::V1b\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'proto.services.property_svc.v1.property_svc_pb2', _globals)
if _descriptor._USE_C_DESCRIPTORS == False:
  _globals['DESCRIPTOR']._options = None
  _globals['DESCRIPTOR']._serialized_options = b'\n\"com.proto.services.property_svc.v1B\020PropertySvcProtoP\001Z\037gen/proto/services/property-svc\242\002\003PSP\252\002\035Proto.Services.PropertySvc.V1\312\002\035Proto\\Services\\PropertySvc\\V1\342\002)Proto\\Services\\PropertySvc\\V1\\GPBMetadata\352\002 Proto::Services::PropertySvc::V1'
  _globals['_FIELDTYPE']._serialized_start=729
  _globals['_FIELDTYPE']._serialized_end=878
  _globals['_CREATEPROPERTYREQUEST']._serialized_start=86
  _globals['_CREATEPROPERTYREQUEST']._serialized_end=269
  _globals['_CREATEPROPERTYRESPONSE']._serialized_start=271
  _globals['_CREATEPROPERTYRESPONSE']._serialized_end=311
  _globals['_GETPROPERTYREQUEST']._serialized_start=313
  _globals['_GETPROPERTYREQUEST']._serialized_end=349
  _globals['_GETPROPERTYRESPONSE']._serialized_start=352
  _globals['_GETPROPERTYRESPONSE']._serialized_end=726
  _globals['_PROPERTYSERVICE']._serialized_start=881
  _globals['_PROPERTYSERVICE']._serialized_end=1152
# @@protoc_insertion_point(module_scope)
