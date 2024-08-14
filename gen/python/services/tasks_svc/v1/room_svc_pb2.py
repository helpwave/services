# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: services/tasks_svc/v1/room_svc.proto
# Protobuf Python Version: 4.25.2
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
from google.protobuf.internal import builder as _builder
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n$services/tasks_svc/v1/room_svc.proto\x12\x15services.tasks_svc.v1\"@\n\x11\x43reateRoomRequest\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12\x17\n\x07ward_id\x18\x02 \x01(\tR\x06wardId\"$\n\x12\x43reateRoomResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\" \n\x0eGetRoomRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\xb9\x01\n\x0fGetRoomResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12>\n\x04\x62\x65\x64s\x18\x03 \x03(\x0b\x32*.services.tasks_svc.v1.GetRoomResponse.BedR\x04\x62\x65\x64s\x12\x17\n\x07ward_id\x18\x05 \x01(\tR\x06wardId\x1a)\n\x03\x42\x65\x64\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\"\x11\n\x0fGetRoomsRequest\"\x8d\x02\n\x10GetRoomsResponse\x12\x42\n\x05rooms\x18\x01 \x03(\x0b\x32,.services.tasks_svc.v1.GetRoomsResponse.RoomR\x05rooms\x1a\xb4\x01\n\x04Room\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12\x44\n\x04\x62\x65\x64s\x18\x03 \x03(\x0b\x32\x30.services.tasks_svc.v1.GetRoomsResponse.Room.BedR\x04\x62\x65\x64s\x12\x17\n\x07ward_id\x18\x05 \x01(\tR\x06wardId\x1a)\n\x03\x42\x65\x64\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\"0\n\x15GetRoomsByWardRequest\x12\x17\n\x07ward_id\x18\x01 \x01(\tR\x06wardId\"\x9f\x02\n\x16GetRoomsByWardResponse\x12H\n\x05rooms\x18\x01 \x03(\x0b\x32\x32.services.tasks_svc.v1.GetRoomsByWardResponse.RoomR\x05rooms\x1a\xba\x01\n\x04Room\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12J\n\x04\x62\x65\x64s\x18\x03 \x03(\x0b\x32\x36.services.tasks_svc.v1.GetRoomsByWardResponse.Room.BedR\x04\x62\x65\x64s\x12\x17\n\x07ward_id\x18\x05 \x01(\tR\x06wardId\x1a)\n\x03\x42\x65\x64\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\"E\n\x11UpdateRoomRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x17\n\x04name\x18\x02 \x01(\tH\x00R\x04name\x88\x01\x01\x42\x07\n\x05_name\"\x14\n\x12UpdateRoomResponse\"#\n\x11\x44\x65leteRoomRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x14\n\x12\x44\x65leteRoomResponse\"/\n\x1dGetRoomOverviewsByWardRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\xe2\x04\n\x1eGetRoomOverviewsByWardResponse\x12P\n\x05rooms\x18\x01 \x03(\x0b\x32:.services.tasks_svc.v1.GetRoomOverviewsByWardResponse.RoomR\x05rooms\x1a\xed\x03\n\x04Room\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12R\n\x04\x62\x65\x64s\x18\x03 \x03(\x0b\x32>.services.tasks_svc.v1.GetRoomOverviewsByWardResponse.Room.BedR\x04\x62\x65\x64s\x1a\xec\x02\n\x03\x42\x65\x64\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x03 \x01(\tR\x04name\x12\x65\n\x07patient\x18\x02 \x01(\x0b\x32\x46.services.tasks_svc.v1.GetRoomOverviewsByWardResponse.Room.Bed.PatientH\x00R\x07patient\x88\x01\x01\x1a\xcd\x01\n\x07Patient\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12:\n\x19human_readable_identifier\x18\x02 \x01(\tR\x17humanReadableIdentifier\x12+\n\x11tasks_unscheduled\x18\x03 \x01(\rR\x10tasksUnscheduled\x12*\n\x11tasks_in_progress\x18\x04 \x01(\rR\x0ftasksInProgress\x12\x1d\n\ntasks_done\x18\x05 \x01(\rR\ttasksDoneB\n\n\x08_patient2\xf2\x05\n\x0bRoomService\x12\x63\n\nCreateRoom\x12(.services.tasks_svc.v1.CreateRoomRequest\x1a).services.tasks_svc.v1.CreateRoomResponse\"\x00\x12Z\n\x07GetRoom\x12%.services.tasks_svc.v1.GetRoomRequest\x1a&.services.tasks_svc.v1.GetRoomResponse\"\x00\x12]\n\x08GetRooms\x12&.services.tasks_svc.v1.GetRoomsRequest\x1a\'.services.tasks_svc.v1.GetRoomsResponse\"\x00\x12o\n\x0eGetRoomsByWard\x12,.services.tasks_svc.v1.GetRoomsByWardRequest\x1a-.services.tasks_svc.v1.GetRoomsByWardResponse\"\x00\x12\x63\n\nUpdateRoom\x12(.services.tasks_svc.v1.UpdateRoomRequest\x1a).services.tasks_svc.v1.UpdateRoomResponse\"\x00\x12\x63\n\nDeleteRoom\x12(.services.tasks_svc.v1.DeleteRoomRequest\x1a).services.tasks_svc.v1.DeleteRoomResponse\"\x00\x12\x87\x01\n\x16GetRoomOverviewsByWard\x12\x34.services.tasks_svc.v1.GetRoomOverviewsByWardRequest\x1a\x35.services.tasks_svc.v1.GetRoomOverviewsByWardResponse\"\x00\x42\xb9\x01\n\x19\x63om.services.tasks_svc.v1B\x0cRoomSvcProtoP\x01Z\x1cgen/proto/services/tasks-svc\xa2\x02\x03STX\xaa\x02\x14Services.TasksSvc.V1\xca\x02\x14Services\\TasksSvc\\V1\xe2\x02 Services\\TasksSvc\\V1\\GPBMetadata\xea\x02\x16Services::TasksSvc::V1b\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'services.tasks_svc.v1.room_svc_pb2', _globals)
if _descriptor._USE_C_DESCRIPTORS == False:
  _globals['DESCRIPTOR']._options = None
  _globals['DESCRIPTOR']._serialized_options = b'\n\031com.services.tasks_svc.v1B\014RoomSvcProtoP\001Z\034gen/proto/services/tasks-svc\242\002\003STX\252\002\024Services.TasksSvc.V1\312\002\024Services\\TasksSvc\\V1\342\002 Services\\TasksSvc\\V1\\GPBMetadata\352\002\026Services::TasksSvc::V1'
  _globals['_CREATEROOMREQUEST']._serialized_start=63
  _globals['_CREATEROOMREQUEST']._serialized_end=127
  _globals['_CREATEROOMRESPONSE']._serialized_start=129
  _globals['_CREATEROOMRESPONSE']._serialized_end=165
  _globals['_GETROOMREQUEST']._serialized_start=167
  _globals['_GETROOMREQUEST']._serialized_end=199
  _globals['_GETROOMRESPONSE']._serialized_start=202
  _globals['_GETROOMRESPONSE']._serialized_end=387
  _globals['_GETROOMRESPONSE_BED']._serialized_start=346
  _globals['_GETROOMRESPONSE_BED']._serialized_end=387
  _globals['_GETROOMSREQUEST']._serialized_start=389
  _globals['_GETROOMSREQUEST']._serialized_end=406
  _globals['_GETROOMSRESPONSE']._serialized_start=409
  _globals['_GETROOMSRESPONSE']._serialized_end=678
  _globals['_GETROOMSRESPONSE_ROOM']._serialized_start=498
  _globals['_GETROOMSRESPONSE_ROOM']._serialized_end=678
  _globals['_GETROOMSRESPONSE_ROOM_BED']._serialized_start=346
  _globals['_GETROOMSRESPONSE_ROOM_BED']._serialized_end=387
  _globals['_GETROOMSBYWARDREQUEST']._serialized_start=680
  _globals['_GETROOMSBYWARDREQUEST']._serialized_end=728
  _globals['_GETROOMSBYWARDRESPONSE']._serialized_start=731
  _globals['_GETROOMSBYWARDRESPONSE']._serialized_end=1018
  _globals['_GETROOMSBYWARDRESPONSE_ROOM']._serialized_start=832
  _globals['_GETROOMSBYWARDRESPONSE_ROOM']._serialized_end=1018
  _globals['_GETROOMSBYWARDRESPONSE_ROOM_BED']._serialized_start=346
  _globals['_GETROOMSBYWARDRESPONSE_ROOM_BED']._serialized_end=387
  _globals['_UPDATEROOMREQUEST']._serialized_start=1020
  _globals['_UPDATEROOMREQUEST']._serialized_end=1089
  _globals['_UPDATEROOMRESPONSE']._serialized_start=1091
  _globals['_UPDATEROOMRESPONSE']._serialized_end=1111
  _globals['_DELETEROOMREQUEST']._serialized_start=1113
  _globals['_DELETEROOMREQUEST']._serialized_end=1148
  _globals['_DELETEROOMRESPONSE']._serialized_start=1150
  _globals['_DELETEROOMRESPONSE']._serialized_end=1170
  _globals['_GETROOMOVERVIEWSBYWARDREQUEST']._serialized_start=1172
  _globals['_GETROOMOVERVIEWSBYWARDREQUEST']._serialized_end=1219
  _globals['_GETROOMOVERVIEWSBYWARDRESPONSE']._serialized_start=1222
  _globals['_GETROOMOVERVIEWSBYWARDRESPONSE']._serialized_end=1832
  _globals['_GETROOMOVERVIEWSBYWARDRESPONSE_ROOM']._serialized_start=1339
  _globals['_GETROOMOVERVIEWSBYWARDRESPONSE_ROOM']._serialized_end=1832
  _globals['_GETROOMOVERVIEWSBYWARDRESPONSE_ROOM_BED']._serialized_start=1468
  _globals['_GETROOMOVERVIEWSBYWARDRESPONSE_ROOM_BED']._serialized_end=1832
  _globals['_GETROOMOVERVIEWSBYWARDRESPONSE_ROOM_BED_PATIENT']._serialized_start=1615
  _globals['_GETROOMOVERVIEWSBYWARDRESPONSE_ROOM_BED_PATIENT']._serialized_end=1820
  _globals['_ROOMSERVICE']._serialized_start=1835
  _globals['_ROOMSERVICE']._serialized_end=2589
# @@protoc_insertion_point(module_scope)
