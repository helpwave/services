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


from google.protobuf import timestamp_pb2 as google_dot_protobuf_dot_timestamp__pb2


DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n*proto/services/tasks_svc/v1/task_svc.proto\x12\x1bproto.services.tasks_svc.v1\x1a\x1fgoogle/protobuf/timestamp.proto\"\xc0\x02\n\x11\x43reateTaskRequest\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12%\n\x0b\x64\x65scription\x18\x02 \x01(\tH\x00R\x0b\x64\x65scription\x88\x01\x01\x12\x1d\n\npatient_id\x18\x03 \x01(\tR\tpatientId\x12\x1b\n\x06public\x18\x04 \x01(\x08H\x01R\x06public\x88\x01\x01\x12\x31\n\x06\x64ue_at\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampR\x05\x64ueAt\x12S\n\x0einitial_status\x18\x06 \x01(\x0e\x32\'.proto.services.tasks_svc.v1.TaskStatusH\x02R\rinitialStatus\x88\x01\x01\x42\x0e\n\x0c_descriptionB\t\n\x07_publicB\x11\n\x0f_initial_status\"$\n\x12\x43reateTaskResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\xbf\x01\n\x11UpdateTaskRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x17\n\x04name\x18\x02 \x01(\tH\x00R\x04name\x88\x01\x01\x12%\n\x0b\x64\x65scription\x18\x03 \x01(\tH\x01R\x0b\x64\x65scription\x88\x01\x01\x12\x36\n\x06\x64ue_at\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampH\x02R\x05\x64ueAt\x88\x01\x01\x42\x07\n\x05_nameB\x0e\n\x0c_descriptionB\t\n\x07_due_at\"\x14\n\x12UpdateTaskResponse\"$\n\x12PublishTaskRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x15\n\x13PublishTaskResponse\" \n\x0eGetTaskRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x8f\x03\n\x0fGetTaskResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12 \n\x0b\x64\x65scription\x18\x03 \x01(\tR\x0b\x64\x65scription\x12%\n\x0e\x61ssigned_users\x18\x04 \x03(\tR\rassignedUsers\x12P\n\x08subtasks\x18\x05 \x03(\x0b\x32\x34.proto.services.tasks_svc.v1.GetTaskResponse.SubtaskR\x08subtasks\x12?\n\x06status\x18\x06 \x01(\x0e\x32\'.proto.services.tasks_svc.v1.TaskStatusR\x06status\x12\x39\n\ncreated_at\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampR\tcreatedAt\x1a\x41\n\x07Subtask\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12\x12\n\x04\x64one\x18\x03 \x01(\x08R\x04\x64one\"E\n\x11\x41ssignTaskRequest\x12\x17\n\x07task_id\x18\x01 \x01(\tR\x06taskId\x12\x17\n\x07user_id\x18\x02 \x01(\tR\x06userId\"\x14\n\x12\x41ssignTaskResponse\"\xa3\x01\n\x14\x43reateSubtaskRequest\x12\x17\n\x07task_id\x18\x01 \x01(\tR\x06taskId\x12S\n\x07subtask\x18\x02 \x01(\x0b\x32\x39.proto.services.tasks_svc.v1.CreateSubtaskRequest.SubtaskR\x07subtask\x1a\x1d\n\x07Subtask\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\"6\n\x15\x43reateSubtaskResponse\x12\x1d\n\nsubtask_id\x18\x01 \x01(\tR\tsubtaskId\"\xd0\x01\n\x14UpdateSubtaskRequest\x12\x17\n\x07task_id\x18\x01 \x01(\tR\x06taskId\x12\x1d\n\nsubtask_id\x18\x02 \x01(\tR\tsubtaskId\x12S\n\x07subtask\x18\x03 \x01(\x0b\x32\x39.proto.services.tasks_svc.v1.UpdateSubtaskRequest.SubtaskR\x07subtask\x1a+\n\x07Subtask\x12\x17\n\x04name\x18\x01 \x01(\tH\x00R\x04name\x88\x01\x01\x42\x07\n\x05_name\"\x17\n\x15UpdateSubtaskResponse\"P\n\x16\x43ompleteSubtaskRequest\x12\x17\n\x07task_id\x18\x01 \x01(\tR\x06taskId\x12\x1d\n\nsubtask_id\x18\x02 \x01(\tR\tsubtaskId\"\x19\n\x17\x43ompleteSubtaskResponse\"R\n\x18UncompleteSubtaskRequest\x12\x17\n\x07task_id\x18\x01 \x01(\tR\x06taskId\x12\x1d\n\nsubtask_id\x18\x02 \x01(\tR\tsubtaskId\"\x1b\n\x19UncompleteSubtaskResponse\"N\n\x14\x44\x65leteSubtaskRequest\x12\x17\n\x07task_id\x18\x01 \x01(\tR\x06taskId\x12\x1d\n\nsubtask_id\x18\x02 \x01(\tR\tsubtaskId\"\x17\n\x15\x44\x65leteSubtaskResponse*r\n\nTaskStatus\x12\x1b\n\x17TASK_STATUS_UNSPECIFIED\x10\x00\x12\x14\n\x10TASK_STATUS_TODO\x10\x01\x12\x1b\n\x17TASK_STATUS_IN_PROGRESS\x10\x02\x12\x14\n\x10TASK_STATUS_DONE\x10\x03\x32\xb1\t\n\x0bTaskService\x12o\n\nCreateTask\x12..proto.services.tasks_svc.v1.CreateTaskRequest\x1a/.proto.services.tasks_svc.v1.CreateTaskResponse\"\x00\x12o\n\nUpdateTask\x12..proto.services.tasks_svc.v1.UpdateTaskRequest\x1a/.proto.services.tasks_svc.v1.UpdateTaskResponse\"\x00\x12r\n\x0bPublishTask\x12/.proto.services.tasks_svc.v1.PublishTaskRequest\x1a\x30.proto.services.tasks_svc.v1.PublishTaskResponse\"\x00\x12\x66\n\x07GetTask\x12+.proto.services.tasks_svc.v1.GetTaskRequest\x1a,.proto.services.tasks_svc.v1.GetTaskResponse\"\x00\x12o\n\nAssignTask\x12..proto.services.tasks_svc.v1.AssignTaskRequest\x1a/.proto.services.tasks_svc.v1.AssignTaskResponse\"\x00\x12x\n\rCreateSubtask\x12\x31.proto.services.tasks_svc.v1.CreateSubtaskRequest\x1a\x32.proto.services.tasks_svc.v1.CreateSubtaskResponse\"\x00\x12x\n\rUpdateSubtask\x12\x31.proto.services.tasks_svc.v1.UpdateSubtaskRequest\x1a\x32.proto.services.tasks_svc.v1.UpdateSubtaskResponse\"\x00\x12~\n\x0f\x43ompleteSubtask\x12\x33.proto.services.tasks_svc.v1.CompleteSubtaskRequest\x1a\x34.proto.services.tasks_svc.v1.CompleteSubtaskResponse\"\x00\x12\x84\x01\n\x11UncompleteSubtask\x12\x35.proto.services.tasks_svc.v1.UncompleteSubtaskRequest\x1a\x36.proto.services.tasks_svc.v1.UncompleteSubtaskResponse\"\x00\x12x\n\rDeleteSubtask\x12\x31.proto.services.tasks_svc.v1.DeleteSubtaskRequest\x1a\x32.proto.services.tasks_svc.v1.DeleteSubtaskResponse\"\x00\x42\xd8\x01\n\x1f\x63om.proto.services.tasks_svc.v1B\x0cTaskSvcProtoP\x01Z\x1cgen/proto/services/tasks-svc\xa2\x02\x03PST\xaa\x02\x1aProto.Services.TasksSvc.V1\xca\x02\x1aProto\\Services\\TasksSvc\\V1\xe2\x02&Proto\\Services\\TasksSvc\\V1\\GPBMetadata\xea\x02\x1dProto::Services::TasksSvc::V1b\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'proto.services.tasks_svc.v1.task_svc_pb2', _globals)
if _descriptor._USE_C_DESCRIPTORS == False:
  _globals['DESCRIPTOR']._options = None
  _globals['DESCRIPTOR']._serialized_options = b'\n\037com.proto.services.tasks_svc.v1B\014TaskSvcProtoP\001Z\034gen/proto/services/tasks-svc\242\002\003PST\252\002\032Proto.Services.TasksSvc.V1\312\002\032Proto\\Services\\TasksSvc\\V1\342\002&Proto\\Services\\TasksSvc\\V1\\GPBMetadata\352\002\035Proto::Services::TasksSvc::V1'
  _globals['_TASKSTATUS']._serialized_start=2060
  _globals['_TASKSTATUS']._serialized_end=2174
  _globals['_CREATETASKREQUEST']._serialized_start=109
  _globals['_CREATETASKREQUEST']._serialized_end=429
  _globals['_CREATETASKRESPONSE']._serialized_start=431
  _globals['_CREATETASKRESPONSE']._serialized_end=467
  _globals['_UPDATETASKREQUEST']._serialized_start=470
  _globals['_UPDATETASKREQUEST']._serialized_end=661
  _globals['_UPDATETASKRESPONSE']._serialized_start=663
  _globals['_UPDATETASKRESPONSE']._serialized_end=683
  _globals['_PUBLISHTASKREQUEST']._serialized_start=685
  _globals['_PUBLISHTASKREQUEST']._serialized_end=721
  _globals['_PUBLISHTASKRESPONSE']._serialized_start=723
  _globals['_PUBLISHTASKRESPONSE']._serialized_end=744
  _globals['_GETTASKREQUEST']._serialized_start=746
  _globals['_GETTASKREQUEST']._serialized_end=778
  _globals['_GETTASKRESPONSE']._serialized_start=781
  _globals['_GETTASKRESPONSE']._serialized_end=1180
  _globals['_GETTASKRESPONSE_SUBTASK']._serialized_start=1115
  _globals['_GETTASKRESPONSE_SUBTASK']._serialized_end=1180
  _globals['_ASSIGNTASKREQUEST']._serialized_start=1182
  _globals['_ASSIGNTASKREQUEST']._serialized_end=1251
  _globals['_ASSIGNTASKRESPONSE']._serialized_start=1253
  _globals['_ASSIGNTASKRESPONSE']._serialized_end=1273
  _globals['_CREATESUBTASKREQUEST']._serialized_start=1276
  _globals['_CREATESUBTASKREQUEST']._serialized_end=1439
  _globals['_CREATESUBTASKREQUEST_SUBTASK']._serialized_start=1410
  _globals['_CREATESUBTASKREQUEST_SUBTASK']._serialized_end=1439
  _globals['_CREATESUBTASKRESPONSE']._serialized_start=1441
  _globals['_CREATESUBTASKRESPONSE']._serialized_end=1495
  _globals['_UPDATESUBTASKREQUEST']._serialized_start=1498
  _globals['_UPDATESUBTASKREQUEST']._serialized_end=1706
  _globals['_UPDATESUBTASKREQUEST_SUBTASK']._serialized_start=1663
  _globals['_UPDATESUBTASKREQUEST_SUBTASK']._serialized_end=1706
  _globals['_UPDATESUBTASKRESPONSE']._serialized_start=1708
  _globals['_UPDATESUBTASKRESPONSE']._serialized_end=1731
  _globals['_COMPLETESUBTASKREQUEST']._serialized_start=1733
  _globals['_COMPLETESUBTASKREQUEST']._serialized_end=1813
  _globals['_COMPLETESUBTASKRESPONSE']._serialized_start=1815
  _globals['_COMPLETESUBTASKRESPONSE']._serialized_end=1840
  _globals['_UNCOMPLETESUBTASKREQUEST']._serialized_start=1842
  _globals['_UNCOMPLETESUBTASKREQUEST']._serialized_end=1924
  _globals['_UNCOMPLETESUBTASKRESPONSE']._serialized_start=1926
  _globals['_UNCOMPLETESUBTASKRESPONSE']._serialized_end=1953
  _globals['_DELETESUBTASKREQUEST']._serialized_start=1955
  _globals['_DELETESUBTASKREQUEST']._serialized_end=2033
  _globals['_DELETESUBTASKRESPONSE']._serialized_start=2035
  _globals['_DELETESUBTASKRESPONSE']._serialized_end=2058
  _globals['_TASKSERVICE']._serialized_start=2177
  _globals['_TASKSERVICE']._serialized_end=3378
# @@protoc_insertion_point(module_scope)
