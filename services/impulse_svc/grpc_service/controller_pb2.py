# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: controller.proto
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
from google.protobuf.internal import builder as _builder
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n\x10\x63ontroller.proto\x12\x02\x64\x62\"\x19\n\nGetRequest\x12\x0b\n\x03key\x18\x01 \x01(\t\"\x1c\n\x0bGetResponse\x12\r\n\x05value\x18\x01 \x01(\t\"(\n\nSetRequest\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t\"\x19\n\x0bSetResponse\x12\n\n\x02ok\x18\x01 \x01(\x08\"\x1c\n\rDeleteRequest\x12\x0b\n\x03key\x18\x01 \x01(\t\"\x1c\n\x0e\x44\x65leteResponse\x12\n\n\x02ok\x18\x01 \x01(\x08\x32\x93\x01\n\nController\x12(\n\x03Get\x12\x0e.db.GetRequest\x1a\x0f.db.GetResponse\"\x00\x12(\n\x03Set\x12\x0e.db.SetRequest\x1a\x0f.db.SetResponse\"\x00\x12\x31\n\x06\x44\x65lete\x12\x11.db.DeleteRequest\x1a\x12.db.DeleteResponse\"\x00\x62\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'controller_pb2', _globals)
if _descriptor._USE_C_DESCRIPTORS == False:

  DESCRIPTOR._options = None
  _globals['_GETREQUEST']._serialized_start=24
  _globals['_GETREQUEST']._serialized_end=49
  _globals['_GETRESPONSE']._serialized_start=51
  _globals['_GETRESPONSE']._serialized_end=79
  _globals['_SETREQUEST']._serialized_start=81
  _globals['_SETREQUEST']._serialized_end=121
  _globals['_SETRESPONSE']._serialized_start=123
  _globals['_SETRESPONSE']._serialized_end=148
  _globals['_DELETEREQUEST']._serialized_start=150
  _globals['_DELETEREQUEST']._serialized_end=178
  _globals['_DELETERESPONSE']._serialized_start=180
  _globals['_DELETERESPONSE']._serialized_end=208
  _globals['_CONTROLLER']._serialized_start=211
  _globals['_CONTROLLER']._serialized_end=358
# @@protoc_insertion_point(module_scope)
