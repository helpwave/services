//
//  Generated code. Do not modify.
//  source: proto/services/impulse_svc/v1/impulse_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use challengeTypeDescriptor instead')
const ChallengeType$json = {
  '1': 'ChallengeType',
  '2': [
    {'1': 'CHALLENGE_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'CHALLENGE_TYPE_DAILY', '2': 1},
    {'1': 'CHALLENGE_TYPE_QUEST', '2': 2},
  ],
};

/// Descriptor for `ChallengeType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List challengeTypeDescriptor = $convert.base64Decode(
    'Cg1DaGFsbGVuZ2VUeXBlEh4KGkNIQUxMRU5HRV9UWVBFX1VOU1BFQ0lGSUVEEAASGAoUQ0hBTE'
    'xFTkdFX1RZUEVfREFJTFkQARIYChRDSEFMTEVOR0VfVFlQRV9RVUVTVBAC');

@$core.Deprecated('Use challengeCategoryDescriptor instead')
const ChallengeCategory$json = {
  '1': 'ChallengeCategory',
  '2': [
    {'1': 'CHALLENGE_CATEGORY_UNSPECIFIED', '2': 0},
    {'1': 'CHALLENGE_CATEGORY_FOOD', '2': 1},
    {'1': 'CHALLENGE_CATEGORY_FITNESS', '2': 2},
  ],
};

/// Descriptor for `ChallengeCategory`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List challengeCategoryDescriptor = $convert.base64Decode(
    'ChFDaGFsbGVuZ2VDYXRlZ29yeRIiCh5DSEFMTEVOR0VfQ0FURUdPUllfVU5TUEVDSUZJRUQQAB'
    'IbChdDSEFMTEVOR0VfQ0FURUdPUllfRk9PRBABEh4KGkNIQUxMRU5HRV9DQVRFR09SWV9GSVRO'
    'RVNTEAI=');

@$core.Deprecated('Use genderDescriptor instead')
const Gender$json = {
  '1': 'Gender',
  '2': [
    {'1': 'GENDER_UNSPECIFIED', '2': 0},
    {'1': 'GENDER_MALE', '2': 1},
    {'1': 'GENDER_FEMALE', '2': 2},
    {'1': 'GENDER_DIVERSE', '2': 3},
  ],
};

/// Descriptor for `Gender`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List genderDescriptor = $convert.base64Decode(
    'CgZHZW5kZXISFgoSR0VOREVSX1VOU1BFQ0lGSUVEEAASDwoLR0VOREVSX01BTEUQARIRCg1HRU'
    '5ERVJfRkVNQUxFEAISEgoOR0VOREVSX0RJVkVSU0UQAw==');

@$core.Deprecated('Use stringVerificationTypeDescriptor instead')
const StringVerificationType$json = {
  '1': 'StringVerificationType',
  '2': [
    {'1': 'STRING_VERIFICATION_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'STRING_VERIFICATION_TYPE_QR', '2': 1},
  ],
};

/// Descriptor for `StringVerificationType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List stringVerificationTypeDescriptor = $convert.base64Decode(
    'ChZTdHJpbmdWZXJpZmljYXRpb25UeXBlEigKJFNUUklOR19WRVJJRklDQVRJT05fVFlQRV9VTl'
    'NQRUNJRklFRBAAEh8KG1NUUklOR19WRVJJRklDQVRJT05fVFlQRV9RUhAB');

@$core.Deprecated('Use integerVerificationTypeDescriptor instead')
const IntegerVerificationType$json = {
  '1': 'IntegerVerificationType',
  '2': [
    {'1': 'INTEGER_VERIFICATION_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'INTEGER_VERIFICATION_TYPE_TIMER', '2': 1},
    {'1': 'INTEGER_VERIFICATION_TYPE_NUMBER', '2': 2},
  ],
};

/// Descriptor for `IntegerVerificationType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List integerVerificationTypeDescriptor = $convert.base64Decode(
    'ChdJbnRlZ2VyVmVyaWZpY2F0aW9uVHlwZRIpCiVJTlRFR0VSX1ZFUklGSUNBVElPTl9UWVBFX1'
    'VOU1BFQ0lGSUVEEAASIwofSU5URUdFUl9WRVJJRklDQVRJT05fVFlQRV9USU1FUhABEiQKIElO'
    'VEVHRVJfVkVSSUZJQ0FUSU9OX1RZUEVfTlVNQkVSEAI=');

