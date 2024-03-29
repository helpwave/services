# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: proto/services/task_svc/v1/patient_svc.proto
# Protobuf Python Version: 4.25.2
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
from google.protobuf.internal import builder as _builder
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n,proto/services/task_svc/v1/patient_svc.proto\x12\x1aproto.services.task_svc.v1\"h\n\x14\x43reatePatientRequest\x12:\n\x19human_readable_identifier\x18\x01 \x01(\tR\x17humanReadableIdentifier\x12\x14\n\x05notes\x18\x02 \x01(\tR\x05notes\"\'\n\x15\x43reatePatientResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"#\n\x11GetPatientRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\xe9\x03\n\x12GetPatientResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12:\n\x19human_readable_identifier\x18\x02 \x01(\tR\x17humanReadableIdentifier\x12\x14\n\x05notes\x18\x03 \x01(\tR\x05notes\x12\x1e\n\x06\x62\x65\x64_id\x18\x04 \x01(\tB\x02\x18\x01H\x00R\x05\x62\x65\x64Id\x88\x01\x01\x12 \n\x07ward_id\x18\x05 \x01(\tB\x02\x18\x01H\x01R\x06wardId\x88\x01\x01\x12L\n\x04room\x18\x07 \x01(\x0b\x32\x33.proto.services.task_svc.v1.GetPatientResponse.RoomH\x02R\x04room\x88\x01\x01\x12I\n\x03\x62\x65\x64\x18\x08 \x01(\x0b\x32\x32.proto.services.task_svc.v1.GetPatientResponse.BedH\x03R\x03\x62\x65\x64\x88\x01\x01\x1a\x43\n\x04Room\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12\x17\n\x07ward_id\x18\x03 \x01(\tR\x06wardId\x1a)\n\x03\x42\x65\x64\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04nameB\t\n\x07_bed_idB\n\n\x08_ward_idB\x07\n\x05_roomB\x06\n\x04_bed\"&\n\x14\x44\x65letePatientRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x17\n\x15\x44\x65letePatientResponse\"/\n\x16GetPatientByBedRequest\x12\x15\n\x06\x62\x65\x64_id\x18\x01 \x01(\tR\x05\x62\x65\x64Id\"\xa2\x01\n\x17GetPatientByBedResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12:\n\x19human_readable_identifier\x18\x02 \x01(\tR\x17humanReadableIdentifier\x12\x14\n\x05notes\x18\x03 \x01(\tR\x05notes\x12\x1a\n\x06\x62\x65\x64_id\x18\x04 \x01(\tH\x00R\x05\x62\x65\x64Id\x88\x01\x01\x42\t\n\x07_bed_id\"3\n\x18GetPatientsByWardRequest\x12\x17\n\x07ward_id\x18\x01 \x01(\tR\x06wardId\"\x8b\x02\n\x19GetPatientsByWardResponse\x12Y\n\x08patients\x18\x01 \x03(\x0b\x32=.proto.services.task_svc.v1.GetPatientsByWardResponse.PatientR\x08patients\x1a\x92\x01\n\x07Patient\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12:\n\x19human_readable_identifier\x18\x02 \x01(\tR\x17humanReadableIdentifier\x12\x14\n\x05notes\x18\x03 \x01(\tR\x05notes\x12\x1a\n\x06\x62\x65\x64_id\x18\x04 \x01(\tH\x00R\x05\x62\x65\x64Id\x88\x01\x01\x42\t\n\x07_bed_id\"<\n!GetPatientAssignmentByWardRequest\x12\x17\n\x07ward_id\x18\x01 \x01(\tR\x06wardId\"\xe0\x03\n\"GetPatientAssignmentByWardResponse\x12Y\n\x05rooms\x18\x01 \x03(\x0b\x32\x43.proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.RoomR\x05rooms\x1a\xde\x02\n\x04Room\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12[\n\x04\x62\x65\x64s\x18\x03 \x03(\x0b\x32G.proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.BedR\x04\x62\x65\x64s\x1a\xd4\x01\n\x03\x42\x65\x64\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12n\n\x07patient\x18\x03 \x01(\x0b\x32O.proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.PatientH\x00R\x07patient\x88\x01\x01\x1a-\n\x07Patient\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04nameB\n\n\x08_patient\"\x1a\n\x18GetRecentPatientsRequest\"\x84\x04\n\x19GetRecentPatientsResponse\x12t\n\x0frecent_patients\x18\x01 \x03(\x0b\x32K.proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBedR\x0erecentPatients\x1a)\n\x03\x42\x65\x64\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x1a\x43\n\x04Room\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12\x17\n\x07ward_id\x18\x03 \x01(\tR\x06wardId\x1a\x80\x02\n\x15PatientWithRoomAndBed\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12:\n\x19human_readable_identifier\x18\x02 \x01(\tR\x17humanReadableIdentifier\x12N\n\x04room\x18\x03 \x01(\x0b\x32:.proto.services.task_svc.v1.GetRecentPatientsResponse.RoomR\x04room\x12K\n\x03\x62\x65\x64\x18\x04 \x01(\x0b\x32\x39.proto.services.task_svc.v1.GetRecentPatientsResponse.BedR\x03\x62\x65\x64\"\xaa\x01\n\x14UpdatePatientRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12?\n\x19human_readable_identifier\x18\x02 \x01(\tH\x00R\x17humanReadableIdentifier\x88\x01\x01\x12\x19\n\x05notes\x18\x03 \x01(\tH\x01R\x05notes\x88\x01\x01\x42\x1c\n\x1a_human_readable_identifierB\x08\n\x06_notes\"\x17\n\x15UpdatePatientResponse\"9\n\x10\x41ssignBedRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x15\n\x06\x62\x65\x64_id\x18\x02 \x01(\tR\x05\x62\x65\x64Id\"\x13\n\x11\x41ssignBedResponse\"$\n\x12UnassignBedRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x15\n\x13UnassignBedResponse\")\n\x17\x44ischargePatientRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x1a\n\x18\x44ischargePatientResponse\"*\n\x18GetPatientDetailsRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x99\t\n\x19GetPatientDetailsResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12:\n\x19human_readable_identifier\x18\x03 \x01(\tR\x17humanReadableIdentifier\x12\x14\n\x05notes\x18\x04 \x01(\tR\x05notes\x12P\n\x05tasks\x18\x05 \x03(\x0b\x32:.proto.services.task_svc.v1.GetPatientDetailsResponse.TaskR\x05tasks\x12 \n\x07ward_id\x18\x06 \x01(\tB\x02\x18\x01H\x00R\x06wardId\x88\x01\x01\x12S\n\x04room\x18\x07 \x01(\x0b\x32:.proto.services.task_svc.v1.GetPatientDetailsResponse.RoomH\x01R\x04room\x88\x01\x01\x12P\n\x03\x62\x65\x64\x18\x08 \x01(\x0b\x32\x39.proto.services.task_svc.v1.GetPatientDetailsResponse.BedH\x02R\x03\x62\x65\x64\x88\x01\x01\x12#\n\ris_discharged\x18\t \x01(\x08R\x0cisDischarged\x1a\x43\n\x04Room\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12\x17\n\x07ward_id\x18\x03 \x01(\tR\x06wardId\x1a)\n\x03\x42\x65\x64\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x1a\xc4\x03\n\x04Task\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12 \n\x0b\x64\x65scription\x18\x03 \x01(\tR\x0b\x64\x65scription\x12X\n\x06status\x18\x04 \x01(\x0e\x32@.proto.services.task_svc.v1.GetPatientDetailsResponse.TaskStatusR\x06status\x12-\n\x10\x61ssigned_user_id\x18\x05 \x01(\tH\x00R\x0e\x61ssignedUserId\x88\x01\x01\x12\x1d\n\npatient_id\x18\x06 \x01(\tR\tpatientId\x12\x16\n\x06public\x18\x07 \x01(\x08R\x06public\x12^\n\x08subtasks\x18\x08 \x03(\x0b\x32\x42.proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTaskR\x08subtasks\x1a\x41\n\x07SubTask\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12\x12\n\x04\x64one\x18\x03 \x01(\x08R\x04\x64oneB\x13\n\x11_assigned_user_id\"r\n\nTaskStatus\x12\x1b\n\x17TASK_STATUS_UNSPECIFIED\x10\x00\x12\x14\n\x10TASK_STATUS_TODO\x10\x01\x12\x1b\n\x17TASK_STATUS_IN_PROGRESS\x10\x02\x12\x14\n\x10TASK_STATUS_DONE\x10\x03\x42\n\n\x08_ward_idB\x07\n\x05_roomB\x06\n\x04_bed\"A\n\x15GetPatientListRequest\x12\x1c\n\x07ward_id\x18\x01 \x01(\tH\x00R\x06wardId\x88\x01\x01\x42\n\n\x08_ward_id\"\x98\x0c\n\x16GetPatientListResponse\x12`\n\x06\x61\x63tive\x18\x01 \x03(\x0b\x32H.proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBedR\x06\x61\x63tive\x12k\n\x13unassigned_patients\x18\x02 \x03(\x0b\x32:.proto.services.task_svc.v1.GetPatientListResponse.PatientR\x12unassignedPatients\x12k\n\x13\x64ischarged_patients\x18\x03 \x03(\x0b\x32:.proto.services.task_svc.v1.GetPatientListResponse.PatientR\x12\x64ischargedPatients\x1a\xba\x01\n\x07Patient\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12:\n\x19human_readable_identifier\x18\x02 \x01(\tR\x17humanReadableIdentifier\x12\x14\n\x05notes\x18\x03 \x01(\tR\x05notes\x12M\n\x05tasks\x18\x04 \x03(\x0b\x32\x37.proto.services.task_svc.v1.GetPatientListResponse.TaskR\x05tasks\x1a)\n\x03\x42\x65\x64\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x1a\x43\n\x04Room\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12\x17\n\x07ward_id\x18\x03 \x01(\tR\x06wardId\x1a\xdf\x02\n\x15PatientWithRoomAndBed\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12:\n\x19human_readable_identifier\x18\x02 \x01(\tR\x17humanReadableIdentifier\x12K\n\x04room\x18\x03 \x01(\x0b\x32\x37.proto.services.task_svc.v1.GetPatientListResponse.RoomR\x04room\x12H\n\x03\x62\x65\x64\x18\x04 \x01(\x0b\x32\x36.proto.services.task_svc.v1.GetPatientListResponse.BedR\x03\x62\x65\x64\x12\x14\n\x05notes\x18\x05 \x01(\tR\x05notes\x12M\n\x05tasks\x18\x06 \x03(\x0b\x32\x37.proto.services.task_svc.v1.GetPatientListResponse.TaskR\x05tasks\x1a\xbe\x03\n\x04Task\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12 \n\x0b\x64\x65scription\x18\x03 \x01(\tR\x0b\x64\x65scription\x12U\n\x06status\x18\x04 \x01(\x0e\x32=.proto.services.task_svc.v1.GetPatientListResponse.TaskStatusR\x06status\x12-\n\x10\x61ssigned_user_id\x18\x05 \x01(\tH\x00R\x0e\x61ssignedUserId\x88\x01\x01\x12\x1d\n\npatient_id\x18\x06 \x01(\tR\tpatientId\x12\x16\n\x06public\x18\x07 \x01(\x08R\x06public\x12[\n\x08subtasks\x18\x08 \x03(\x0b\x32?.proto.services.task_svc.v1.GetPatientListResponse.Task.SubTaskR\x08subtasks\x1a\x41\n\x07SubTask\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12\x12\n\x04\x64one\x18\x03 \x01(\x08R\x04\x64oneB\x13\n\x11_assigned_user_id\"r\n\nTaskStatus\x12\x1b\n\x17TASK_STATUS_UNSPECIFIED\x10\x00\x12\x14\n\x10TASK_STATUS_TODO\x10\x01\x12\x1b\n\x17TASK_STATUS_IN_PROGRESS\x10\x02\x12\x14\n\x10TASK_STATUS_DONE\x10\x03\"6\n\x15ReadmitPatientRequest\x12\x1d\n\npatient_id\x18\x01 \x01(\tR\tpatientId\"\x18\n\x16ReadmitPatientResponse2\xe9\r\n\x0ePatientService\x12v\n\rCreatePatient\x12\x30.proto.services.task_svc.v1.CreatePatientRequest\x1a\x31.proto.services.task_svc.v1.CreatePatientResponse\"\x00\x12m\n\nGetPatient\x12-.proto.services.task_svc.v1.GetPatientRequest\x1a..proto.services.task_svc.v1.GetPatientResponse\"\x00\x12|\n\x0fGetPatientByBed\x12\x32.proto.services.task_svc.v1.GetPatientByBedRequest\x1a\x33.proto.services.task_svc.v1.GetPatientByBedResponse\"\x00\x12\x82\x01\n\x11GetPatientsByWard\x12\x34.proto.services.task_svc.v1.GetPatientsByWardRequest\x1a\x35.proto.services.task_svc.v1.GetPatientsByWardResponse\"\x00\x12\x9d\x01\n\x1aGetPatientAssignmentByWard\x12=.proto.services.task_svc.v1.GetPatientAssignmentByWardRequest\x1a>.proto.services.task_svc.v1.GetPatientAssignmentByWardResponse\"\x00\x12\x82\x01\n\x11GetRecentPatients\x12\x34.proto.services.task_svc.v1.GetRecentPatientsRequest\x1a\x35.proto.services.task_svc.v1.GetRecentPatientsResponse\"\x00\x12v\n\rUpdatePatient\x12\x30.proto.services.task_svc.v1.UpdatePatientRequest\x1a\x31.proto.services.task_svc.v1.UpdatePatientResponse\"\x00\x12j\n\tAssignBed\x12,.proto.services.task_svc.v1.AssignBedRequest\x1a-.proto.services.task_svc.v1.AssignBedResponse\"\x00\x12p\n\x0bUnassignBed\x12..proto.services.task_svc.v1.UnassignBedRequest\x1a/.proto.services.task_svc.v1.UnassignBedResponse\"\x00\x12\x7f\n\x10\x44ischargePatient\x12\x33.proto.services.task_svc.v1.DischargePatientRequest\x1a\x34.proto.services.task_svc.v1.DischargePatientResponse\"\x00\x12\x82\x01\n\x11GetPatientDetails\x12\x34.proto.services.task_svc.v1.GetPatientDetailsRequest\x1a\x35.proto.services.task_svc.v1.GetPatientDetailsResponse\"\x00\x12y\n\x0eGetPatientList\x12\x31.proto.services.task_svc.v1.GetPatientListRequest\x1a\x32.proto.services.task_svc.v1.GetPatientListResponse\"\x00\x12v\n\rDeletePatient\x12\x30.proto.services.task_svc.v1.DeletePatientRequest\x1a\x31.proto.services.task_svc.v1.DeletePatientResponse\"\x00\x12y\n\x0eReadmitPatient\x12\x31.proto.services.task_svc.v1.ReadmitPatientRequest\x1a\x32.proto.services.task_svc.v1.ReadmitPatientResponse\"\x00\x42\xd5\x01\n\x1e\x63om.proto.services.task_svc.v1B\x0fPatientSvcProtoP\x01Z\x1bgen/proto/services/task-svc\xa2\x02\x03PST\xaa\x02\x19Proto.Services.TaskSvc.V1\xca\x02\x19Proto\\Services\\TaskSvc\\V1\xe2\x02%Proto\\Services\\TaskSvc\\V1\\GPBMetadata\xea\x02\x1cProto::Services::TaskSvc::V1b\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'proto.services.task_svc.v1.patient_svc_pb2', _globals)
if _descriptor._USE_C_DESCRIPTORS == False:
  _globals['DESCRIPTOR']._options = None
  _globals['DESCRIPTOR']._serialized_options = b'\n\036com.proto.services.task_svc.v1B\017PatientSvcProtoP\001Z\033gen/proto/services/task-svc\242\002\003PST\252\002\031Proto.Services.TaskSvc.V1\312\002\031Proto\\Services\\TaskSvc\\V1\342\002%Proto\\Services\\TaskSvc\\V1\\GPBMetadata\352\002\034Proto::Services::TaskSvc::V1'
  _globals['_GETPATIENTRESPONSE'].fields_by_name['bed_id']._options = None
  _globals['_GETPATIENTRESPONSE'].fields_by_name['bed_id']._serialized_options = b'\030\001'
  _globals['_GETPATIENTRESPONSE'].fields_by_name['ward_id']._options = None
  _globals['_GETPATIENTRESPONSE'].fields_by_name['ward_id']._serialized_options = b'\030\001'
  _globals['_GETPATIENTDETAILSRESPONSE'].fields_by_name['ward_id']._options = None
  _globals['_GETPATIENTDETAILSRESPONSE'].fields_by_name['ward_id']._serialized_options = b'\030\001'
  _globals['_CREATEPATIENTREQUEST']._serialized_start=76
  _globals['_CREATEPATIENTREQUEST']._serialized_end=180
  _globals['_CREATEPATIENTRESPONSE']._serialized_start=182
  _globals['_CREATEPATIENTRESPONSE']._serialized_end=221
  _globals['_GETPATIENTREQUEST']._serialized_start=223
  _globals['_GETPATIENTREQUEST']._serialized_end=258
  _globals['_GETPATIENTRESPONSE']._serialized_start=261
  _globals['_GETPATIENTRESPONSE']._serialized_end=750
  _globals['_GETPATIENTRESPONSE_ROOM']._serialized_start=600
  _globals['_GETPATIENTRESPONSE_ROOM']._serialized_end=667
  _globals['_GETPATIENTRESPONSE_BED']._serialized_start=669
  _globals['_GETPATIENTRESPONSE_BED']._serialized_end=710
  _globals['_DELETEPATIENTREQUEST']._serialized_start=752
  _globals['_DELETEPATIENTREQUEST']._serialized_end=790
  _globals['_DELETEPATIENTRESPONSE']._serialized_start=792
  _globals['_DELETEPATIENTRESPONSE']._serialized_end=815
  _globals['_GETPATIENTBYBEDREQUEST']._serialized_start=817
  _globals['_GETPATIENTBYBEDREQUEST']._serialized_end=864
  _globals['_GETPATIENTBYBEDRESPONSE']._serialized_start=867
  _globals['_GETPATIENTBYBEDRESPONSE']._serialized_end=1029
  _globals['_GETPATIENTSBYWARDREQUEST']._serialized_start=1031
  _globals['_GETPATIENTSBYWARDREQUEST']._serialized_end=1082
  _globals['_GETPATIENTSBYWARDRESPONSE']._serialized_start=1085
  _globals['_GETPATIENTSBYWARDRESPONSE']._serialized_end=1352
  _globals['_GETPATIENTSBYWARDRESPONSE_PATIENT']._serialized_start=1206
  _globals['_GETPATIENTSBYWARDRESPONSE_PATIENT']._serialized_end=1352
  _globals['_GETPATIENTASSIGNMENTBYWARDREQUEST']._serialized_start=1354
  _globals['_GETPATIENTASSIGNMENTBYWARDREQUEST']._serialized_end=1414
  _globals['_GETPATIENTASSIGNMENTBYWARDRESPONSE']._serialized_start=1417
  _globals['_GETPATIENTASSIGNMENTBYWARDRESPONSE']._serialized_end=1897
  _globals['_GETPATIENTASSIGNMENTBYWARDRESPONSE_ROOM']._serialized_start=1547
  _globals['_GETPATIENTASSIGNMENTBYWARDRESPONSE_ROOM']._serialized_end=1897
  _globals['_GETPATIENTASSIGNMENTBYWARDRESPONSE_ROOM_BED']._serialized_start=1685
  _globals['_GETPATIENTASSIGNMENTBYWARDRESPONSE_ROOM_BED']._serialized_end=1897
  _globals['_GETPATIENTASSIGNMENTBYWARDRESPONSE_ROOM_BED_PATIENT']._serialized_start=1840
  _globals['_GETPATIENTASSIGNMENTBYWARDRESPONSE_ROOM_BED_PATIENT']._serialized_end=1885
  _globals['_GETRECENTPATIENTSREQUEST']._serialized_start=1899
  _globals['_GETRECENTPATIENTSREQUEST']._serialized_end=1925
  _globals['_GETRECENTPATIENTSRESPONSE']._serialized_start=1928
  _globals['_GETRECENTPATIENTSRESPONSE']._serialized_end=2444
  _globals['_GETRECENTPATIENTSRESPONSE_BED']._serialized_start=669
  _globals['_GETRECENTPATIENTSRESPONSE_BED']._serialized_end=710
  _globals['_GETRECENTPATIENTSRESPONSE_ROOM']._serialized_start=600
  _globals['_GETRECENTPATIENTSRESPONSE_ROOM']._serialized_end=667
  _globals['_GETRECENTPATIENTSRESPONSE_PATIENTWITHROOMANDBED']._serialized_start=2188
  _globals['_GETRECENTPATIENTSRESPONSE_PATIENTWITHROOMANDBED']._serialized_end=2444
  _globals['_UPDATEPATIENTREQUEST']._serialized_start=2447
  _globals['_UPDATEPATIENTREQUEST']._serialized_end=2617
  _globals['_UPDATEPATIENTRESPONSE']._serialized_start=2619
  _globals['_UPDATEPATIENTRESPONSE']._serialized_end=2642
  _globals['_ASSIGNBEDREQUEST']._serialized_start=2644
  _globals['_ASSIGNBEDREQUEST']._serialized_end=2701
  _globals['_ASSIGNBEDRESPONSE']._serialized_start=2703
  _globals['_ASSIGNBEDRESPONSE']._serialized_end=2722
  _globals['_UNASSIGNBEDREQUEST']._serialized_start=2724
  _globals['_UNASSIGNBEDREQUEST']._serialized_end=2760
  _globals['_UNASSIGNBEDRESPONSE']._serialized_start=2762
  _globals['_UNASSIGNBEDRESPONSE']._serialized_end=2783
  _globals['_DISCHARGEPATIENTREQUEST']._serialized_start=2785
  _globals['_DISCHARGEPATIENTREQUEST']._serialized_end=2826
  _globals['_DISCHARGEPATIENTRESPONSE']._serialized_start=2828
  _globals['_DISCHARGEPATIENTRESPONSE']._serialized_end=2854
  _globals['_GETPATIENTDETAILSREQUEST']._serialized_start=2856
  _globals['_GETPATIENTDETAILSREQUEST']._serialized_end=2898
  _globals['_GETPATIENTDETAILSRESPONSE']._serialized_start=2901
  _globals['_GETPATIENTDETAILSRESPONSE']._serialized_end=4078
  _globals['_GETPATIENTDETAILSRESPONSE_ROOM']._serialized_start=600
  _globals['_GETPATIENTDETAILSRESPONSE_ROOM']._serialized_end=667
  _globals['_GETPATIENTDETAILSRESPONSE_BED']._serialized_start=669
  _globals['_GETPATIENTDETAILSRESPONSE_BED']._serialized_end=710
  _globals['_GETPATIENTDETAILSRESPONSE_TASK']._serialized_start=3481
  _globals['_GETPATIENTDETAILSRESPONSE_TASK']._serialized_end=3933
  _globals['_GETPATIENTDETAILSRESPONSE_TASK_SUBTASK']._serialized_start=3847
  _globals['_GETPATIENTDETAILSRESPONSE_TASK_SUBTASK']._serialized_end=3912
  _globals['_GETPATIENTDETAILSRESPONSE_TASKSTATUS']._serialized_start=3935
  _globals['_GETPATIENTDETAILSRESPONSE_TASKSTATUS']._serialized_end=4049
  _globals['_GETPATIENTLISTREQUEST']._serialized_start=4080
  _globals['_GETPATIENTLISTREQUEST']._serialized_end=4145
  _globals['_GETPATIENTLISTRESPONSE']._serialized_start=4148
  _globals['_GETPATIENTLISTRESPONSE']._serialized_end=5708
  _globals['_GETPATIENTLISTRESPONSE_PATIENT']._serialized_start=4491
  _globals['_GETPATIENTLISTRESPONSE_PATIENT']._serialized_end=4677
  _globals['_GETPATIENTLISTRESPONSE_BED']._serialized_start=669
  _globals['_GETPATIENTLISTRESPONSE_BED']._serialized_end=710
  _globals['_GETPATIENTLISTRESPONSE_ROOM']._serialized_start=600
  _globals['_GETPATIENTLISTRESPONSE_ROOM']._serialized_end=667
  _globals['_GETPATIENTLISTRESPONSE_PATIENTWITHROOMANDBED']._serialized_start=4792
  _globals['_GETPATIENTLISTRESPONSE_PATIENTWITHROOMANDBED']._serialized_end=5143
  _globals['_GETPATIENTLISTRESPONSE_TASK']._serialized_start=5146
  _globals['_GETPATIENTLISTRESPONSE_TASK']._serialized_end=5592
  _globals['_GETPATIENTLISTRESPONSE_TASK_SUBTASK']._serialized_start=3847
  _globals['_GETPATIENTLISTRESPONSE_TASK_SUBTASK']._serialized_end=3912
  _globals['_GETPATIENTLISTRESPONSE_TASKSTATUS']._serialized_start=3935
  _globals['_GETPATIENTLISTRESPONSE_TASKSTATUS']._serialized_end=4049
  _globals['_READMITPATIENTREQUEST']._serialized_start=5710
  _globals['_READMITPATIENTREQUEST']._serialized_end=5764
  _globals['_READMITPATIENTRESPONSE']._serialized_start=5766
  _globals['_READMITPATIENTRESPONSE']._serialized_end=5790
  _globals['_PATIENTSERVICE']._serialized_start=5793
  _globals['_PATIENTSERVICE']._serialized_end=7562
# @@protoc_insertion_point(module_scope)
