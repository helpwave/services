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

@$core.Deprecated('Use createUserRequestDescriptor instead')
const CreateUserRequest$json = {
  '1': 'CreateUserRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'gender', '3': 2, '4': 1, '5': 9, '10': 'gender'},
    {'1': 'birthday', '3': 3, '4': 1, '5': 9, '10': 'birthday'},
    {'1': 'pal', '3': 4, '4': 1, '5': 13, '10': 'pal'},
  ],
};

/// Descriptor for `CreateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVVc2VyUmVxdWVzdBIaCgh1c2VybmFtZRgBIAEoCVIIdXNlcm5hbWUSFgoGZ2VuZG'
    'VyGAIgASgJUgZnZW5kZXISGgoIYmlydGhkYXkYAyABKAlSCGJpcnRoZGF5EhAKA3BhbBgEIAEo'
    'DVIDcGFs');

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
    {'1': 'gender', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'gender', '17': true},
    {'1': 'birthday', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'birthday', '17': true},
    {'1': 'pal', '3': 4, '4': 1, '5': 13, '9': 2, '10': 'pal', '17': true},
  ],
  '8': [
    {'1': '_gender'},
    {'1': '_birthday'},
    {'1': '_pal'},
  ],
};

/// Descriptor for `UpdateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVVc2VyUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySWQSGwoGZ2VuZGVyGA'
    'IgASgJSABSBmdlbmRlcogBARIfCghiaXJ0aGRheRgDIAEoCUgBUghiaXJ0aGRheYgBARIVCgNw'
    'YWwYBCABKA1IAlIDcGFsiAEBQgkKB19nZW5kZXJCCwoJX2JpcnRoZGF5QgYKBF9wYWw=');

@$core.Deprecated('Use updateUserResponseDescriptor instead')
const UpdateUserResponse$json = {
  '1': 'UpdateUserResponse',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'gender', '3': 2, '4': 1, '5': 9, '10': 'gender'},
    {'1': 'birthday', '3': 3, '4': 1, '5': 9, '10': 'birthday'},
    {'1': 'pal', '3': 4, '4': 1, '5': 13, '10': 'pal'},
  ],
};

/// Descriptor for `UpdateUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserResponseDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVVc2VyUmVzcG9uc2USFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklkEhYKBmdlbmRlch'
    'gCIAEoCVIGZ2VuZGVyEhoKCGJpcnRoZGF5GAMgASgJUghiaXJ0aGRheRIQCgNwYWwYBCABKA1S'
    'A3BhbA==');

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
    {'1': 'image', '3': 5, '4': 1, '5': 9, '10': 'image'},
  ],
};

/// Descriptor for `GetAllTeamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllTeamsResponseDescriptor = $convert.base64Decode(
    'ChNHZXRBbGxUZWFtc1Jlc3BvbnNlEk0KBXRlYW1zGAEgAygLMjcucHJvdG8uc2VydmljZXMuaW'
    '1wdWxzZV9zdmMudjEuR2V0QWxsVGVhbXNSZXNwb25zZS5UZWFtUgV0ZWFtcxprCgRUZWFtEhcK'
    'B3RlYW1faWQYASABKAlSBnRlYW1JZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW'
    '9uGAMgASgJUgtkZXNjcmlwdGlvbhIUCgVpbWFnZRgFIAEoCVIFaW1hZ2U=');

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
    {'1': 'reward_id', '3': 1, '4': 1, '5': 9, '10': 'rewardId'},
  ],
};

/// Descriptor for `GetRewardsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRewardsRequestDescriptor = $convert.base64Decode(
    'ChFHZXRSZXdhcmRzUmVxdWVzdBIbCglyZXdhcmRfaWQYASABKAlSCHJld2FyZElk');

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