@$core.Deprecated('Use createUserRequestDescriptor instead')
const CreateUserRequest$json = {
  '1': 'CreateUserRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'gender', '3': 2, '4': 1, '5': 14, '6': '.proto.services.impulse_svc.v1.Gender', '10': 'gender'},
    {'1': 'birthday', '3': 3, '4': 1, '5': 9, '10': 'birthday'},
    {'1': 'pal', '3': 4, '4': 1, '5': 2, '10': 'pal'},
    {'1': 'length', '3': 5, '4': 1, '5': 5, '10': 'length'},
    {'1': 'weight', '3': 6, '4': 1, '5': 2, '10': 'weight'},
  ],
};

/// Descriptor for `CreateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVVc2VyUmVxdWVzdBIaCgh1c2VybmFtZRgBIAEoCVIIdXNlcm5hbWUSPQoGZ2VuZG'
    'VyGAIgASgOMiUucHJvdG8uc2VydmljZXMuaW1wdWxzZV9zdmMudjEuR2VuZGVyUgZnZW5kZXIS'
    'GgoIYmlydGhkYXkYAyABKAlSCGJpcnRoZGF5EhAKA3BhbBgEIAEoAlIDcGFsEhYKBmxlbmd0aB'
    'gFIAEoBVIGbGVuZ3RoEhYKBndlaWdodBgGIAEoAlIGd2VpZ2h0');

@$core.Deprecated('Use createUserResponseDescriptor instead')
const CreateUserResponse$json = {
  '1': 'CreateUserResponse',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `CreateUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVVc2VyUmVzcG9uc2USFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklk');

@$core.Deprecated('Use updateUserRequestDescriptor instead')
const UpdateUserRequest$json = {
  '1': 'UpdateUserRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'team_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'teamId', '17': true},
    {'1': 'gender', '3': 3, '4': 1, '5': 14, '6': '.proto.services.impulse_svc.v1.Gender', '9': 1, '10': 'gender', '17': true},
    {'1': 'birthday', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'birthday', '17': true},
    {'1': 'pal', '3': 5, '4': 1, '5': 2, '9': 3, '10': 'pal', '17': true},
    {'1': 'length', '3': 6, '4': 1, '5': 5, '9': 4, '10': 'length', '17': true},
    {'1': 'weight', '3': 7, '4': 1, '5': 2, '9': 5, '10': 'weight', '17': true},
  ],
  '8': [
    {'1': '_team_id'},
    {'1': '_gender'},
    {'1': '_birthday'},
    {'1': '_pal'},
    {'1': '_length'},
    {'1': '_weight'},
  ],
};

/// Descriptor for `UpdateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVVc2VyUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySWQSHAoHdGVhbV9pZB'
    'gCIAEoCUgAUgZ0ZWFtSWSIAQESQgoGZ2VuZGVyGAMgASgOMiUucHJvdG8uc2VydmljZXMuaW1w'
    'dWxzZV9zdmMudjEuR2VuZGVySAFSBmdlbmRlcogBARIfCghiaXJ0aGRheRgEIAEoCUgCUghiaX'
    'J0aGRheYgBARIVCgNwYWwYBSABKAJIA1IDcGFsiAEBEhsKBmxlbmd0aBgGIAEoBUgEUgZsZW5n'
    'dGiIAQESGwoGd2VpZ2h0GAcgASgCSAVSBndlaWdodIgBAUIKCghfdGVhbV9pZEIJCgdfZ2VuZG'
    'VyQgsKCV9iaXJ0aGRheUIGCgRfcGFsQgkKB19sZW5ndGhCCQoHX3dlaWdodA==');

@$core.Deprecated('Use updateUserResponseDescriptor instead')
const UpdateUserResponse$json = {
  '1': 'UpdateUserResponse',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'team_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'teamId', '17': true},
    {'1': 'gender', '3': 3, '4': 1, '5': 14, '6': '.proto.services.impulse_svc.v1.Gender', '10': 'gender'},
    {'1': 'birthday', '3': 4, '4': 1, '5': 9, '10': 'birthday'},
    {'1': 'pal', '3': 5, '4': 1, '5': 2, '10': 'pal'},
    {'1': 'length', '3': 6, '4': 1, '5': 5, '10': 'length'},
    {'1': 'weight', '3': 7, '4': 1, '5': 2, '10': 'weight'},
  ],
  '8': [
    {'1': '_team_id'},
  ],
};

