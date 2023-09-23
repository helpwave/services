# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: proto/services/user_svc/v1/organization_svc.proto
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
from google.protobuf.internal import builder as _builder
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n1proto/services/user_svc/v1/organization_svc.proto\x12\x1aproto.services.user_svc.v1\"\xb2\x01\n\x19\x43reateOrganizationRequest\x12\x1b\n\tlong_name\x18\x01 \x01(\tR\x08longName\x12\x1d\n\nshort_name\x18\x02 \x01(\tR\tshortName\x12#\n\rcontact_email\x18\x03 \x01(\tR\x0c\x63ontactEmail\x12$\n\x0bis_personal\x18\x04 \x01(\x08H\x00R\nisPersonal\x88\x01\x01\x42\x0e\n\x0c_is_personal\",\n\x1a\x43reateOrganizationResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\xd2\x01\n CreateOrganizationForUserRequest\x12\x1b\n\tlong_name\x18\x01 \x01(\tR\x08longName\x12\x1d\n\nshort_name\x18\x02 \x01(\tR\tshortName\x12#\n\rcontact_email\x18\x03 \x01(\tR\x0c\x63ontactEmail\x12$\n\x0bis_personal\x18\x04 \x01(\x08H\x00R\nisPersonal\x88\x01\x01\x12\x17\n\x07user_id\x18\x05 \x01(\tR\x06userIdB\x0e\n\x0c_is_personal\"3\n!CreateOrganizationForUserResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"0\n\x15GetOrganizationMember\x12\x17\n\x07user_id\x18\x01 \x01(\tR\x06userId\"(\n\x16GetOrganizationRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x97\x02\n\x17GetOrganizationResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x1b\n\tlong_name\x18\x02 \x01(\tR\x08longName\x12\x1d\n\nshort_name\x18\x03 \x01(\tR\tshortName\x12#\n\rcontact_email\x18\x04 \x01(\tR\x0c\x63ontactEmail\x12\x1d\n\navatar_url\x18\x05 \x01(\tR\tavatarUrl\x12\x1f\n\x0bis_personal\x18\x06 \x01(\x08R\nisPersonal\x12K\n\x07members\x18\x07 \x03(\x0b\x32\x31.proto.services.user_svc.v1.GetOrganizationMemberR\x07members\"8\n\x1dGetOrganizationsByUserRequest\x12\x17\n\x07user_id\x18\x01 \x01(\tR\x06userId\"\xaf\x04\n\x1eGetOrganizationsByUserResponse\x12m\n\rorganizations\x18\x01 \x03(\x0b\x32G.proto.services.user_svc.v1.GetOrganizationsByUserResponse.OrganizationR\rorganizations\x1a\x9d\x03\n\x0cOrganization\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x1b\n\tlong_name\x18\x02 \x01(\tR\x08longName\x12\x1d\n\nshort_name\x18\x03 \x01(\tR\tshortName\x12#\n\rcontact_email\x18\x04 \x01(\tR\x0c\x63ontactEmail\x12\x1d\n\navatar_url\x18\x05 \x01(\tR\tavatarUrl\x12\x1f\n\x0bis_personal\x18\x06 \x01(\x08R\nisPersonal\x12h\n\x07members\x18\x07 \x03(\x0b\x32N.proto.services.user_svc.v1.GetOrganizationsByUserResponse.Organization.MemberR\x07members\x1ar\n\x06Member\x12\x17\n\x07user_id\x18\x01 \x01(\tR\x06userId\x12\x14\n\x05\x65mail\x18\x02 \x01(\tR\x05\x65mail\x12\x1a\n\x08nickname\x18\x03 \x01(\tR\x08nickname\x12\x1d\n\navatar_url\x18\x04 \x01(\tR\tavatarUrl\" \n\x1eGetOrganizationsForUserRequest\"\xb2\x04\n\x1fGetOrganizationsForUserResponse\x12n\n\rorganizations\x18\x01 \x03(\x0b\x32H.proto.services.user_svc.v1.GetOrganizationsForUserResponse.OrganizationR\rorganizations\x1a\x9e\x03\n\x0cOrganization\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x1b\n\tlong_name\x18\x02 \x01(\tR\x08longName\x12\x1d\n\nshort_name\x18\x03 \x01(\tR\tshortName\x12#\n\rcontact_email\x18\x04 \x01(\tR\x0c\x63ontactEmail\x12\x1d\n\navatar_url\x18\x05 \x01(\tR\tavatarUrl\x12\x1f\n\x0bis_personal\x18\x06 \x01(\x08R\nisPersonal\x12i\n\x07members\x18\x07 \x03(\x0b\x32O.proto.services.user_svc.v1.GetOrganizationsForUserResponse.Organization.MemberR\x07members\x1ar\n\x06Member\x12\x17\n\x07user_id\x18\x01 \x01(\tR\x06userId\x12\x14\n\x05\x65mail\x18\x02 \x01(\tR\x05\x65mail\x12\x1a\n\x08nickname\x18\x03 \x01(\tR\x08nickname\x12\x1d\n\navatar_url\x18\x04 \x01(\tR\tavatarUrl\"\xb3\x02\n\x19UpdateOrganizationRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12 \n\tlong_name\x18\x02 \x01(\tH\x00R\x08longName\x88\x01\x01\x12\"\n\nshort_name\x18\x03 \x01(\tH\x01R\tshortName\x88\x01\x01\x12(\n\rcontact_email\x18\x04 \x01(\tH\x02R\x0c\x63ontactEmail\x88\x01\x01\x12\"\n\navatar_url\x18\x05 \x01(\tH\x03R\tavatarUrl\x88\x01\x01\x12$\n\x0bis_personal\x18\x06 \x01(\x08H\x04R\nisPersonal\x88\x01\x01\x42\x0c\n\n_long_nameB\r\n\x0b_short_nameB\x10\n\x0e_contact_emailB\r\n\x0b_avatar_urlB\x0e\n\x0c_is_personal\"\x1c\n\x1aUpdateOrganizationResponse\"+\n\x19\x44\x65leteOrganizationRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\x1c\n\x1a\x44\x65leteOrganizationResponse\"1\n\x1fGetMembersByOrganizationRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\xf5\x01\n GetMembersByOrganizationResponse\x12]\n\x07members\x18\x01 \x03(\x0b\x32\x43.proto.services.user_svc.v1.GetMembersByOrganizationResponse.MemberR\x07members\x1ar\n\x06Member\x12\x17\n\x07user_id\x18\x01 \x01(\tR\x06userId\x12\x14\n\x05\x65mail\x18\x02 \x01(\tR\x05\x65mail\x12\x1a\n\x08nickname\x18\x03 \x01(\tR\x08nickname\x12\x1d\n\navatar_url\x18\x04 \x01(\tR\tavatarUrl\";\n\x10\x41\x64\x64MemberRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x17\n\x07user_id\x18\x02 \x01(\tR\x06userId\"\x13\n\x11\x41\x64\x64MemberResponse\">\n\x13RemoveMemberRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x17\n\x07user_id\x18\x02 \x01(\tR\x06userId\"\x16\n\x14RemoveMemberResponse\"T\n\x13InviteMemberRequest\x12\'\n\x0forganization_id\x18\x01 \x01(\tR\x0eorganizationId\x12\x14\n\x05\x65mail\x18\x02 \x01(\tR\x05\x65mail\"&\n\x14InviteMemberResponse\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"\xa0\x01\n#GetInvitationsByOrganizationRequest\x12\'\n\x0forganization_id\x18\x01 \x01(\tR\x0eorganizationId\x12\x46\n\x05state\x18\x02 \x01(\x0e\x32+.proto.services.user_svc.v1.InvitationStateH\x00R\x05state\x88\x01\x01\x42\x08\n\x06_state\"\xb6\x02\n$GetInvitationsByOrganizationResponse\x12m\n\x0binvitations\x18\x01 \x03(\x0b\x32K.proto.services.user_svc.v1.GetInvitationsByOrganizationResponse.InvitationR\x0binvitations\x1a\x9e\x01\n\nInvitation\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x14\n\x05\x65mail\x18\x02 \x01(\tR\x05\x65mail\x12\'\n\x0forganization_id\x18\x03 \x01(\tR\x0eorganizationId\x12\x41\n\x05state\x18\x04 \x01(\x0e\x32+.proto.services.user_svc.v1.InvitationStateR\x05state\"o\n\x1bGetInvitationsByUserRequest\x12\x46\n\x05state\x18\x01 \x01(\x0e\x32+.proto.services.user_svc.v1.InvitationStateH\x00R\x05state\x88\x01\x01\x42\x08\n\x06_state\"\xcf\x03\n\x1cGetInvitationsByUserResponse\x12\x65\n\x0binvitations\x18\x01 \x03(\x0b\x32\x43.proto.services.user_svc.v1.GetInvitationsByUserResponse.InvitationR\x0binvitations\x1a\xc7\x02\n\nInvitation\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x14\n\x05\x65mail\x18\x02 \x01(\tR\x05\x65mail\x12t\n\x0corganization\x18\x03 \x01(\x0b\x32P.proto.services.user_svc.v1.GetInvitationsByUserResponse.Invitation.OrganizationR\x0corganization\x12\x41\n\x05state\x18\x04 \x01(\x0e\x32+.proto.services.user_svc.v1.InvitationStateR\x05state\x1aZ\n\x0cOrganization\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x1b\n\tlong_name\x18\x02 \x01(\tR\x08longName\x12\x1d\n\navatar_url\x18\x03 \x01(\tR\tavatarUrl\">\n\x17\x41\x63\x63\x65ptInvitationRequest\x12#\n\rinvitation_id\x18\x01 \x01(\tR\x0cinvitationId\"\x1a\n\x18\x41\x63\x63\x65ptInvitationResponse\"?\n\x18\x44\x65\x63lineInvitationRequest\x12#\n\rinvitation_id\x18\x01 \x01(\tR\x0cinvitationId\"\x1b\n\x19\x44\x65\x63lineInvitationResponse\">\n\x17RevokeInvitationRequest\x12#\n\rinvitation_id\x18\x01 \x01(\tR\x0cinvitationId\"\x1a\n\x18RevokeInvitationResponse*\xad\x01\n\x0fInvitationState\x12 \n\x1cINVITATION_STATE_UNSPECIFIED\x10\x00\x12\x1c\n\x18INVITATION_STATE_PENDING\x10\x01\x12\x1d\n\x19INVITATION_STATE_ACCEPTED\x10\x02\x12\x1d\n\x19INVITATION_STATE_REJECTED\x10\x03\x12\x1c\n\x18INVITATION_STATE_REVOKED\x10\x04\x32\x9e\x11\n\x13OrganizationService\x12\x85\x01\n\x12\x43reateOrganization\x12\x35.proto.services.user_svc.v1.CreateOrganizationRequest\x1a\x36.proto.services.user_svc.v1.CreateOrganizationResponse\"\x00\x12\x9a\x01\n\x19\x43reateOrganizationForUser\x12<.proto.services.user_svc.v1.CreateOrganizationForUserRequest\x1a=.proto.services.user_svc.v1.CreateOrganizationForUserResponse\"\x00\x12|\n\x0fGetOrganization\x12\x32.proto.services.user_svc.v1.GetOrganizationRequest\x1a\x33.proto.services.user_svc.v1.GetOrganizationResponse\"\x00\x12\x91\x01\n\x16GetOrganizationsByUser\x12\x39.proto.services.user_svc.v1.GetOrganizationsByUserRequest\x1a:.proto.services.user_svc.v1.GetOrganizationsByUserResponse\"\x00\x12\x94\x01\n\x17GetOrganizationsForUser\x12:.proto.services.user_svc.v1.GetOrganizationsForUserRequest\x1a;.proto.services.user_svc.v1.GetOrganizationsForUserResponse\"\x00\x12\x85\x01\n\x12UpdateOrganization\x12\x35.proto.services.user_svc.v1.UpdateOrganizationRequest\x1a\x36.proto.services.user_svc.v1.UpdateOrganizationResponse\"\x00\x12\x85\x01\n\x12\x44\x65leteOrganization\x12\x35.proto.services.user_svc.v1.DeleteOrganizationRequest\x1a\x36.proto.services.user_svc.v1.DeleteOrganizationResponse\"\x00\x12\x97\x01\n\x18GetMembersByOrganization\x12;.proto.services.user_svc.v1.GetMembersByOrganizationRequest\x1a<.proto.services.user_svc.v1.GetMembersByOrganizationResponse\"\x00\x12j\n\tAddMember\x12,.proto.services.user_svc.v1.AddMemberRequest\x1a-.proto.services.user_svc.v1.AddMemberResponse\"\x00\x12s\n\x0cRemoveMember\x12/.proto.services.user_svc.v1.RemoveMemberRequest\x1a\x30.proto.services.user_svc.v1.RemoveMemberResponse\"\x00\x12s\n\x0cInviteMember\x12/.proto.services.user_svc.v1.InviteMemberRequest\x1a\x30.proto.services.user_svc.v1.InviteMemberResponse\"\x00\x12\xa3\x01\n\x1cGetInvitationsByOrganization\x12?.proto.services.user_svc.v1.GetInvitationsByOrganizationRequest\x1a@.proto.services.user_svc.v1.GetInvitationsByOrganizationResponse\"\x00\x12\x8b\x01\n\x14GetInvitationsByUser\x12\x37.proto.services.user_svc.v1.GetInvitationsByUserRequest\x1a\x38.proto.services.user_svc.v1.GetInvitationsByUserResponse\"\x00\x12\x7f\n\x10\x41\x63\x63\x65ptInvitation\x12\x33.proto.services.user_svc.v1.AcceptInvitationRequest\x1a\x34.proto.services.user_svc.v1.AcceptInvitationResponse\"\x00\x12\x82\x01\n\x11\x44\x65\x63lineInvitation\x12\x34.proto.services.user_svc.v1.DeclineInvitationRequest\x1a\x35.proto.services.user_svc.v1.DeclineInvitationResponse\"\x00\x12\x7f\n\x10RevokeInvitation\x12\x33.proto.services.user_svc.v1.RevokeInvitationRequest\x1a\x34.proto.services.user_svc.v1.RevokeInvitationResponse\"\x00\x42\xda\x01\n\x1e\x63om.proto.services.user_svc.v1B\x14OrganizationSvcProtoP\x01Z\x1bgen/proto/services/user-svc\xa2\x02\x03PSU\xaa\x02\x19Proto.Services.UserSvc.V1\xca\x02\x19Proto\\Services\\UserSvc\\V1\xe2\x02%Proto\\Services\\UserSvc\\V1\\GPBMetadata\xea\x02\x1cProto::Services::UserSvc::V1b\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'proto.services.user_svc.v1.organization_svc_pb2', _globals)
if _descriptor._USE_C_DESCRIPTORS == False:
  DESCRIPTOR._options = None
  DESCRIPTOR._serialized_options = b'\n\036com.proto.services.user_svc.v1B\024OrganizationSvcProtoP\001Z\033gen/proto/services/user-svc\242\002\003PSU\252\002\031Proto.Services.UserSvc.V1\312\002\031Proto\\Services\\UserSvc\\V1\342\002%Proto\\Services\\UserSvc\\V1\\GPBMetadata\352\002\034Proto::Services::UserSvc::V1'
  _globals['_INVITATIONSTATE']._serialized_start=4511
  _globals['_INVITATIONSTATE']._serialized_end=4684
  _globals['_CREATEORGANIZATIONREQUEST']._serialized_start=82
  _globals['_CREATEORGANIZATIONREQUEST']._serialized_end=260
  _globals['_CREATEORGANIZATIONRESPONSE']._serialized_start=262
  _globals['_CREATEORGANIZATIONRESPONSE']._serialized_end=306
  _globals['_CREATEORGANIZATIONFORUSERREQUEST']._serialized_start=309
  _globals['_CREATEORGANIZATIONFORUSERREQUEST']._serialized_end=519
  _globals['_CREATEORGANIZATIONFORUSERRESPONSE']._serialized_start=521
  _globals['_CREATEORGANIZATIONFORUSERRESPONSE']._serialized_end=572
  _globals['_GETORGANIZATIONMEMBER']._serialized_start=574
  _globals['_GETORGANIZATIONMEMBER']._serialized_end=622
  _globals['_GETORGANIZATIONREQUEST']._serialized_start=624
  _globals['_GETORGANIZATIONREQUEST']._serialized_end=664
  _globals['_GETORGANIZATIONRESPONSE']._serialized_start=667
  _globals['_GETORGANIZATIONRESPONSE']._serialized_end=946
  _globals['_GETORGANIZATIONSBYUSERREQUEST']._serialized_start=948
  _globals['_GETORGANIZATIONSBYUSERREQUEST']._serialized_end=1004
  _globals['_GETORGANIZATIONSBYUSERRESPONSE']._serialized_start=1007
  _globals['_GETORGANIZATIONSBYUSERRESPONSE']._serialized_end=1566
  _globals['_GETORGANIZATIONSBYUSERRESPONSE_ORGANIZATION']._serialized_start=1153
  _globals['_GETORGANIZATIONSBYUSERRESPONSE_ORGANIZATION']._serialized_end=1566
  _globals['_GETORGANIZATIONSBYUSERRESPONSE_ORGANIZATION_MEMBER']._serialized_start=1452
  _globals['_GETORGANIZATIONSBYUSERRESPONSE_ORGANIZATION_MEMBER']._serialized_end=1566
  _globals['_GETORGANIZATIONSFORUSERREQUEST']._serialized_start=1568
  _globals['_GETORGANIZATIONSFORUSERREQUEST']._serialized_end=1600
  _globals['_GETORGANIZATIONSFORUSERRESPONSE']._serialized_start=1603
  _globals['_GETORGANIZATIONSFORUSERRESPONSE']._serialized_end=2165
  _globals['_GETORGANIZATIONSFORUSERRESPONSE_ORGANIZATION']._serialized_start=1751
  _globals['_GETORGANIZATIONSFORUSERRESPONSE_ORGANIZATION']._serialized_end=2165
  _globals['_GETORGANIZATIONSFORUSERRESPONSE_ORGANIZATION_MEMBER']._serialized_start=1452
  _globals['_GETORGANIZATIONSFORUSERRESPONSE_ORGANIZATION_MEMBER']._serialized_end=1566
  _globals['_UPDATEORGANIZATIONREQUEST']._serialized_start=2168
  _globals['_UPDATEORGANIZATIONREQUEST']._serialized_end=2475
  _globals['_UPDATEORGANIZATIONRESPONSE']._serialized_start=2477
  _globals['_UPDATEORGANIZATIONRESPONSE']._serialized_end=2505
  _globals['_DELETEORGANIZATIONREQUEST']._serialized_start=2507
  _globals['_DELETEORGANIZATIONREQUEST']._serialized_end=2550
  _globals['_DELETEORGANIZATIONRESPONSE']._serialized_start=2552
  _globals['_DELETEORGANIZATIONRESPONSE']._serialized_end=2580
  _globals['_GETMEMBERSBYORGANIZATIONREQUEST']._serialized_start=2582
  _globals['_GETMEMBERSBYORGANIZATIONREQUEST']._serialized_end=2631
  _globals['_GETMEMBERSBYORGANIZATIONRESPONSE']._serialized_start=2634
  _globals['_GETMEMBERSBYORGANIZATIONRESPONSE']._serialized_end=2879
  _globals['_GETMEMBERSBYORGANIZATIONRESPONSE_MEMBER']._serialized_start=1452
  _globals['_GETMEMBERSBYORGANIZATIONRESPONSE_MEMBER']._serialized_end=1566
  _globals['_ADDMEMBERREQUEST']._serialized_start=2881
  _globals['_ADDMEMBERREQUEST']._serialized_end=2940
  _globals['_ADDMEMBERRESPONSE']._serialized_start=2942
  _globals['_ADDMEMBERRESPONSE']._serialized_end=2961
  _globals['_REMOVEMEMBERREQUEST']._serialized_start=2963
  _globals['_REMOVEMEMBERREQUEST']._serialized_end=3025
  _globals['_REMOVEMEMBERRESPONSE']._serialized_start=3027
  _globals['_REMOVEMEMBERRESPONSE']._serialized_end=3049
  _globals['_INVITEMEMBERREQUEST']._serialized_start=3051
  _globals['_INVITEMEMBERREQUEST']._serialized_end=3135
  _globals['_INVITEMEMBERRESPONSE']._serialized_start=3137
  _globals['_INVITEMEMBERRESPONSE']._serialized_end=3175
  _globals['_GETINVITATIONSBYORGANIZATIONREQUEST']._serialized_start=3178
  _globals['_GETINVITATIONSBYORGANIZATIONREQUEST']._serialized_end=3338
  _globals['_GETINVITATIONSBYORGANIZATIONRESPONSE']._serialized_start=3341
  _globals['_GETINVITATIONSBYORGANIZATIONRESPONSE']._serialized_end=3651
  _globals['_GETINVITATIONSBYORGANIZATIONRESPONSE_INVITATION']._serialized_start=3493
  _globals['_GETINVITATIONSBYORGANIZATIONRESPONSE_INVITATION']._serialized_end=3651
  _globals['_GETINVITATIONSBYUSERREQUEST']._serialized_start=3653
  _globals['_GETINVITATIONSBYUSERREQUEST']._serialized_end=3764
  _globals['_GETINVITATIONSBYUSERRESPONSE']._serialized_start=3767
  _globals['_GETINVITATIONSBYUSERRESPONSE']._serialized_end=4230
  _globals['_GETINVITATIONSBYUSERRESPONSE_INVITATION']._serialized_start=3903
  _globals['_GETINVITATIONSBYUSERRESPONSE_INVITATION']._serialized_end=4230
  _globals['_GETINVITATIONSBYUSERRESPONSE_INVITATION_ORGANIZATION']._serialized_start=4140
  _globals['_GETINVITATIONSBYUSERRESPONSE_INVITATION_ORGANIZATION']._serialized_end=4230
  _globals['_ACCEPTINVITATIONREQUEST']._serialized_start=4232
  _globals['_ACCEPTINVITATIONREQUEST']._serialized_end=4294
  _globals['_ACCEPTINVITATIONRESPONSE']._serialized_start=4296
  _globals['_ACCEPTINVITATIONRESPONSE']._serialized_end=4322
  _globals['_DECLINEINVITATIONREQUEST']._serialized_start=4324
  _globals['_DECLINEINVITATIONREQUEST']._serialized_end=4387
  _globals['_DECLINEINVITATIONRESPONSE']._serialized_start=4389
  _globals['_DECLINEINVITATIONRESPONSE']._serialized_end=4416
  _globals['_REVOKEINVITATIONREQUEST']._serialized_start=4418
  _globals['_REVOKEINVITATIONREQUEST']._serialized_end=4480
  _globals['_REVOKEINVITATIONRESPONSE']._serialized_start=4482
  _globals['_REVOKEINVITATIONRESPONSE']._serialized_end=4508
  _globals['_ORGANIZATIONSERVICE']._serialized_start=4687
  _globals['_ORGANIZATIONSERVICE']._serialized_end=6893
# @@protoc_insertion_point(module_scope)
