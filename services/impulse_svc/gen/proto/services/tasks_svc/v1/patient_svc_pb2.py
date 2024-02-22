# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: proto/services/tasks_svc/v1/patient_svc.proto
# Protobuf Python Version: 4.25.2
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
from google.protobuf.internal import builder as _builder
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n-proto/services/tasks_svc/v1/patient_svc.proto\x12\x1bproto.services.tasks_svc.v1\"h\n\x14\x43reatePatientRequest\x12:\n\x19human_readable_identifier\x18\x01 \x01(\tR\x17humanReadableIdentifier\x12\x14\n\x05notes\x18\x02 \x01(\tR\x05notes\"\'\n\x15\x43reatePatientResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"#\n\x11GetPatientRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\xeb\x03\n\x12GetPatientResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12:\n\x19human_readable_identifier\x18\x02 \x01(\tR\x17humanReadableIdentifier\x12\x14\n\x05notes\x18\x03 \x01(\tR\x05notes\x12\x1e\n\x06\x62\x65\x64_id\x18\x04 \x01(\tB\x02\x18\x01H\x00R\x05\x62\x65\x64Id\x88\x01\x01\x12 \n\x07ward_id\x18\x05 \x01(\tB\x02\x18\x01H\x01R\x06wardId\x88\x01\x01\x12M\n\x04room\x18\x07 \x01(\x0b\x32\x34.proto.services.tasks_svc.v1.GetPatientResponse.RoomH\x02R\x04room\x88\x01\x01\x12J\n\x03\x62\x65\x64\x18\x08 \x01(\x0b\x32\x33.proto.services.tasks_svc.v1.GetPatientResponse.BedH\x03R\x03\x62\x65\x64\x88\x01\x01\x1a\x43\n\x04Room\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12\x17\n\x07ward_id\x18\x03 \x01(\tR\x06wardId\x1a)\n\x03\x42\x65\x64\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04nameB\t\n\x07_bed_idB\n\n\x08_ward_idB\x07\n\x05_roomB\x06\n\x04_bed\"\xaa\x01\n\x14UpdatePatientRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12?\n\x19human_readable_identifier\x18\x02 \x01(\tH\x00R\x17humanReadableIdentifier\x88\x01\x01\x12\x19\n\x05notes\x18\x03 \x01(\tH\x01R\x05notes\x88\x01\x01\x42\x1c\n\x1a_human_readable_identifierB\x08\n\x06_notes\"\x17\n\x15UpdatePatientResponse\"9\n\x10\x41ssignBedRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x15\n\x06\x62\x65\x64_id\x18\x02 \x01(\tR\x05\x62\x65\x64Id\"\x13\n\x11\x41ssignBedResponse\"$\n\x12UnassignBedRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x15\n\x13UnassignBedResponse\")\n\x17\x44ischargePatientRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x1a\n\x18\x44ischargePatientResponse\"6\n\x15ReadmitPatientRequest\x12\x1d\n\npatient_id\x18\x01 \x01(\tR\tpatientId\"\x18\n\x16ReadmitPatientResponse2\xd8\x06\n\x0ePatientService\x12x\n\rCreatePatient\x12\x31.proto.services.tasks_svc.v1.CreatePatientRequest\x1a\x32.proto.services.tasks_svc.v1.CreatePatientResponse\"\x00\x12o\n\nGetPatient\x12..proto.services.tasks_svc.v1.GetPatientRequest\x1a/.proto.services.tasks_svc.v1.GetPatientResponse\"\x00\x12x\n\rUpdatePatient\x12\x31.proto.services.tasks_svc.v1.UpdatePatientRequest\x1a\x32.proto.services.tasks_svc.v1.UpdatePatientResponse\"\x00\x12l\n\tAssignBed\x12-.proto.services.tasks_svc.v1.AssignBedRequest\x1a..proto.services.tasks_svc.v1.AssignBedResponse\"\x00\x12r\n\x0bUnassignBed\x12/.proto.services.tasks_svc.v1.UnassignBedRequest\x1a\x30.proto.services.tasks_svc.v1.UnassignBedResponse\"\x00\x12\x81\x01\n\x10\x44ischargePatient\x12\x34.proto.services.tasks_svc.v1.DischargePatientRequest\x1a\x35.proto.services.tasks_svc.v1.DischargePatientResponse\"\x00\x12{\n\x0eReadmitPatient\x12\x32.proto.services.tasks_svc.v1.ReadmitPatientRequest\x1a\x33.proto.services.tasks_svc.v1.ReadmitPatientResponse\"\x00\x42\xda\x01\n\x1f\x63om.proto.services.tasks_svc.v1B\x0fPatientSvcProtoP\x01Z\x1bgen/proto/service/tasks-svc\xa2\x02\x03PST\xaa\x02\x1aProto.Services.TasksSvc.V1\xca\x02\x1aProto\\Services\\TasksSvc\\V1\xe2\x02&Proto\\Services\\TasksSvc\\V1\\GPBMetadata\xea\x02\x1dProto::Services::TasksSvc::V1b\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'proto.services.tasks_svc.v1.patient_svc_pb2', _globals)
if _descriptor._USE_C_DESCRIPTORS == False:
  _globals['DESCRIPTOR']._options = None
  _globals['DESCRIPTOR']._serialized_options = b'\n\037com.proto.services.tasks_svc.v1B\017PatientSvcProtoP\001Z\033gen/proto/service/tasks-svc\242\002\003PST\252\002\032Proto.Services.TasksSvc.V1\312\002\032Proto\\Services\\TasksSvc\\V1\342\002&Proto\\Services\\TasksSvc\\V1\\GPBMetadata\352\002\035Proto::Services::TasksSvc::V1'
  _globals['_GETPATIENTRESPONSE'].fields_by_name['bed_id']._options = None
  _globals['_GETPATIENTRESPONSE'].fields_by_name['bed_id']._serialized_options = b'\030\001'
  _globals['_GETPATIENTRESPONSE'].fields_by_name['ward_id']._options = None
  _globals['_GETPATIENTRESPONSE'].fields_by_name['ward_id']._serialized_options = b'\030\001'
  _globals['_CREATEPATIENTREQUEST']._serialized_start=78
  _globals['_CREATEPATIENTREQUEST']._serialized_end=182
  _globals['_CREATEPATIENTRESPONSE']._serialized_start=184
  _globals['_CREATEPATIENTRESPONSE']._serialized_end=223
  _globals['_GETPATIENTREQUEST']._serialized_start=225
  _globals['_GETPATIENTREQUEST']._serialized_end=260
  _globals['_GETPATIENTRESPONSE']._serialized_start=263
  _globals['_GETPATIENTRESPONSE']._serialized_end=754
  _globals['_GETPATIENTRESPONSE_ROOM']._serialized_start=604
  _globals['_GETPATIENTRESPONSE_ROOM']._serialized_end=671
  _globals['_GETPATIENTRESPONSE_BED']._serialized_start=673
  _globals['_GETPATIENTRESPONSE_BED']._serialized_end=714
  _globals['_UPDATEPATIENTREQUEST']._serialized_start=757
  _globals['_UPDATEPATIENTREQUEST']._serialized_end=927
  _globals['_UPDATEPATIENTRESPONSE']._serialized_start=929
  _globals['_UPDATEPATIENTRESPONSE']._serialized_end=952
  _globals['_ASSIGNBEDREQUEST']._serialized_start=954
  _globals['_ASSIGNBEDREQUEST']._serialized_end=1011
  _globals['_ASSIGNBEDRESPONSE']._serialized_start=1013
  _globals['_ASSIGNBEDRESPONSE']._serialized_end=1032
  _globals['_UNASSIGNBEDREQUEST']._serialized_start=1034
  _globals['_UNASSIGNBEDREQUEST']._serialized_end=1070
  _globals['_UNASSIGNBEDRESPONSE']._serialized_start=1072
  _globals['_UNASSIGNBEDRESPONSE']._serialized_end=1093
  _globals['_DISCHARGEPATIENTREQUEST']._serialized_start=1095
  _globals['_DISCHARGEPATIENTREQUEST']._serialized_end=1136
  _globals['_DISCHARGEPATIENTRESPONSE']._serialized_start=1138
  _globals['_DISCHARGEPATIENTRESPONSE']._serialized_end=1164
  _globals['_READMITPATIENTREQUEST']._serialized_start=1166
  _globals['_READMITPATIENTREQUEST']._serialized_end=1220
  _globals['_READMITPATIENTRESPONSE']._serialized_start=1222
  _globals['_READMITPATIENTRESPONSE']._serialized_end=1246
  _globals['_PATIENTSERVICE']._serialized_start=1249
  _globals['_PATIENTSERVICE']._serialized_end=2105
# @@protoc_insertion_point(module_scope)