/// Descriptor for `UpdateUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserResponseDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVVc2VyUmVzcG9uc2USFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklkEhwKB3RlYW1faW'
    'QYAiABKAlIAFIGdGVhbUlkiAEBEj0KBmdlbmRlchgDIAEoDjIlLnByb3RvLnNlcnZpY2VzLmlt'
    'cHVsc2Vfc3ZjLnYxLkdlbmRlclIGZ2VuZGVyEhoKCGJpcnRoZGF5GAQgASgJUghiaXJ0aGRheR'
    'IQCgNwYWwYBSABKAJSA3BhbBIWCgZsZW5ndGgYBiABKAVSBmxlbmd0aBIWCgZ3ZWlnaHQYByAB'
    'KAJSBndlaWdodEIKCghfdGVhbV9pZA==');

@$core.Deprecated('Use getAllTeamsRequestDescriptor instead')
const GetAllTeamsRequest$json = {
  '1': 'GetAllTeamsRequest',
};

/// Descriptor for `GetAllTeamsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllTeamsRequestDescriptor = $convert.base64Decode(
    'ChJHZXRBbGxUZWFtc1JlcXVlc3Q=');

@$core.Deprecated('Use getAllTeamsResponseDescriptor instead')
const GetAllTeamsResponse$json = {
  '1': 'GetAllTeamsResponse',
  '2': [
    {'1': 'teams', '3': 1, '4': 3, '5': 11, '6': '.proto.services.impulse_svc.v1.GetAllTeamsResponse.Team', '10': 'teams'},
  ],
  '3': [GetAllTeamsResponse_Team$json],
};

@$core.Deprecated('Use getAllTeamsResponseDescriptor instead')
const GetAllTeamsResponse_Team$json = {
  '1': 'Team',
  '2': [
    {'1': 'team_id', '3': 1, '4': 1, '5': 9, '10': 'teamId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `GetAllTeamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllTeamsResponseDescriptor = $convert.base64Decode(
    'ChNHZXRBbGxUZWFtc1Jlc3BvbnNlEk0KBXRlYW1zGAEgAygLMjcucHJvdG8uc2VydmljZXMuaW'
    '1wdWxzZV9zdmMudjEuR2V0QWxsVGVhbXNSZXNwb25zZS5UZWFtUgV0ZWFtcxpVCgRUZWFtEhcK'
    'B3RlYW1faWQYASABKAlSBnRlYW1JZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW'
    '9uGAMgASgJUgtkZXNjcmlwdGlvbg==');

@$core.Deprecated('Use trackChallengeRequestDescriptor instead')
const TrackChallengeRequest$json = {
  '1': 'TrackChallengeRequest',
  '2': [
    {'1': 'challenge_id', '3': 1, '4': 1, '5': 9, '10': 'challengeId'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'score', '3': 3, '4': 1, '5': 4, '10': 'score'},
    {'1': 'done_at', '3': 4, '4': 1, '5': 9, '10': 'doneAt'},
  ],
};

/// Descriptor for `TrackChallengeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List trackChallengeRequestDescriptor = $convert.base64Decode(
    'ChVUcmFja0NoYWxsZW5nZVJlcXVlc3QSIQoMY2hhbGxlbmdlX2lkGAEgASgJUgtjaGFsbGVuZ2'
    'VJZBIXCgd1c2VyX2lkGAIgASgJUgZ1c2VySWQSFAoFc2NvcmUYAyABKARSBXNjb3JlEhcKB2Rv'
    'bmVfYXQYBCABKAlSBmRvbmVBdA==');

@$core.Deprecated('Use trackChallengeResponseDescriptor instead')
const TrackChallengeResponse$json = {
  '1': 'TrackChallengeResponse',
  '2': [
    {'1': 'challenge_id', '3': 1, '4': 1, '5': 9, '10': 'challengeId'},
  ],
};

/// Descriptor for `TrackChallengeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List trackChallengeResponseDescriptor = $convert.base64Decode(
    'ChZUcmFja0NoYWxsZW5nZVJlc3BvbnNlEiEKDGNoYWxsZW5nZV9pZBgBIAEoCVILY2hhbGxlbm'
    'dlSWQ=');

