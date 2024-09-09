# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: services/tasks_svc/v1/ward_svc.proto
# Protobuf Python Version: 4.25.2
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
from google.protobuf.internal import builder as _builder
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n$services/tasks_svc/v1/ward_svc.proto\x12\x15services.tasks_svc.v1\"\'\n\x11\x43reateWardRequest\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\"$\n\x12\x43reateWardResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\" \n\x0eGetWardRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"5\n\x0fGetWardResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\"\x11\n\x0fGetWardsRequest\"\x82\x01\n\x10GetWardsResponse\x12\x42\n\x05wards\x18\x01 \x03(\x0b\x32,.services.tasks_svc.v1.GetWardsResponse.WardR\x05wards\x1a*\n\x04Ward\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\"\x17\n\x15GetRecentWardsRequest\"\x96\x02\n\x16GetRecentWardsResponse\x12H\n\x05wards\x18\x01 \x03(\x0b\x32\x32.services.tasks_svc.v1.GetRecentWardsResponse.WardR\x05wards\x1a\xb1\x01\n\x04Ward\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12\x1b\n\tbed_count\x18\x03 \x01(\rR\x08\x62\x65\x64\x43ount\x12\x1d\n\ntasks_todo\x18\x04 \x01(\rR\ttasksTodo\x12*\n\x11tasks_in_progress\x18\x05 \x01(\rR\x0ftasksInProgress\x12\x1d\n\ntasks_done\x18\x06 \x01(\rR\ttasksDone\"E\n\x11UpdateWardRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x17\n\x04name\x18\x02 \x01(\tH\x00R\x04name\x88\x01\x01\x42\x07\n\x05_name\"\x14\n\x12UpdateWardResponse\"#\n\x11\x44\x65leteWardRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x14\n\x12\x44\x65leteWardResponse\"\'\n\x15GetWardDetailsRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\xbe\x04\n\x16GetWardDetailsResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12H\n\x05rooms\x18\x03 \x03(\x0b\x32\x32.services.tasks_svc.v1.GetWardDetailsResponse.RoomR\x05rooms\x12\x61\n\x0etask_templates\x18\x04 \x03(\x0b\x32:.services.tasks_svc.v1.GetWardDetailsResponse.TaskTemplateR\rtaskTemplates\x1a)\n\x03\x42\x65\x64\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x1a-\n\x07Subtask\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x1aq\n\x04Room\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12\x45\n\x04\x62\x65\x64s\x18\x03 \x03(\x0b\x32\x31.services.tasks_svc.v1.GetWardDetailsResponse.BedR\x04\x62\x65\x64s\x1a\x85\x01\n\x0cTaskTemplate\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12Q\n\x08subtasks\x18\x03 \x03(\x0b\x32\x35.services.tasks_svc.v1.GetWardDetailsResponse.SubtaskR\x08subtasks\"\x19\n\x17GetWardOverviewsRequest\"\x9a\x02\n\x18GetWardOverviewsResponse\x12J\n\x05wards\x18\x01 \x03(\x0b\x32\x34.services.tasks_svc.v1.GetWardOverviewsResponse.WardR\x05wards\x1a\xb1\x01\n\x04Ward\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12\x1b\n\tbed_count\x18\x03 \x01(\rR\x08\x62\x65\x64\x43ount\x12\x1d\n\ntasks_todo\x18\x04 \x01(\rR\ttasksTodo\x12*\n\x11tasks_in_progress\x18\x05 \x01(\rR\x0ftasksInProgress\x12\x1d\n\ntasks_done\x18\x06 \x01(\rR\ttasksDone2\xd0\x06\n\x0bWardService\x12\x63\n\nCreateWard\x12(.services.tasks_svc.v1.CreateWardRequest\x1a).services.tasks_svc.v1.CreateWardResponse\"\x00\x12Z\n\x07GetWard\x12%.services.tasks_svc.v1.GetWardRequest\x1a&.services.tasks_svc.v1.GetWardResponse\"\x00\x12]\n\x08GetWards\x12&.services.tasks_svc.v1.GetWardsRequest\x1a\'.services.tasks_svc.v1.GetWardsResponse\"\x00\x12o\n\x0eGetRecentWards\x12,.services.tasks_svc.v1.GetRecentWardsRequest\x1a-.services.tasks_svc.v1.GetRecentWardsResponse\"\x00\x12\x63\n\nUpdateWard\x12(.services.tasks_svc.v1.UpdateWardRequest\x1a).services.tasks_svc.v1.UpdateWardResponse\"\x00\x12\x63\n\nDeleteWard\x12(.services.tasks_svc.v1.DeleteWardRequest\x1a).services.tasks_svc.v1.DeleteWardResponse\"\x00\x12o\n\x0eGetWardDetails\x12,.services.tasks_svc.v1.GetWardDetailsRequest\x1a-.services.tasks_svc.v1.GetWardDetailsResponse\"\x00\x12u\n\x10GetWardOverviews\x12..services.tasks_svc.v1.GetWardOverviewsRequest\x1a/.services.tasks_svc.v1.GetWardOverviewsResponse\"\x00\x42\xb9\x01\n\x19\x63om.services.tasks_svc.v1B\x0cWardSvcProtoP\x01Z\x1cgen/proto/services/tasks-svc\xa2\x02\x03STX\xaa\x02\x14Services.TasksSvc.V1\xca\x02\x14Services\\TasksSvc\\V1\xe2\x02 Services\\TasksSvc\\V1\\GPBMetadata\xea\x02\x16Services::TasksSvc::V1b\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'services.tasks_svc.v1.ward_svc_pb2', _globals)
if _descriptor._USE_C_DESCRIPTORS == False:
  _globals['DESCRIPTOR']._options = None
  _globals['DESCRIPTOR']._serialized_options = b'\n\031com.services.tasks_svc.v1B\014WardSvcProtoP\001Z\034gen/proto/services/tasks-svc\242\002\003STX\252\002\024Services.TasksSvc.V1\312\002\024Services\\TasksSvc\\V1\342\002 Services\\TasksSvc\\V1\\GPBMetadata\352\002\026Services::TasksSvc::V1'
  _globals['_CREATEWARDREQUEST']._serialized_start=63
  _globals['_CREATEWARDREQUEST']._serialized_end=102
  _globals['_CREATEWARDRESPONSE']._serialized_start=104
  _globals['_CREATEWARDRESPONSE']._serialized_end=140
  _globals['_GETWARDREQUEST']._serialized_start=142
  _globals['_GETWARDREQUEST']._serialized_end=174
  _globals['_GETWARDRESPONSE']._serialized_start=176
  _globals['_GETWARDRESPONSE']._serialized_end=229
  _globals['_GETWARDSREQUEST']._serialized_start=231
  _globals['_GETWARDSREQUEST']._serialized_end=248
  _globals['_GETWARDSRESPONSE']._serialized_start=251
  _globals['_GETWARDSRESPONSE']._serialized_end=381
  _globals['_GETWARDSRESPONSE_WARD']._serialized_start=339
  _globals['_GETWARDSRESPONSE_WARD']._serialized_end=381
  _globals['_GETRECENTWARDSREQUEST']._serialized_start=383
  _globals['_GETRECENTWARDSREQUEST']._serialized_end=406
  _globals['_GETRECENTWARDSRESPONSE']._serialized_start=409
  _globals['_GETRECENTWARDSRESPONSE']._serialized_end=687
  _globals['_GETRECENTWARDSRESPONSE_WARD']._serialized_start=510
  _globals['_GETRECENTWARDSRESPONSE_WARD']._serialized_end=687
  _globals['_UPDATEWARDREQUEST']._serialized_start=689
  _globals['_UPDATEWARDREQUEST']._serialized_end=758
  _globals['_UPDATEWARDRESPONSE']._serialized_start=760
  _globals['_UPDATEWARDRESPONSE']._serialized_end=780
  _globals['_DELETEWARDREQUEST']._serialized_start=782
  _globals['_DELETEWARDREQUEST']._serialized_end=817
  _globals['_DELETEWARDRESPONSE']._serialized_start=819
  _globals['_DELETEWARDRESPONSE']._serialized_end=839
  _globals['_GETWARDDETAILSREQUEST']._serialized_start=841
  _globals['_GETWARDDETAILSREQUEST']._serialized_end=880
  _globals['_GETWARDDETAILSRESPONSE']._serialized_start=883
  _globals['_GETWARDDETAILSRESPONSE']._serialized_end=1457
  _globals['_GETWARDDETAILSRESPONSE_BED']._serialized_start=1118
  _globals['_GETWARDDETAILSRESPONSE_BED']._serialized_end=1159
  _globals['_GETWARDDETAILSRESPONSE_SUBTASK']._serialized_start=1161
  _globals['_GETWARDDETAILSRESPONSE_SUBTASK']._serialized_end=1206
  _globals['_GETWARDDETAILSRESPONSE_ROOM']._serialized_start=1208
  _globals['_GETWARDDETAILSRESPONSE_ROOM']._serialized_end=1321
  _globals['_GETWARDDETAILSRESPONSE_TASKTEMPLATE']._serialized_start=1324
  _globals['_GETWARDDETAILSRESPONSE_TASKTEMPLATE']._serialized_end=1457
  _globals['_GETWARDOVERVIEWSREQUEST']._serialized_start=1459
  _globals['_GETWARDOVERVIEWSREQUEST']._serialized_end=1484
  _globals['_GETWARDOVERVIEWSRESPONSE']._serialized_start=1487
  _globals['_GETWARDOVERVIEWSRESPONSE']._serialized_end=1769
  _globals['_GETWARDOVERVIEWSRESPONSE_WARD']._serialized_start=510
  _globals['_GETWARDOVERVIEWSRESPONSE_WARD']._serialized_end=687
  _globals['_WARDSERVICE']._serialized_start=1772
  _globals['_WARDSERVICE']._serialized_end=2620
# @@protoc_insertion_point(module_scope)