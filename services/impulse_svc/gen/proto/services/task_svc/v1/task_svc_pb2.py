# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: proto/services/task_svc/v1/task_svc.proto
# Protobuf Python Version: 4.25.1
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
from google.protobuf.internal import builder as _builder
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


from google.protobuf import timestamp_pb2 as google_dot_protobuf_dot_timestamp__pb2


DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n)proto/services/task_svc/v1/task_svc.proto\x12\x1aproto.services.task_svc.v1\x1a\x1fgoogle/protobuf/timestamp.proto\"\xaf\x02\n\x11\x43reateTaskRequest\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12%\n\x0b\x64\x65scription\x18\x02 \x01(\tH\x00R\x0b\x64\x65scription\x88\x01\x01\x12\x1d\n\npatient_id\x18\x03 \x01(\tR\tpatientId\x12\x16\n\x06public\x18\x04 \x01(\x08R\x06public\x12\x31\n\x06\x64ue_at\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampR\x05\x64ueAt\x12R\n\x0einitial_status\x18\x06 \x01(\x0e\x32&.proto.services.task_svc.v1.TaskStatusH\x01R\rinitialStatus\x88\x01\x01\x42\x0e\n\x0c_descriptionB\x11\n\x0f_initial_status\"$\n\x12\x43reateTaskResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\" \n\x0eGetTaskRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x85\x05\n\x0fGetTaskResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12 \n\x0b\x64\x65scription\x18\x03 \x01(\tR\x0b\x64\x65scription\x12>\n\x06status\x18\x04 \x01(\x0e\x32&.proto.services.task_svc.v1.TaskStatusR\x06status\x12(\n\x10\x61ssigned_user_id\x18\x05 \x01(\tR\x0e\x61ssignedUserId\x12M\n\x07patient\x18\x06 \x01(\x0b\x32\x33.proto.services.task_svc.v1.GetTaskResponse.PatientR\x07patient\x12\x16\n\x06public\x18\x07 \x01(\x08R\x06public\x12\x31\n\x06\x64ue_at\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampR\x05\x64ueAt\x12\x1d\n\ncreated_by\x18\t \x01(\tR\tcreatedBy\x12O\n\x08subtasks\x18\n \x03(\x0b\x32\x33.proto.services.task_svc.v1.GetTaskResponse.SubTaskR\x08subtasks\x12\'\n\x0forganization_id\x18\x0b \x01(\tR\x0eorganizationId\x1a`\n\x07SubTask\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12\x12\n\x04\x64one\x18\x03 \x01(\x08R\x04\x64one\x12\x1d\n\ncreated_by\x18\x04 \x01(\tR\tcreatedBy\x1a-\n\x07Patient\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\"9\n\x18GetTasksByPatientRequest\x12\x1d\n\npatient_id\x18\x01 \x01(\tR\tpatientId\"\x8b\x05\n\x19GetTasksByPatientResponse\x12P\n\x05tasks\x18\x01 \x03(\x0b\x32:.proto.services.task_svc.v1.GetTasksByPatientResponse.TaskR\x05tasks\x1a\x9b\x04\n\x04Task\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12 \n\x0b\x64\x65scription\x18\x03 \x01(\tR\x0b\x64\x65scription\x12>\n\x06status\x18\x04 \x01(\x0e\x32&.proto.services.task_svc.v1.TaskStatusR\x06status\x12-\n\x10\x61ssigned_user_id\x18\x05 \x01(\tH\x00R\x0e\x61ssignedUserId\x88\x01\x01\x12\x1d\n\npatient_id\x18\x06 \x01(\tR\tpatientId\x12\x16\n\x06public\x18\x07 \x01(\x08R\x06public\x12\x31\n\x06\x64ue_at\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampR\x05\x64ueAt\x12\x1d\n\ncreated_by\x18\t \x01(\tR\tcreatedBy\x12^\n\x08subtasks\x18\n \x03(\x0b\x32\x42.proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTaskR\x08subtasks\x1a`\n\x07SubTask\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12\x12\n\x04\x64one\x18\x03 \x01(\x08R\x04\x64one\x12\x1d\n\ncreated_by\x18\x04 \x01(\tR\tcreatedByB\x13\n\x11_assigned_user_id\"G\n&GetTasksByPatientSortedByStatusRequest\x12\x1d\n\npatient_id\x18\x01 \x01(\tR\tpatientId\"\xbc\x06\n\'GetTasksByPatientSortedByStatusResponse\x12\\\n\x04todo\x18\x01 \x03(\x0b\x32H.proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.TaskR\x04todo\x12i\n\x0bin_progress\x18\x02 \x03(\x0b\x32H.proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.TaskR\ninProgress\x12\\\n\x04\x64one\x18\x03 \x03(\x0b\x32H.proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.TaskR\x04\x64one\x1a\xe9\x03\n\x04Task\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12 \n\x0b\x64\x65scription\x18\x03 \x01(\tR\x0b\x64\x65scription\x12-\n\x10\x61ssigned_user_id\x18\x05 \x01(\tH\x00R\x0e\x61ssignedUserId\x88\x01\x01\x12\x1d\n\npatient_id\x18\x06 \x01(\tR\tpatientId\x12\x16\n\x06public\x18\x07 \x01(\x08R\x06public\x12\x31\n\x06\x64ue_at\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampR\x05\x64ueAt\x12\x1d\n\ncreated_by\x18\t \x01(\tR\tcreatedBy\x12l\n\x08subtasks\x18\n \x03(\x0b\x32P.proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTaskR\x08subtasks\x1a`\n\x07SubTask\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12\x12\n\x04\x64one\x18\x03 \x01(\x08R\x04\x64one\x12\x1d\n\ncreated_by\x18\x04 \x01(\tR\tcreatedByB\x13\n\x11_assigned_user_id\"\x19\n\x17GetAssignedTasksRequest\"\xdb\x05\n\x18GetAssignedTasksResponse\x12O\n\x05tasks\x18\x01 \x03(\x0b\x32\x39.proto.services.task_svc.v1.GetAssignedTasksResponse.TaskR\x05tasks\x1a\xed\x04\n\x04Task\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12 \n\x0b\x64\x65scription\x18\x03 \x01(\tR\x0b\x64\x65scription\x12>\n\x06status\x18\x04 \x01(\x0e\x32&.proto.services.task_svc.v1.TaskStatusR\x06status\x12(\n\x10\x61ssigned_user_id\x18\x05 \x01(\tR\x0e\x61ssignedUserId\x12[\n\x07patient\x18\x06 \x01(\x0b\x32\x41.proto.services.task_svc.v1.GetAssignedTasksResponse.Task.PatientR\x07patient\x12\x16\n\x06public\x18\x07 \x01(\x08R\x06public\x12\x31\n\x06\x64ue_at\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampR\x05\x64ueAt\x12\x1d\n\ncreated_by\x18\t \x01(\tR\tcreatedBy\x12]\n\x08subtasks\x18\n \x03(\x0b\x32\x41.proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTaskR\x08subtasks\x1a-\n\x07Patient\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x1a`\n\x07SubTask\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12\x12\n\x04\x64one\x18\x03 \x01(\x08R\x04\x64one\x12\x1d\n\ncreated_by\x18\x04 \x01(\tR\tcreatedBy\"\xe7\x01\n\x11UpdateTaskRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x17\n\x04name\x18\x02 \x01(\tH\x00R\x04name\x88\x01\x01\x12%\n\x0b\x64\x65scription\x18\x03 \x01(\tH\x01R\x0b\x64\x65scription\x88\x01\x01\x12\x36\n\x06\x64ue_at\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampH\x02R\x05\x64ueAt\x88\x01\x01\x12\x1b\n\x06public\x18\x05 \x01(\x08H\x03R\x06public\x88\x01\x01\x42\x07\n\x05_nameB\x0e\n\x0c_descriptionB\t\n\x07_due_atB\t\n\x07_public\"\x14\n\x12UpdateTaskResponse\"b\n\x11\x41\x64\x64SubTaskRequest\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12\x17\n\x07task_id\x18\x02 \x01(\tR\x06taskId\x12\x17\n\x04\x64one\x18\x03 \x01(\x08H\x00R\x04\x64one\x88\x01\x01\x42\x07\n\x05_done\"$\n\x12\x41\x64\x64SubTaskResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"&\n\x14RemoveSubTaskRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x17\n\x15RemoveSubTaskResponse\"H\n\x14UpdateSubTaskRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x17\n\x04name\x18\x02 \x01(\tH\x00R\x04name\x88\x01\x01\x42\x07\n\x05_name\"\x17\n\x15UpdateSubTaskResponse\"&\n\x14SubTaskToToDoRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x17\n\x15SubTaskToToDoResponse\"&\n\x14SubTaskToDoneRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x17\n\x15SubTaskToDoneResponse\"#\n\x11TaskToToDoRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x14\n\x12TaskToToDoResponse\")\n\x17TaskToInProgressRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x1a\n\x18TaskToInProgressResponse\"#\n\x11TaskToDoneRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x14\n\x12TaskToDoneResponse\"B\n\x17\x41ssignTaskToUserRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x17\n\x07user_id\x18\x02 \x01(\tR\x06userId\"\x1a\n\x18\x41ssignTaskToUserResponse\"-\n\x1bUnassignTaskFromUserRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x1e\n\x1cUnassignTaskFromUserResponse\"$\n\x12PublishTaskRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x15\n\x13PublishTaskResponse\"&\n\x14UnpublishTaskRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x17\n\x15UnpublishTaskResponse\"#\n\x11\x44\x65leteTaskRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x14\n\x12\x44\x65leteTaskResponse*r\n\nTaskStatus\x12\x1b\n\x17TASK_STATUS_UNSPECIFIED\x10\x00\x12\x14\n\x10TASK_STATUS_TODO\x10\x01\x12\x1b\n\x17TASK_STATUS_IN_PROGRESS\x10\x02\x12\x14\n\x10TASK_STATUS_DONE\x10\x03\x32\x9c\x12\n\x0bTaskService\x12m\n\nCreateTask\x12-.proto.services.task_svc.v1.CreateTaskRequest\x1a..proto.services.task_svc.v1.CreateTaskResponse\"\x00\x12\x64\n\x07GetTask\x12*.proto.services.task_svc.v1.GetTaskRequest\x1a+.proto.services.task_svc.v1.GetTaskResponse\"\x00\x12\x82\x01\n\x11GetTasksByPatient\x12\x34.proto.services.task_svc.v1.GetTasksByPatientRequest\x1a\x35.proto.services.task_svc.v1.GetTasksByPatientResponse\"\x00\x12\xac\x01\n\x1fGetTasksByPatientSortedByStatus\x12\x42.proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest\x1a\x43.proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse\"\x00\x12\x7f\n\x10GetAssignedTasks\x12\x33.proto.services.task_svc.v1.GetAssignedTasksRequest\x1a\x34.proto.services.task_svc.v1.GetAssignedTasksResponse\"\x00\x12m\n\nUpdateTask\x12-.proto.services.task_svc.v1.UpdateTaskRequest\x1a..proto.services.task_svc.v1.UpdateTaskResponse\"\x00\x12m\n\nAddSubTask\x12-.proto.services.task_svc.v1.AddSubTaskRequest\x1a..proto.services.task_svc.v1.AddSubTaskResponse\"\x00\x12v\n\rRemoveSubTask\x12\x30.proto.services.task_svc.v1.RemoveSubTaskRequest\x1a\x31.proto.services.task_svc.v1.RemoveSubTaskResponse\"\x00\x12v\n\rUpdateSubTask\x12\x30.proto.services.task_svc.v1.UpdateSubTaskRequest\x1a\x31.proto.services.task_svc.v1.UpdateSubTaskResponse\"\x00\x12v\n\rSubTaskToToDo\x12\x30.proto.services.task_svc.v1.SubTaskToToDoRequest\x1a\x31.proto.services.task_svc.v1.SubTaskToToDoResponse\"\x00\x12v\n\rSubTaskToDone\x12\x30.proto.services.task_svc.v1.SubTaskToDoneRequest\x1a\x31.proto.services.task_svc.v1.SubTaskToDoneResponse\"\x00\x12m\n\nTaskToToDo\x12-.proto.services.task_svc.v1.TaskToToDoRequest\x1a..proto.services.task_svc.v1.TaskToToDoResponse\"\x00\x12\x7f\n\x10TaskToInProgress\x12\x33.proto.services.task_svc.v1.TaskToInProgressRequest\x1a\x34.proto.services.task_svc.v1.TaskToInProgressResponse\"\x00\x12m\n\nTaskToDone\x12-.proto.services.task_svc.v1.TaskToDoneRequest\x1a..proto.services.task_svc.v1.TaskToDoneResponse\"\x00\x12\x7f\n\x10\x41ssignTaskToUser\x12\x33.proto.services.task_svc.v1.AssignTaskToUserRequest\x1a\x34.proto.services.task_svc.v1.AssignTaskToUserResponse\"\x00\x12\x8b\x01\n\x14UnassignTaskFromUser\x12\x37.proto.services.task_svc.v1.UnassignTaskFromUserRequest\x1a\x38.proto.services.task_svc.v1.UnassignTaskFromUserResponse\"\x00\x12p\n\x0bPublishTask\x12..proto.services.task_svc.v1.PublishTaskRequest\x1a/.proto.services.task_svc.v1.PublishTaskResponse\"\x00\x12v\n\rUnpublishTask\x12\x30.proto.services.task_svc.v1.UnpublishTaskRequest\x1a\x31.proto.services.task_svc.v1.UnpublishTaskResponse\"\x00\x12m\n\nDeleteTask\x12-.proto.services.task_svc.v1.DeleteTaskRequest\x1a..proto.services.task_svc.v1.DeleteTaskResponse\"\x00\x42\xd2\x01\n\x1e\x63om.proto.services.task_svc.v1B\x0cTaskSvcProtoP\x01Z\x1bgen/proto/services/task-svc\xa2\x02\x03PST\xaa\x02\x19Proto.Services.TaskSvc.V1\xca\x02\x19Proto\\Services\\TaskSvc\\V1\xe2\x02%Proto\\Services\\TaskSvc\\V1\\GPBMetadata\xea\x02\x1cProto::Services::TaskSvc::V1b\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'proto.services.task_svc.v1.task_svc_pb2', _globals)
if _descriptor._USE_C_DESCRIPTORS == False:
  _globals['DESCRIPTOR']._options = None
  _globals['DESCRIPTOR']._serialized_options = b'\n\036com.proto.services.task_svc.v1B\014TaskSvcProtoP\001Z\033gen/proto/services/task-svc\242\002\003PST\252\002\031Proto.Services.TaskSvc.V1\312\002\031Proto\\Services\\TaskSvc\\V1\342\002%Proto\\Services\\TaskSvc\\V1\\GPBMetadata\352\002\034Proto::Services::TaskSvc::V1'
  _globals['_TASKSTATUS']._serialized_start=4747
  _globals['_TASKSTATUS']._serialized_end=4861
  _globals['_CREATETASKREQUEST']._serialized_start=107
  _globals['_CREATETASKREQUEST']._serialized_end=410
  _globals['_CREATETASKRESPONSE']._serialized_start=412
  _globals['_CREATETASKRESPONSE']._serialized_end=448
  _globals['_GETTASKREQUEST']._serialized_start=450
  _globals['_GETTASKREQUEST']._serialized_end=482
  _globals['_GETTASKRESPONSE']._serialized_start=485
  _globals['_GETTASKRESPONSE']._serialized_end=1130
  _globals['_GETTASKRESPONSE_SUBTASK']._serialized_start=987
  _globals['_GETTASKRESPONSE_SUBTASK']._serialized_end=1083
  _globals['_GETTASKRESPONSE_PATIENT']._serialized_start=1085
  _globals['_GETTASKRESPONSE_PATIENT']._serialized_end=1130
  _globals['_GETTASKSBYPATIENTREQUEST']._serialized_start=1132
  _globals['_GETTASKSBYPATIENTREQUEST']._serialized_end=1189
  _globals['_GETTASKSBYPATIENTRESPONSE']._serialized_start=1192
  _globals['_GETTASKSBYPATIENTRESPONSE']._serialized_end=1843
  _globals['_GETTASKSBYPATIENTRESPONSE_TASK']._serialized_start=1304
  _globals['_GETTASKSBYPATIENTRESPONSE_TASK']._serialized_end=1843
  _globals['_GETTASKSBYPATIENTRESPONSE_TASK_SUBTASK']._serialized_start=987
  _globals['_GETTASKSBYPATIENTRESPONSE_TASK_SUBTASK']._serialized_end=1083
  _globals['_GETTASKSBYPATIENTSORTEDBYSTATUSREQUEST']._serialized_start=1845
  _globals['_GETTASKSBYPATIENTSORTEDBYSTATUSREQUEST']._serialized_end=1916
  _globals['_GETTASKSBYPATIENTSORTEDBYSTATUSRESPONSE']._serialized_start=1919
  _globals['_GETTASKSBYPATIENTSORTEDBYSTATUSRESPONSE']._serialized_end=2747
  _globals['_GETTASKSBYPATIENTSORTEDBYSTATUSRESPONSE_TASK']._serialized_start=2258
  _globals['_GETTASKSBYPATIENTSORTEDBYSTATUSRESPONSE_TASK']._serialized_end=2747
  _globals['_GETTASKSBYPATIENTSORTEDBYSTATUSRESPONSE_TASK_SUBTASK']._serialized_start=987
  _globals['_GETTASKSBYPATIENTSORTEDBYSTATUSRESPONSE_TASK_SUBTASK']._serialized_end=1083
  _globals['_GETASSIGNEDTASKSREQUEST']._serialized_start=2749
  _globals['_GETASSIGNEDTASKSREQUEST']._serialized_end=2774
  _globals['_GETASSIGNEDTASKSRESPONSE']._serialized_start=2777
  _globals['_GETASSIGNEDTASKSRESPONSE']._serialized_end=3508
  _globals['_GETASSIGNEDTASKSRESPONSE_TASK']._serialized_start=2887
  _globals['_GETASSIGNEDTASKSRESPONSE_TASK']._serialized_end=3508
  _globals['_GETASSIGNEDTASKSRESPONSE_TASK_PATIENT']._serialized_start=1085
  _globals['_GETASSIGNEDTASKSRESPONSE_TASK_PATIENT']._serialized_end=1130
  _globals['_GETASSIGNEDTASKSRESPONSE_TASK_SUBTASK']._serialized_start=987
  _globals['_GETASSIGNEDTASKSRESPONSE_TASK_SUBTASK']._serialized_end=1083
  _globals['_UPDATETASKREQUEST']._serialized_start=3511
  _globals['_UPDATETASKREQUEST']._serialized_end=3742
  _globals['_UPDATETASKRESPONSE']._serialized_start=3744
  _globals['_UPDATETASKRESPONSE']._serialized_end=3764
  _globals['_ADDSUBTASKREQUEST']._serialized_start=3766
  _globals['_ADDSUBTASKREQUEST']._serialized_end=3864
  _globals['_ADDSUBTASKRESPONSE']._serialized_start=3866
  _globals['_ADDSUBTASKRESPONSE']._serialized_end=3902
  _globals['_REMOVESUBTASKREQUEST']._serialized_start=3904
  _globals['_REMOVESUBTASKREQUEST']._serialized_end=3942
  _globals['_REMOVESUBTASKRESPONSE']._serialized_start=3944
  _globals['_REMOVESUBTASKRESPONSE']._serialized_end=3967
  _globals['_UPDATESUBTASKREQUEST']._serialized_start=3969
  _globals['_UPDATESUBTASKREQUEST']._serialized_end=4041
  _globals['_UPDATESUBTASKRESPONSE']._serialized_start=4043
  _globals['_UPDATESUBTASKRESPONSE']._serialized_end=4066
  _globals['_SUBTASKTOTODOREQUEST']._serialized_start=4068
  _globals['_SUBTASKTOTODOREQUEST']._serialized_end=4106
  _globals['_SUBTASKTOTODORESPONSE']._serialized_start=4108
  _globals['_SUBTASKTOTODORESPONSE']._serialized_end=4131
  _globals['_SUBTASKTODONEREQUEST']._serialized_start=4133
  _globals['_SUBTASKTODONEREQUEST']._serialized_end=4171
  _globals['_SUBTASKTODONERESPONSE']._serialized_start=4173
  _globals['_SUBTASKTODONERESPONSE']._serialized_end=4196
  _globals['_TASKTOTODOREQUEST']._serialized_start=4198
  _globals['_TASKTOTODOREQUEST']._serialized_end=4233
  _globals['_TASKTOTODORESPONSE']._serialized_start=4235
  _globals['_TASKTOTODORESPONSE']._serialized_end=4255
  _globals['_TASKTOINPROGRESSREQUEST']._serialized_start=4257
  _globals['_TASKTOINPROGRESSREQUEST']._serialized_end=4298
  _globals['_TASKTOINPROGRESSRESPONSE']._serialized_start=4300
  _globals['_TASKTOINPROGRESSRESPONSE']._serialized_end=4326
  _globals['_TASKTODONEREQUEST']._serialized_start=4328
  _globals['_TASKTODONEREQUEST']._serialized_end=4363
  _globals['_TASKTODONERESPONSE']._serialized_start=4365
  _globals['_TASKTODONERESPONSE']._serialized_end=4385
  _globals['_ASSIGNTASKTOUSERREQUEST']._serialized_start=4387
  _globals['_ASSIGNTASKTOUSERREQUEST']._serialized_end=4453
  _globals['_ASSIGNTASKTOUSERRESPONSE']._serialized_start=4455
  _globals['_ASSIGNTASKTOUSERRESPONSE']._serialized_end=4481
  _globals['_UNASSIGNTASKFROMUSERREQUEST']._serialized_start=4483
  _globals['_UNASSIGNTASKFROMUSERREQUEST']._serialized_end=4528
  _globals['_UNASSIGNTASKFROMUSERRESPONSE']._serialized_start=4530
  _globals['_UNASSIGNTASKFROMUSERRESPONSE']._serialized_end=4560
  _globals['_PUBLISHTASKREQUEST']._serialized_start=4562
  _globals['_PUBLISHTASKREQUEST']._serialized_end=4598
  _globals['_PUBLISHTASKRESPONSE']._serialized_start=4600
  _globals['_PUBLISHTASKRESPONSE']._serialized_end=4621
  _globals['_UNPUBLISHTASKREQUEST']._serialized_start=4623
  _globals['_UNPUBLISHTASKREQUEST']._serialized_end=4661
  _globals['_UNPUBLISHTASKRESPONSE']._serialized_start=4663
  _globals['_UNPUBLISHTASKRESPONSE']._serialized_end=4686
  _globals['_DELETETASKREQUEST']._serialized_start=4688
  _globals['_DELETETASKREQUEST']._serialized_end=4723
  _globals['_DELETETASKRESPONSE']._serialized_start=4725
  _globals['_DELETETASKRESPONSE']._serialized_end=4745
  _globals['_TASKSERVICE']._serialized_start=4864
  _globals['_TASKSERVICE']._serialized_end=7196
# @@protoc_insertion_point(module_scope)