@$core.Deprecated('Use getActiveChallengesRequestDescriptor instead')
const GetActiveChallengesRequest$json = {
  '1': 'GetActiveChallengesRequest',
};

/// Descriptor for `GetActiveChallengesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getActiveChallengesRequestDescriptor = $convert.base64Decode(
    'ChpHZXRBY3RpdmVDaGFsbGVuZ2VzUmVxdWVzdA==');

@$core.Deprecated('Use getActiveChallengesResponseDescriptor instead')
const GetActiveChallengesResponse$json = {
  '1': 'GetActiveChallengesResponse',
  '2': [
    {'1': 'challenges', '3': 1, '4': 3, '5': 11, '6': '.proto.services.impulse_svc.v1.GetActiveChallengesResponse.Challenge', '10': 'challenges'},
  ],
  '3': [GetActiveChallengesResponse_Challenge$json],
};

@$core.Deprecated('Use getActiveChallengesResponseDescriptor instead')
const GetActiveChallengesResponse_Challenge$json = {
  '1': 'Challenge',
  '2': [
    {'1': 'challenge_id', '3': 1, '4': 1, '5': 9, '10': 'challengeId'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'start_at', '3': 4, '4': 1, '5': 9, '10': 'startAt'},
    {'1': 'end_at', '3': 5, '4': 1, '5': 9, '10': 'endAt'},
    {'1': 'category', '3': 6, '4': 1, '5': 14, '6': '.proto.services.impulse_svc.v1.ChallengeCategory', '10': 'category'},
    {'1': 'type', '3': 7, '4': 1, '5': 14, '6': '.proto.services.impulse_svc.v1.ChallengeType', '10': 'type'},
    {'1': 'threshold', '3': 8, '4': 1, '5': 4, '10': 'threshold'},
    {'1': 'points', '3': 9, '4': 1, '5': 4, '10': 'points'},
    {'1': 'unit', '3': 10, '4': 1, '5': 9, '10': 'unit'},
  ],
};

/// Descriptor for `GetActiveChallengesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getActiveChallengesResponseDescriptor = $convert.base64Decode(
    'ChtHZXRBY3RpdmVDaGFsbGVuZ2VzUmVzcG9uc2USZAoKY2hhbGxlbmdlcxgBIAMoCzJELnByb3'
    'RvLnNlcnZpY2VzLmltcHVsc2Vfc3ZjLnYxLkdldEFjdGl2ZUNoYWxsZW5nZXNSZXNwb25zZS5D'
    'aGFsbGVuZ2VSCmNoYWxsZW5nZXMa8gIKCUNoYWxsZW5nZRIhCgxjaGFsbGVuZ2VfaWQYASABKA'
    'lSC2NoYWxsZW5nZUlkEhQKBXRpdGxlGAIgASgJUgV0aXRsZRIgCgtkZXNjcmlwdGlvbhgDIAEo'
    'CVILZGVzY3JpcHRpb24SGQoIc3RhcnRfYXQYBCABKAlSB3N0YXJ0QXQSFQoGZW5kX2F0GAUgAS'
    'gJUgVlbmRBdBJMCghjYXRlZ29yeRgGIAEoDjIwLnByb3RvLnNlcnZpY2VzLmltcHVsc2Vfc3Zj'
    'LnYxLkNoYWxsZW5nZUNhdGVnb3J5UghjYXRlZ29yeRJACgR0eXBlGAcgASgOMiwucHJvdG8uc2'
    'VydmljZXMuaW1wdWxzZV9zdmMudjEuQ2hhbGxlbmdlVHlwZVIEdHlwZRIcCgl0aHJlc2hvbGQY'
    'CCABKARSCXRocmVzaG9sZBIWCgZwb2ludHMYCSABKARSBnBvaW50cxISCgR1bml0GAogASgJUg'
    'R1bml0');

