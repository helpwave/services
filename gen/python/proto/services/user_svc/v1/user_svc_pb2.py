# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: proto/services/user_svc/v1/user_svc.proto
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
from google.protobuf.internal import builder as _builder
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n)proto/services/user_svc/v1/user_svc.proto\x12\x1aproto.services.user_svc.v1\"i\n\x11\x43reateUserRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x14\n\x05\x65mail\x18\x02 \x01(\tR\x05\x65mail\x12\x1a\n\x08nickname\x18\x03 \x01(\tR\x08nickname\x12\x12\n\x04name\x18\x04 \x01(\tR\x04name\"$\n\x12\x43reateUserResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"&\n\x14ReadSelfOrganization\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x11\n\x0fReadSelfRequest\"\xdd\x01\n\x10ReadSelfResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12\x1a\n\x08nickname\x18\x03 \x01(\tR\x08nickname\x12\"\n\navatar_url\x18\x04 \x01(\tH\x00R\tavatarUrl\x88\x01\x01\x12V\n\rorganizations\x18\x05 \x03(\x0b\x32\x30.proto.services.user_svc.v1.ReadSelfOrganizationR\rorganizationsB\r\n\x0b_avatar_url\"*\n\x18ReadPublicProfileRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x8e\x01\n\x19ReadPublicProfileResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12\x1a\n\x08nickname\x18\x03 \x01(\tR\x08nickname\x12\"\n\navatar_url\x18\x04 \x01(\tH\x00R\tavatarUrl\x88\x01\x01\x42\r\n\x0b_avatar_url\"#\n\x11UpdateUserRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x14\n\x12UpdateUserResponse2\xd9\x03\n\x0bUserService\x12m\n\nCreateUser\x12-.proto.services.user_svc.v1.CreateUserRequest\x1a..proto.services.user_svc.v1.CreateUserResponse\"\x00\x12g\n\x08ReadSelf\x12+.proto.services.user_svc.v1.ReadSelfRequest\x1a,.proto.services.user_svc.v1.ReadSelfResponse\"\x00\x12\x82\x01\n\x11ReadPublicProfile\x12\x34.proto.services.user_svc.v1.ReadPublicProfileRequest\x1a\x35.proto.services.user_svc.v1.ReadPublicProfileResponse\"\x00\x12m\n\nUpdateUser\x12-.proto.services.user_svc.v1.UpdateUserRequest\x1a..proto.services.user_svc.v1.UpdateUserResponse\"\x00\x42\xd2\x01\n\x1e\x63om.proto.services.user_svc.v1B\x0cUserSvcProtoP\x01Z\x1bgen/proto/services/user-svc\xa2\x02\x03PSU\xaa\x02\x19Proto.Services.UserSvc.V1\xca\x02\x19Proto\\Services\\UserSvc\\V1\xe2\x02%Proto\\Services\\UserSvc\\V1\\GPBMetadata\xea\x02\x1cProto::Services::UserSvc::V1b\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'proto.services.user_svc.v1.user_svc_pb2', _globals)
if _descriptor._USE_C_DESCRIPTORS == False:
  _globals['DESCRIPTOR']._options = None
  _globals['DESCRIPTOR']._serialized_options = b'\n\036com.proto.services.user_svc.v1B\014UserSvcProtoP\001Z\033gen/proto/services/user-svc\242\002\003PSU\252\002\031Proto.Services.UserSvc.V1\312\002\031Proto\\Services\\UserSvc\\V1\342\002%Proto\\Services\\UserSvc\\V1\\GPBMetadata\352\002\034Proto::Services::UserSvc::V1'
  _globals['_CREATEUSERREQUEST']._serialized_start=73
  _globals['_CREATEUSERREQUEST']._serialized_end=178
  _globals['_CREATEUSERRESPONSE']._serialized_start=180
  _globals['_CREATEUSERRESPONSE']._serialized_end=216
  _globals['_READSELFORGANIZATION']._serialized_start=218
  _globals['_READSELFORGANIZATION']._serialized_end=256
  _globals['_READSELFREQUEST']._serialized_start=258
  _globals['_READSELFREQUEST']._serialized_end=275
  _globals['_READSELFRESPONSE']._serialized_start=278
  _globals['_READSELFRESPONSE']._serialized_end=499
  _globals['_READPUBLICPROFILEREQUEST']._serialized_start=501
  _globals['_READPUBLICPROFILEREQUEST']._serialized_end=543
  _globals['_READPUBLICPROFILERESPONSE']._serialized_start=546
  _globals['_READPUBLICPROFILERESPONSE']._serialized_end=688
  _globals['_UPDATEUSERREQUEST']._serialized_start=690
  _globals['_UPDATEUSERREQUEST']._serialized_end=725
  _globals['_UPDATEUSERRESPONSE']._serialized_start=727
  _globals['_UPDATEUSERRESPONSE']._serialized_end=747
  _globals['_USERSERVICE']._serialized_start=750
  _globals['_USERSERVICE']._serialized_end=1223
# @@protoc_insertion_point(module_scope)
