# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: proto/services/tasks_svc/v1/task_svc.proto
# Protobuf Python Version: 4.25.1
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
from google.protobuf.internal import builder as _builder
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n*proto/services/tasks_svc/v1/task_svc.proto\x12\x1bproto.services.tasks_svc.v1\"\'\n\x11\x43reateTaskRequest\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\"$\n\x12\x43reateTaskResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\" \n\x0eGetTaskRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"5\n\x0fGetTaskResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name2\xe6\x01\n\x0bTaskService\x12o\n\nCreateTask\x12..proto.services.tasks_svc.v1.CreateTaskRequest\x1a/.proto.services.tasks_svc.v1.CreateTaskResponse\"\x00\x12\x66\n\x07GetTask\x12+.proto.services.tasks_svc.v1.GetTaskRequest\x1a,.proto.services.tasks_svc.v1.GetTaskResponse\"\x00\x42\xd8\x01\n\x1f\x63om.proto.services.tasks_svc.v1B\x0cTaskSvcProtoP\x01Z\x1cgen/proto/services/tasks-svc\xa2\x02\x03PST\xaa\x02\x1aProto.Services.TasksSvc.V1\xca\x02\x1aProto\\Services\\TasksSvc\\V1\xe2\x02&Proto\\Services\\TasksSvc\\V1\\GPBMetadata\xea\x02\x1dProto::Services::TasksSvc::V1b\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'proto.services.tasks_svc.v1.task_svc_pb2', _globals)
if _descriptor._USE_C_DESCRIPTORS == False:
  _globals['DESCRIPTOR']._options = None
  _globals['DESCRIPTOR']._serialized_options = b'\n\037com.proto.services.tasks_svc.v1B\014TaskSvcProtoP\001Z\034gen/proto/services/tasks-svc\242\002\003PST\252\002\032Proto.Services.TasksSvc.V1\312\002\032Proto\\Services\\TasksSvc\\V1\342\002&Proto\\Services\\TasksSvc\\V1\\GPBMetadata\352\002\035Proto::Services::TasksSvc::V1'
  _globals['_CREATETASKREQUEST']._serialized_start=75
  _globals['_CREATETASKREQUEST']._serialized_end=114
  _globals['_CREATETASKRESPONSE']._serialized_start=116
  _globals['_CREATETASKRESPONSE']._serialized_end=152
  _globals['_GETTASKREQUEST']._serialized_start=154
  _globals['_GETTASKREQUEST']._serialized_end=186
  _globals['_GETTASKRESPONSE']._serialized_start=188
  _globals['_GETTASKRESPONSE']._serialized_end=241
  _globals['_TASKSERVICE']._serialized_start=244
  _globals['_TASKSERVICE']._serialized_end=474
# @@protoc_insertion_point(module_scope)