@$core.Deprecated('Use updateChallengeRequestDescriptor instead')
const UpdateChallengeRequest$json = {
  '1': 'UpdateChallengeRequest',
  '2': [
    {'1': 'challenge_id', '3': 1, '4': 1, '5': 9, '10': 'challengeId'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'title', '17': true},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'start_at', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'startAt', '17': true},
    {'1': 'end_at', '3': 5, '4': 1, '5': 9, '9': 3, '10': 'endAt', '17': true},
    {'1': 'category', '3': 6, '4': 1, '5': 14, '6': '.proto.services.impulse_svc.v1.ChallengeCategory', '9': 4, '10': 'category', '17': true},
    {'1': 'threshold', '3': 7, '4': 1, '5': 4, '9': 5, '10': 'threshold', '17': true},
    {'1': 'points', '3': 8, '4': 1, '5': 4, '9': 6, '10': 'points', '17': true},
    {'1': 'unit', '3': 9, '4': 1, '5': 9, '9': 7, '10': 'unit', '17': true},
  ],
  '8': [
    {'1': '_title'},
    {'1': '_description'},
    {'1': '_start_at'},
    {'1': '_end_at'},
    {'1': '_category'},
    {'1': '_threshold'},
    {'1': '_points'},
    {'1': '_unit'},
  ],
};

/// Descriptor for `UpdateChallengeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateChallengeRequestDescriptor = $convert.base64Decode(
    'ChZVcGRhdGVDaGFsbGVuZ2VSZXF1ZXN0EiEKDGNoYWxsZW5nZV9pZBgBIAEoCVILY2hhbGxlbm'
    'dlSWQSGQoFdGl0bGUYAiABKAlIAFIFdGl0bGWIAQESJQoLZGVzY3JpcHRpb24YAyABKAlIAVIL'
    'ZGVzY3JpcHRpb26IAQESHgoIc3RhcnRfYXQYBCABKAlIAlIHc3RhcnRBdIgBARIaCgZlbmRfYX'
    'QYBSABKAlIA1IFZW5kQXSIAQESUQoIY2F0ZWdvcnkYBiABKA4yMC5wcm90by5zZXJ2aWNlcy5p'
    'bXB1bHNlX3N2Yy52MS5DaGFsbGVuZ2VDYXRlZ29yeUgEUghjYXRlZ29yeYgBARIhCgl0aHJlc2'
    'hvbGQYByABKARIBVIJdGhyZXNob2xkiAEBEhsKBnBvaW50cxgIIAEoBEgGUgZwb2ludHOIAQES'
    'FwoEdW5pdBgJIAEoCUgHUgR1bml0iAEBQggKBl90aXRsZUIOCgxfZGVzY3JpcHRpb25CCwoJX3'
    'N0YXJ0X2F0QgkKB19lbmRfYXRCCwoJX2NhdGVnb3J5QgwKCl90aHJlc2hvbGRCCQoHX3BvaW50'
    'c0IHCgVfdW5pdA==');

@$core.Deprecated('Use updateChallengeResponseDescriptor instead')
const UpdateChallengeResponse$json = {
  '1': 'UpdateChallengeResponse',
  '2': [
    {'1': 'challenge_id', '3': 1, '4': 1, '5': 9, '10': 'challengeId'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'start_at', '3': 4, '4': 1, '5': 9, '10': 'startAt'},
    {'1': 'end_at', '3': 5, '4': 1, '5': 9, '10': 'endAt'},
    {'1': 'category', '3': 6, '4': 1, '5': 14, '6': '.proto.services.impulse_svc.v1.ChallengeCategory', '10': 'category'},
    {'1': 'type', '3': 7, '4': 1, '5': 14, '6': '.proto.services.impulse_svc.v1.ChallengeType', '10': 'type'},
    {'1': 'threshold', '3': 8, '4': 1, '5': 4, '10': 'threshold'},
    {'1': 'points', '3': 9, '4': 1, '5': 4, '10': 'points'},
    {'1': 'unit', '3': 10, '4': 1, '5': 9, '10': 'unit'},
  ],
};

