# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: libs/events/v1/user_events.proto
# Protobuf Python Version: 4.25.2
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
from google.protobuf.internal import builder as _builder
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n libs/events/v1/user_events.proto\x12\x0elibs.events.v1\"k\n\x13UserRegisteredEvent\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x14\n\x05\x65mail\x18\x02 \x01(\tR\x05\x65mail\x12\x1a\n\x08nickname\x18\x03 \x01(\tR\x08nickname\x12\x12\n\x04name\x18\x04 \x01(\tR\x04name\"h\n\x10UserCreatedEvent\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x14\n\x05\x65mail\x18\x02 \x01(\tR\x05\x65mail\x12\x1a\n\x08nickname\x18\x03 \x01(\tR\x08nickname\x12\x12\n\x04name\x18\x04 \x01(\tR\x04name\"\x97\x01\n\x10UserUpdatedEvent\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x19\n\x05\x65mail\x18\x02 \x01(\tH\x00R\x05\x65mail\x88\x01\x01\x12\x1f\n\x08nickname\x18\x03 \x01(\tH\x01R\x08nickname\x88\x01\x01\x12\x17\n\x04name\x18\x04 \x01(\tH\x02R\x04name\x88\x01\x01\x42\x08\n\x06_emailB\x0b\n\t_nicknameB\x07\n\x05_nameB\x96\x01\n\x12\x63om.libs.events.v1B\x0fUserEventsProtoP\x01Z\x15gen/proto/libs/events\xa2\x02\x03LEX\xaa\x02\x0eLibs.Events.V1\xca\x02\x0eLibs\\Events\\V1\xe2\x02\x1aLibs\\Events\\V1\\GPBMetadata\xea\x02\x10Libs::Events::V1b\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'libs.events.v1.user_events_pb2', _globals)
if _descriptor._USE_C_DESCRIPTORS == False:
  _globals['DESCRIPTOR']._options = None
  _globals['DESCRIPTOR']._serialized_options = b'\n\022com.libs.events.v1B\017UserEventsProtoP\001Z\025gen/proto/libs/events\242\002\003LEX\252\002\016Libs.Events.V1\312\002\016Libs\\Events\\V1\342\002\032Libs\\Events\\V1\\GPBMetadata\352\002\020Libs::Events::V1'
  _globals['_USERREGISTEREDEVENT']._serialized_start=52
  _globals['_USERREGISTEREDEVENT']._serialized_end=159
  _globals['_USERCREATEDEVENT']._serialized_start=161
  _globals['_USERCREATEDEVENT']._serialized_end=265
  _globals['_USERUPDATEDEVENT']._serialized_start=268
  _globals['_USERUPDATEDEVENT']._serialized_end=419
# @@protoc_insertion_point(module_scope)
