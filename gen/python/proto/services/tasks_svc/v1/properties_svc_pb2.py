# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: proto/services/tasks_svc/v1/properties_svc.proto
# Protobuf Python Version: 4.25.2
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
from google.protobuf.internal import builder as _builder
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n0proto/services/tasks_svc/v1/properties_svc.proto\x12\x1bproto.services.tasks_svc.v1\"N\n\x18\x43reatePropertySetRequest\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12\x1e\n\nproperties\x18\x03 \x03(\tR\nproperties\"C\n\x19\x43reatePropertySetResponse\x12&\n\x0fproperty_set_id\x18\x01 \x01(\tR\rpropertySetId\"\xad\x01\n\x18UpdatePropertySetRequest\x12\x15\n\x06set_id\x18\x01 \x01(\tR\x05setId\x12\x17\n\x04name\x18\x02 \x01(\tH\x00R\x04name\x88\x01\x01\x12)\n\x10\x61\x64\x64\x65\x64_properties\x18\x03 \x03(\tR\x0f\x61\x64\x64\x65\x64Properties\x12-\n\x12removed_properties\x18\x04 \x03(\tR\x11removedPropertiesB\x07\n\x05_name\"\x1b\n\x19UpdatePropertySetResponse\"1\n\x18\x44\x65letePropertySetRequest\x12\x15\n\x06set_id\x18\x01 \x01(\tR\x05setId\"\x1b\n\x19\x44\x65letePropertySetResponse\"\xe0\x03\n\x15\x43reatePropertyRequest\x12K\n\x0csubject_type\x18\x01 \x01(\x0e\x32(.proto.services.tasks_svc.v1.SubjectTypeR\x0bsubjectType\x12\x45\n\nfield_type\x18\x02 \x01(\x0e\x32&.proto.services.tasks_svc.v1.FieldTypeR\tfieldType\x12\x12\n\x04name\x18\x03 \x01(\tR\x04name\x12%\n\x0b\x64\x65scription\x18\x04 \x01(\tH\x00R\x0b\x64\x65scription\x88\x01\x01\x12\x1a\n\x06set_id\x18\x06 \x01(\tH\x01R\x05setId\x88\x01\x01\x12\x66\n\x0eselect_options\x18\x07 \x03(\x0b\x32?.proto.services.tasks_svc.v1.CreatePropertyRequest.SelectOptionR\rselectOptions\x1aY\n\x0cSelectOption\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12%\n\x0b\x64\x65scription\x18\x02 \x01(\tH\x00R\x0b\x64\x65scription\x88\x01\x01\x42\x0e\n\x0c_descriptionB\x0e\n\x0c_descriptionB\t\n\x07_set_id\"9\n\x16\x43reatePropertyResponse\x12\x1f\n\x0bproperty_id\x18\x01 \x01(\tR\npropertyId\"$\n\x12GetPropertyRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x8d\x04\n\x13GetPropertyResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12K\n\x0csubject_type\x18\x02 \x01(\x0e\x32(.proto.services.tasks_svc.v1.SubjectTypeR\x0bsubjectType\x12\x45\n\nfield_type\x18\x03 \x01(\x0e\x32&.proto.services.tasks_svc.v1.FieldTypeR\tfieldType\x12\x12\n\x04name\x18\x04 \x01(\tR\x04name\x12%\n\x0b\x64\x65scription\x18\x05 \x01(\tH\x00R\x0b\x64\x65scription\x88\x01\x01\x12\x1f\n\x0bis_archived\x18\x06 \x01(\x08R\nisArchived\x12\x1a\n\x06set_id\x18\x08 \x01(\tH\x01R\x05setId\x88\x01\x01\x12\x64\n\x0eselect_options\x18\t \x03(\x0b\x32=.proto.services.tasks_svc.v1.GetPropertyResponse.SelectOptionR\rselectOptions\x1aY\n\x0cSelectOption\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12%\n\x0b\x64\x65scription\x18\x02 \x01(\tH\x00R\x0b\x64\x65scription\x88\x01\x01\x42\x0e\n\x0c_descriptionB\x0e\n\x0c_descriptionB\t\n\x07_set_id\"=\n\x14GetPropertiesRequest\x12\x1a\n\x06set_id\x18\x01 \x01(\tH\x00R\x05setId\x88\x01\x01\x42\t\n\x07_set_id\"\xa1\x05\n\x15GetPropertiesResponse\x12[\n\nproperties\x18\x01 \x03(\x0b\x32;.proto.services.tasks_svc.v1.GetPropertiesResponse.PropertyR\nproperties\x1a\xaa\x04\n\x08Property\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12K\n\x0csubject_type\x18\x02 \x01(\x0e\x32(.proto.services.tasks_svc.v1.SubjectTypeR\x0bsubjectType\x12\x45\n\nfield_type\x18\x03 \x01(\x0e\x32&.proto.services.tasks_svc.v1.FieldTypeR\tfieldType\x12\x12\n\x04name\x18\x04 \x01(\tR\x04name\x12%\n\x0b\x64\x65scription\x18\x05 \x01(\tH\x00R\x0b\x64\x65scription\x88\x01\x01\x12\x1f\n\x0bis_archived\x18\x06 \x01(\x08R\nisArchived\x12\x1a\n\x06set_id\x18\x08 \x01(\tH\x01R\x05setId\x88\x01\x01\x12o\n\x0eselect_options\x18\t \x03(\x0b\x32H.proto.services.tasks_svc.v1.GetPropertiesResponse.Property.SelectOptionR\rselectOptions\x1av\n\x0cSelectOption\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12%\n\x0b\x64\x65scription\x18\x02 \x01(\tH\x00R\x0b\x64\x65scription\x88\x01\x01\x12\x1b\n\tis_custom\x18\x03 \x01(\x08R\x08isCustomB\x0e\n\x0c_descriptionB\x0e\n\x0c_descriptionB\t\n\x07_set_id\"\xee\x05\n\x15UpdatePropertyRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12P\n\x0csubject_type\x18\x02 \x01(\x0e\x32(.proto.services.tasks_svc.v1.SubjectTypeH\x00R\x0bsubjectType\x88\x01\x01\x12J\n\nfield_type\x18\x03 \x01(\x0e\x32&.proto.services.tasks_svc.v1.FieldTypeH\x01R\tfieldType\x88\x01\x01\x12\x17\n\x04name\x18\x04 \x01(\tH\x02R\x04name\x88\x01\x01\x12%\n\x0b\x64\x65scription\x18\x05 \x01(\tH\x03R\x0b\x64\x65scription\x88\x01\x01\x12$\n\x0bis_archived\x18\x06 \x01(\x08H\x04R\nisArchived\x88\x01\x01\x12\x1a\n\x06set_id\x18\x08 \x01(\tH\x05R\x05setId\x88\x01\x01\x12s\n\x15upsert_select_options\x18\t \x03(\x0b\x32?.proto.services.tasks_svc.v1.UpdatePropertyRequest.SelectOptionR\x13upsertSelectOptions\x12\x32\n\x15remove_select_options\x18\n \x03(\tR\x13removeSelectOptions\x1a\xa7\x01\n\x0cSelectOption\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x17\n\x04name\x18\x02 \x01(\tH\x00R\x04name\x88\x01\x01\x12%\n\x0b\x64\x65scription\x18\x03 \x01(\tH\x01R\x0b\x64\x65scription\x88\x01\x01\x12 \n\tis_custom\x18\x04 \x01(\x08H\x02R\x08isCustom\x88\x01\x01\x42\x07\n\x05_nameB\x0e\n\x0c_descriptionB\x0c\n\n_is_customB\x0f\n\r_subject_typeB\r\n\x0b_field_typeB\x07\n\x05_nameB\x0e\n\x0c_descriptionB\x0e\n\x0c_is_archivedB\t\n\x07_set_id\"\x18\n\x16UpdatePropertyResponse\"\xae\x03\n\x1a\x41ttachPropertyValueRequest\x12\x1d\n\nsubject_id\x18\x01 \x01(\tR\tsubjectId\x12K\n\x0csubject_type\x18\x02 \x01(\x0e\x32(.proto.services.tasks_svc.v1.SubjectTypeR\x0bsubjectType\x12\x1f\n\x0bproperty_id\x18\x03 \x01(\tR\npropertyId\x12#\n\x0cis_undefined\x18\x04 \x01(\x08H\x00R\x0bisUndefined\x12\x1f\n\ntext_value\x18\x05 \x01(\tH\x00R\ttextValue\x12#\n\x0cnumber_value\x18\x06 \x01(\x02H\x00R\x0bnumberValue\x12\x1f\n\nbool_value\x18\x07 \x01(\x08H\x00R\tboolValue\x12\x1f\n\ndate_value\x18\x08 \x01(\tH\x00R\tdateValue\x12(\n\x0f\x64\x61te_time_value\x18\t \x01(\tH\x00R\rdateTimeValue\x12#\n\x0cselect_value\x18\n \x01(\tH\x00R\x0bselectValueB\x07\n\x05value\"I\n\x1b\x41ttachPropertyValueResponse\x12*\n\x11property_value_id\x18\x01 \x01(\tR\x0fpropertyValueId\"c\n GetAttachedPropertyValuesRequest\x12\x1d\n\nsubject_id\x18\x01 \x01(\tR\tsubjectId\x12\x17\n\x04view\x18\x02 \x01(\tH\x00R\x04view\x88\x01\x01\x42\x07\n\x05_view\"\xf8\x05\n!GetAttachedPropertyValuesResponse\x12\\\n\x06values\x18\x01 \x03(\x0b\x32\x44.proto.services.tasks_svc.v1.GetAttachedPropertyValuesResponse.ValueR\x06values\x1a\xf4\x04\n\x05Value\x12\x1f\n\x0bproperty_id\x18\x01 \x01(\tR\npropertyId\x12\x45\n\nfield_type\x18\x02 \x01(\x0e\x32&.proto.services.tasks_svc.v1.FieldTypeR\tfieldType\x12\x12\n\x04name\x18\x03 \x01(\tR\x04name\x12%\n\x0b\x64\x65scription\x18\x04 \x01(\tH\x01R\x0b\x64\x65scription\x88\x01\x01\x12\x1f\n\x0bis_archived\x18\x05 \x01(\x08R\nisArchived\x12_\n\x03set\x18\x07 \x01(\x0b\x32H.proto.services.tasks_svc.v1.GetAttachedPropertyValuesResponse.Value.SetH\x02R\x03set\x88\x01\x01\x12#\n\x0cis_undefined\x18\x08 \x01(\x08H\x00R\x0bisUndefined\x12\x1f\n\ntext_value\x18\t \x01(\tH\x00R\ttextValue\x12#\n\x0cnumber_value\x18\n \x01(\x02H\x00R\x0bnumberValue\x12\x1f\n\nbool_value\x18\x0b \x01(\x08H\x00R\tboolValue\x12\x1f\n\ndate_value\x18\x0c \x01(\tH\x00R\tdateValue\x12(\n\x0f\x64\x61te_time_value\x18\r \x01(\tH\x00R\rdateTimeValue\x12#\n\x0cselect_value\x18\x0e \x01(\tH\x00R\x0bselectValue\x1a)\n\x03Set\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04nameB\x07\n\x05valueB\x0e\n\x0c_descriptionB\x06\n\x04_set*E\n\x0bSubjectType\x12\x1c\n\x18SUBJECT_TYPE_UNSPECIFIED\x10\x00\x12\x18\n\x14SUBJECT_TYPE_PATIENT\x10\x01*\xb2\x01\n\tFieldType\x12\x1a\n\x16\x46IELD_TYPE_UNSPECIFIED\x10\x00\x12\x13\n\x0f\x46IELD_TYPE_TEXT\x10\x01\x12\x15\n\x11\x46IELD_TYPE_NUMBER\x10\x02\x12\x17\n\x13\x46IELD_TYPE_CHECKBOX\x10\x03\x12\x13\n\x0f\x46IELD_TYPE_DATE\x10\x04\x12\x18\n\x14\x46IELD_TYPE_DATE_TIME\x10\x05\x12\x15\n\x11\x46IELD_TYPE_SELECT\x10\x06\x32\xbc\t\n\x11PropertiesService\x12\x84\x01\n\x11\x43reatePropertySet\x12\x35.proto.services.tasks_svc.v1.CreatePropertySetRequest\x1a\x36.proto.services.tasks_svc.v1.CreatePropertySetResponse\"\x00\x12\x84\x01\n\x11UpdatePropertySet\x12\x35.proto.services.tasks_svc.v1.UpdatePropertySetRequest\x1a\x36.proto.services.tasks_svc.v1.UpdatePropertySetResponse\"\x00\x12\x84\x01\n\x11\x44\x65letePropertySet\x12\x35.proto.services.tasks_svc.v1.DeletePropertySetRequest\x1a\x36.proto.services.tasks_svc.v1.DeletePropertySetResponse\"\x00\x12{\n\x0e\x43reateProperty\x12\x32.proto.services.tasks_svc.v1.CreatePropertyRequest\x1a\x33.proto.services.tasks_svc.v1.CreatePropertyResponse\"\x00\x12r\n\x0bGetProperty\x12/.proto.services.tasks_svc.v1.GetPropertyRequest\x1a\x30.proto.services.tasks_svc.v1.GetPropertyResponse\"\x00\x12x\n\rGetProperties\x12\x31.proto.services.tasks_svc.v1.GetPropertiesRequest\x1a\x32.proto.services.tasks_svc.v1.GetPropertiesResponse\"\x00\x12{\n\x0eUpdateProperty\x12\x32.proto.services.tasks_svc.v1.UpdatePropertyRequest\x1a\x33.proto.services.tasks_svc.v1.UpdatePropertyResponse\"\x00\x12\x8a\x01\n\x13\x41ttachPropertyValue\x12\x37.proto.services.tasks_svc.v1.AttachPropertyValueRequest\x1a\x38.proto.services.tasks_svc.v1.AttachPropertyValueResponse\"\x00\x12\x9c\x01\n\x19GetAttachedPropertyValues\x12=.proto.services.tasks_svc.v1.GetAttachedPropertyValuesRequest\x1a>.proto.services.tasks_svc.v1.GetAttachedPropertyValuesResponse\"\x00\x42\xde\x01\n\x1f\x63om.proto.services.tasks_svc.v1B\x12PropertiesSvcProtoP\x01Z\x1cgen/proto/services/tasks-svc\xa2\x02\x03PST\xaa\x02\x1aProto.Services.TasksSvc.V1\xca\x02\x1aProto\\Services\\TasksSvc\\V1\xe2\x02&Proto\\Services\\TasksSvc\\V1\\GPBMetadata\xea\x02\x1dProto::Services::TasksSvc::V1b\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'proto.services.tasks_svc.v1.properties_svc_pb2', _globals)
if _descriptor._USE_C_DESCRIPTORS == False:
  _globals['DESCRIPTOR']._options = None
  _globals['DESCRIPTOR']._serialized_options = b'\n\037com.proto.services.tasks_svc.v1B\022PropertiesSvcProtoP\001Z\034gen/proto/services/tasks-svc\242\002\003PST\252\002\032Proto.Services.TasksSvc.V1\312\002\032Proto\\Services\\TasksSvc\\V1\342\002&Proto\\Services\\TasksSvc\\V1\\GPBMetadata\352\002\035Proto::Services::TasksSvc::V1'
  _globals['_SUBJECTTYPE']._serialized_start=4513
  _globals['_SUBJECTTYPE']._serialized_end=4582
  _globals['_FIELDTYPE']._serialized_start=4585
  _globals['_FIELDTYPE']._serialized_end=4763
  _globals['_CREATEPROPERTYSETREQUEST']._serialized_start=81
  _globals['_CREATEPROPERTYSETREQUEST']._serialized_end=159
  _globals['_CREATEPROPERTYSETRESPONSE']._serialized_start=161
  _globals['_CREATEPROPERTYSETRESPONSE']._serialized_end=228
  _globals['_UPDATEPROPERTYSETREQUEST']._serialized_start=231
  _globals['_UPDATEPROPERTYSETREQUEST']._serialized_end=404
  _globals['_UPDATEPROPERTYSETRESPONSE']._serialized_start=406
  _globals['_UPDATEPROPERTYSETRESPONSE']._serialized_end=433
  _globals['_DELETEPROPERTYSETREQUEST']._serialized_start=435
  _globals['_DELETEPROPERTYSETREQUEST']._serialized_end=484
  _globals['_DELETEPROPERTYSETRESPONSE']._serialized_start=486
  _globals['_DELETEPROPERTYSETRESPONSE']._serialized_end=513
  _globals['_CREATEPROPERTYREQUEST']._serialized_start=516
  _globals['_CREATEPROPERTYREQUEST']._serialized_end=996
  _globals['_CREATEPROPERTYREQUEST_SELECTOPTION']._serialized_start=880
  _globals['_CREATEPROPERTYREQUEST_SELECTOPTION']._serialized_end=969
  _globals['_CREATEPROPERTYRESPONSE']._serialized_start=998
  _globals['_CREATEPROPERTYRESPONSE']._serialized_end=1055
  _globals['_GETPROPERTYREQUEST']._serialized_start=1057
  _globals['_GETPROPERTYREQUEST']._serialized_end=1093
  _globals['_GETPROPERTYRESPONSE']._serialized_start=1096
  _globals['_GETPROPERTYRESPONSE']._serialized_end=1621
  _globals['_GETPROPERTYRESPONSE_SELECTOPTION']._serialized_start=880
  _globals['_GETPROPERTYRESPONSE_SELECTOPTION']._serialized_end=969
  _globals['_GETPROPERTIESREQUEST']._serialized_start=1623
  _globals['_GETPROPERTIESREQUEST']._serialized_end=1684
  _globals['_GETPROPERTIESRESPONSE']._serialized_start=1687
  _globals['_GETPROPERTIESRESPONSE']._serialized_end=2360
  _globals['_GETPROPERTIESRESPONSE_PROPERTY']._serialized_start=1806
  _globals['_GETPROPERTIESRESPONSE_PROPERTY']._serialized_end=2360
  _globals['_GETPROPERTIESRESPONSE_PROPERTY_SELECTOPTION']._serialized_start=2215
  _globals['_GETPROPERTIESRESPONSE_PROPERTY_SELECTOPTION']._serialized_end=2333
  _globals['_UPDATEPROPERTYREQUEST']._serialized_start=2363
  _globals['_UPDATEPROPERTYREQUEST']._serialized_end=3113
  _globals['_UPDATEPROPERTYREQUEST_SELECTOPTION']._serialized_start=2862
  _globals['_UPDATEPROPERTYREQUEST_SELECTOPTION']._serialized_end=3029
  _globals['_UPDATEPROPERTYRESPONSE']._serialized_start=3115
  _globals['_UPDATEPROPERTYRESPONSE']._serialized_end=3139
  _globals['_ATTACHPROPERTYVALUEREQUEST']._serialized_start=3142
  _globals['_ATTACHPROPERTYVALUEREQUEST']._serialized_end=3572
  _globals['_ATTACHPROPERTYVALUERESPONSE']._serialized_start=3574
  _globals['_ATTACHPROPERTYVALUERESPONSE']._serialized_end=3647
  _globals['_GETATTACHEDPROPERTYVALUESREQUEST']._serialized_start=3649
  _globals['_GETATTACHEDPROPERTYVALUESREQUEST']._serialized_end=3748
  _globals['_GETATTACHEDPROPERTYVALUESRESPONSE']._serialized_start=3751
  _globals['_GETATTACHEDPROPERTYVALUESRESPONSE']._serialized_end=4511
  _globals['_GETATTACHEDPROPERTYVALUESRESPONSE_VALUE']._serialized_start=3883
  _globals['_GETATTACHEDPROPERTYVALUESRESPONSE_VALUE']._serialized_end=4511
  _globals['_GETATTACHEDPROPERTYVALUESRESPONSE_VALUE_SET']._serialized_start=4437
  _globals['_GETATTACHEDPROPERTYVALUESRESPONSE_VALUE_SET']._serialized_end=4478
  _globals['_PROPERTIESSERVICE']._serialized_start=4766
  _globals['_PROPERTIESSERVICE']._serialized_end=5978
# @@protoc_insertion_point(module_scope)