/// Descriptor for `UpdateChallengeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateChallengeResponseDescriptor = $convert.base64Decode(
    'ChdVcGRhdGVDaGFsbGVuZ2VSZXNwb25zZRIhCgxjaGFsbGVuZ2VfaWQYASABKAlSC2NoYWxsZW'
    '5nZUlkEhQKBXRpdGxlGAIgASgJUgV0aXRsZRIgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3Jp'
    'cHRpb24SGQoIc3RhcnRfYXQYBCABKAlSB3N0YXJ0QXQSFQoGZW5kX2F0GAUgASgJUgVlbmRBdB'
    'JMCghjYXRlZ29yeRgGIAEoDjIwLnByb3RvLnNlcnZpY2VzLmltcHVsc2Vfc3ZjLnYxLkNoYWxs'
    'ZW5nZUNhdGVnb3J5UghjYXRlZ29yeRJACgR0eXBlGAcgASgOMiwucHJvdG8uc2VydmljZXMuaW'
    '1wdWxzZV9zdmMudjEuQ2hhbGxlbmdlVHlwZVIEdHlwZRIcCgl0aHJlc2hvbGQYCCABKARSCXRo'
    'cmVzaG9sZBIWCgZwb2ludHMYCSABKARSBnBvaW50cxISCgR1bml0GAogASgJUgR1bml0');

@$core.Deprecated('Use getScoreRequestDescriptor instead')
const GetScoreRequest$json = {
  '1': 'GetScoreRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `GetScoreRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getScoreRequestDescriptor = $convert.base64Decode(
    'Cg9HZXRTY29yZVJlcXVlc3QSFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklk');

@$core.Deprecated('Use getScoreResponseDescriptor instead')
const GetScoreResponse$json = {
  '1': 'GetScoreResponse',
  '2': [
    {'1': 'score', '3': 1, '4': 1, '5': 4, '10': 'score'},
  ],
};

/// Descriptor for `GetScoreResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getScoreResponseDescriptor = $convert.base64Decode(
    'ChBHZXRTY29yZVJlc3BvbnNlEhQKBXNjb3JlGAEgASgEUgVzY29yZQ==');

@$core.Deprecated('Use getRewardsRequestDescriptor instead')
const GetRewardsRequest$json = {
  '1': 'GetRewardsRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `GetRewardsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRewardsRequestDescriptor = $convert.base64Decode(
    'ChFHZXRSZXdhcmRzUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySWQ=');

@$core.Deprecated('Use getRewardsResponseDescriptor instead')
const GetRewardsResponse$json = {
  '1': 'GetRewardsResponse',
  '2': [
    {'1': 'rewards', '3': 1, '4': 3, '5': 11, '6': '.proto.services.impulse_svc.v1.GetRewardsResponse.Reward', '10': 'rewards'},
  ],
  '3': [GetRewardsResponse_Reward$json],
};

@$core.Deprecated('Use getRewardsResponseDescriptor instead')
const GetRewardsResponse_Reward$json = {
  '1': 'Reward',
  '2': [
    {'1': 'reward_id', '3': 1, '4': 1, '5': 9, '10': 'rewardId'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'points', '3': 5, '4': 1, '5': 4, '10': 'points'},
  ],
};

/// Descriptor for `GetRewardsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRewardsResponseDescriptor = $convert.base64Decode(
    'ChJHZXRSZXdhcmRzUmVzcG9uc2USUgoHcmV3YXJkcxgBIAMoCzI4LnByb3RvLnNlcnZpY2VzLm'
    'ltcHVsc2Vfc3ZjLnYxLkdldFJld2FyZHNSZXNwb25zZS5SZXdhcmRSB3Jld2FyZHMadQoGUmV3'
    'YXJkEhsKCXJld2FyZF9pZBgBIAEoCVIIcmV3YXJkSWQSFAoFdGl0bGUYAiABKAlSBXRpdGxlEi'
    'AKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIWCgZwb2ludHMYBSABKARSBnBvaW50'
    'cw==');

@$core.Deprecated('Use getAllRewardsRequestDescriptor instead')
const GetAllRewardsRequest$json = {
  '1': 'GetAllRewardsRequest',
};

/// Descriptor for `GetAllRewardsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllRewardsRequestDescriptor = $convert.base64Decode(
    'ChRHZXRBbGxSZXdhcmRzUmVxdWVzdA==');

@$core.Deprecated('Use getAllRewardsResponseDescriptor instead')
const GetAllRewardsResponse$json = {
  '1': 'GetAllRewardsResponse',
  '2': [
    {'1': 'rewards', '3': 1, '4': 3, '5': 11, '6': '.proto.services.impulse_svc.v1.GetAllRewardsResponse.Reward', '10': 'rewards'},
  ],
  '3': [GetAllRewardsResponse_Reward$json],
};

@$core.Deprecated('Use getAllRewardsResponseDescriptor instead')
const GetAllRewardsResponse_Reward$json = {
  '1': 'Reward',
  '2': [
    {'1': 'reward_id', '3': 1, '4': 1, '5': 9, '10': 'rewardId'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'points', '3': 5, '4': 1, '5': 4, '10': 'points'},
  ],
};

/// Descriptor for `GetAllRewardsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllRewardsResponseDescriptor = $convert.base64Decode(
    'ChVHZXRBbGxSZXdhcmRzUmVzcG9uc2USVQoHcmV3YXJkcxgBIAMoCzI7LnByb3RvLnNlcnZpY2'
    'VzLmltcHVsc2Vfc3ZjLnYxLkdldEFsbFJld2FyZHNSZXNwb25zZS5SZXdhcmRSB3Jld2FyZHMa'
    'dQoGUmV3YXJkEhsKCXJld2FyZF9pZBgBIAEoCVIIcmV3YXJkSWQSFAoFdGl0bGUYAiABKAlSBX'
    'RpdGxlEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIWCgZwb2ludHMYBSABKARS'
    'BnBvaW50cw==');

@$core.Deprecated('Use statsForTeamByUserRequestDescriptor instead')
const StatsForTeamByUserRequest$json = {
  '1': 'StatsForTeamByUserRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `StatsForTeamByUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statsForTeamByUserRequestDescriptor = $convert.base64Decode(
    'ChlTdGF0c0ZvclRlYW1CeVVzZXJSZXF1ZXN0EhcKB3VzZXJfaWQYASABKAlSBnVzZXJJZA==');

@$core.Deprecated('Use statsForTeamByUserResponseDescriptor instead')
const StatsForTeamByUserResponse$json = {
  '1': 'StatsForTeamByUserResponse',
  '2': [
    {'1': 'team_id', '3': 1, '4': 1, '5': 9, '10': 'teamId'},
    {'1': 'score', '3': 2, '4': 1, '5': 2, '10': 'score'},
    {'1': 'gender_count', '3': 3, '4': 3, '5': 11, '6': '.proto.services.impulse_svc.v1.StatsForTeamByUserResponse.GenderCount', '10': 'genderCount'},
    {'1': 'average_age', '3': 4, '4': 1, '5': 2, '10': 'averageAge'},
    {'1': 'user_count', '3': 5, '4': 1, '5': 4, '10': 'userCount'},
  ],
  '3': [StatsForTeamByUserResponse_GenderCount$json],
};

@$core.Deprecated('Use statsForTeamByUserResponseDescriptor instead')
const StatsForTeamByUserResponse_GenderCount$json = {
  '1': 'GenderCount',
  '2': [
    {'1': 'gender', '3': 1, '4': 1, '5': 14, '6': '.proto.services.impulse_svc.v1.Gender', '10': 'gender'},
    {'1': 'count', '3': 2, '4': 1, '5': 13, '10': 'count'},
  ],
};

/// Descriptor for `StatsForTeamByUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statsForTeamByUserResponseDescriptor = $convert.base64Decode(
    'ChpTdGF0c0ZvclRlYW1CeVVzZXJSZXNwb25zZRIXCgd0ZWFtX2lkGAEgASgJUgZ0ZWFtSWQSFA'
    'oFc2NvcmUYAiABKAJSBXNjb3JlEmgKDGdlbmRlcl9jb3VudBgDIAMoCzJFLnByb3RvLnNlcnZp'
    'Y2VzLmltcHVsc2Vfc3ZjLnYxLlN0YXRzRm9yVGVhbUJ5VXNlclJlc3BvbnNlLkdlbmRlckNvdW'
    '50UgtnZW5kZXJDb3VudBIfCgthdmVyYWdlX2FnZRgEIAEoAlIKYXZlcmFnZUFnZRIdCgp1c2Vy'
    'X2NvdW50GAUgASgEUgl1c2VyQ291bnQaYgoLR2VuZGVyQ291bnQSPQoGZ2VuZGVyGAEgASgOMi'
    'UucHJvdG8uc2VydmljZXMuaW1wdWxzZV9zdmMudjEuR2VuZGVyUgZnZW5kZXISFAoFY291bnQY'
    'AiABKA1SBWNvdW50');

@$core.Deprecated('Use verificationRequestDescriptor instead')
const VerificationRequest$json = {
  '1': 'VerificationRequest',
  '2': [
    {'1': 'challenge_id', '3': 1, '4': 1, '5': 9, '10': 'challengeId'},
  ],
};

/// Descriptor for `VerificationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verificationRequestDescriptor = $convert.base64Decode(
    'ChNWZXJpZmljYXRpb25SZXF1ZXN0EiEKDGNoYWxsZW5nZV9pZBgBIAEoCVILY2hhbGxlbmdlSW'
    'Q=');

@$core.Deprecated('Use verificationResponseDescriptor instead')
const VerificationResponse$json = {
  '1': 'VerificationResponse',
  '2': [
    {'1': 'string_verifications', '3': 1, '4': 3, '5': 11, '6': '.proto.services.impulse_svc.v1.VerificationResponse.StringVerification', '10': 'stringVerifications'},
    {'1': 'integer_verifications', '3': 2, '4': 3, '5': 11, '6': '.proto.services.impulse_svc.v1.VerificationResponse.IntegerVerification', '10': 'integerVerifications'},
  ],
  '3': [VerificationResponse_StringVerification$json, VerificationResponse_IntegerVerification$json],
};

@$core.Deprecated('Use verificationResponseDescriptor instead')
const VerificationResponse_StringVerification$json = {
  '1': 'StringVerification',
  '2': [
    {'1': 'order', '3': 1, '4': 1, '5': 13, '10': 'order'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.impulse_svc.v1.StringVerificationType', '10': 'type'},
    {'1': 'value', '3': 3, '4': 1, '5': 9, '10': 'value'},
  ],
};

@$core.Deprecated('Use verificationResponseDescriptor instead')
const VerificationResponse_IntegerVerification$json = {
  '1': 'IntegerVerification',
  '2': [
    {'1': 'order', '3': 1, '4': 1, '5': 13, '10': 'order'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.impulse_svc.v1.IntegerVerificationType', '10': 'type'},
    {'1': 'value', '3': 3, '4': 1, '5': 4, '10': 'value'},
  ],
};

/// Descriptor for `VerificationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verificationResponseDescriptor = $convert.base64Decode(
    'ChRWZXJpZmljYXRpb25SZXNwb25zZRJ5ChRzdHJpbmdfdmVyaWZpY2F0aW9ucxgBIAMoCzJGLn'
    'Byb3RvLnNlcnZpY2VzLmltcHVsc2Vfc3ZjLnYxLlZlcmlmaWNhdGlvblJlc3BvbnNlLlN0cmlu'
    'Z1ZlcmlmaWNhdGlvblITc3RyaW5nVmVyaWZpY2F0aW9ucxJ8ChVpbnRlZ2VyX3ZlcmlmaWNhdG'
    'lvbnMYAiADKAsyRy5wcm90by5zZXJ2aWNlcy5pbXB1bHNlX3N2Yy52MS5WZXJpZmljYXRpb25S'
    'ZXNwb25zZS5JbnRlZ2VyVmVyaWZpY2F0aW9uUhRpbnRlZ2VyVmVyaWZpY2F0aW9ucxqLAQoSU3'
    'RyaW5nVmVyaWZpY2F0aW9uEhQKBW9yZGVyGAEgASgNUgVvcmRlchJJCgR0eXBlGAIgASgOMjUu'
    'cHJvdG8uc2VydmljZXMuaW1wdWxzZV9zdmMudjEuU3RyaW5nVmVyaWZpY2F0aW9uVHlwZVIEdH'
    'lwZRIUCgV2YWx1ZRgDIAEoCVIFdmFsdWUajQEKE0ludGVnZXJWZXJpZmljYXRpb24SFAoFb3Jk'
    'ZXIYASABKA1SBW9yZGVyEkoKBHR5cGUYAiABKA4yNi5wcm90by5zZXJ2aWNlcy5pbXB1bHNlX3'
    'N2Yy52MS5JbnRlZ2VyVmVyaWZpY2F0aW9uVHlwZVIEdHlwZRIUCgV2YWx1ZRgDIAEoBFIFdmFs'
    'dWU=');

