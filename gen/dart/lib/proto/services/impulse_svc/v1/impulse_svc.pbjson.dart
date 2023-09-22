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
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVVc2VyUmVzcG9uc2USDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use updateUserRequestDescriptor instead')
const UpdateUserRequest$json = {
  '1': 'UpdateUserRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
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
    'ChFVcGRhdGVVc2VyUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSGwoGZ2VuZGVyGAIgASgJSABSBm'
    'dlbmRlcogBARIfCghiaXJ0aGRheRgDIAEoCUgBUghiaXJ0aGRheYgBARIVCgNwYWwYBCABKA1I'
    'AlIDcGFsiAEBQgkKB19nZW5kZXJCCwoJX2JpcnRoZGF5QgYKBF9wYWw=');

@$core.Deprecated('Use updateUserResponseDescriptor instead')
const UpdateUserResponse$json = {
  '1': 'UpdateUserResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'gender', '3': 2, '4': 1, '5': 9, '10': 'gender'},
    {'1': 'birthday', '3': 3, '4': 1, '5': 9, '10': 'birthday'},
    {'1': 'pal', '3': 4, '4': 1, '5': 13, '10': 'pal'},
  ],
};

/// Descriptor for `UpdateUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserResponseDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVVc2VyUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEhYKBmdlbmRlchgCIAEoCVIGZ2'
    'VuZGVyEhoKCGJpcnRoZGF5GAMgASgJUghiaXJ0aGRheRIQCgNwYWwYBCABKA1SA3BhbA==');

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
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `TrackChallengeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List trackChallengeResponseDescriptor = $convert.base64Decode(
    'ChZUcmFja0NoYWxsZW5nZVJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZA==');

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
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
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
    'aGFsbGVuZ2VSCmNoYWxsZW5nZXMa3wIKCUNoYWxsZW5nZRIOCgJpZBgBIAEoCVICaWQSFAoFdG'
    'l0bGUYAiABKAlSBXRpdGxlEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIZCghz'
    'dGFydF9hdBgEIAEoCVIHc3RhcnRBdBIVCgZlbmRfYXQYBSABKAlSBWVuZEF0EkwKCGNhdGVnb3'
    'J5GAYgASgOMjAucHJvdG8uc2VydmljZXMuaW1wdWxzZV9zdmMudjEuQ2hhbGxlbmdlQ2F0ZWdv'
    'cnlSCGNhdGVnb3J5EkAKBHR5cGUYByABKA4yLC5wcm90by5zZXJ2aWNlcy5pbXB1bHNlX3N2Yy'
    '52MS5DaGFsbGVuZ2VUeXBlUgR0eXBlEhwKCXRocmVzaG9sZBgIIAEoBFIJdGhyZXNob2xkEhYK'
    'BnBvaW50cxgJIAEoBFIGcG9pbnRzEhIKBHVuaXQYCiABKAlSBHVuaXQ=');

@$core.Deprecated('Use updateChallengeRequestDescriptor instead')
const UpdateChallengeRequest$json = {
  '1': 'UpdateChallengeRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
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
    'ChZVcGRhdGVDaGFsbGVuZ2VSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIZCgV0aXRsZRgCIAEoCU'
    'gAUgV0aXRsZYgBARIlCgtkZXNjcmlwdGlvbhgDIAEoCUgBUgtkZXNjcmlwdGlvbogBARIeCghz'
    'dGFydF9hdBgEIAEoCUgCUgdzdGFydEF0iAEBEhoKBmVuZF9hdBgFIAEoCUgDUgVlbmRBdIgBAR'
    'JRCghjYXRlZ29yeRgGIAEoDjIwLnByb3RvLnNlcnZpY2VzLmltcHVsc2Vfc3ZjLnYxLkNoYWxs'
    'ZW5nZUNhdGVnb3J5SARSCGNhdGVnb3J5iAEBEiEKCXRocmVzaG9sZBgHIAEoBEgFUgl0aHJlc2'
    'hvbGSIAQESGwoGcG9pbnRzGAggASgESAZSBnBvaW50c4gBARIXCgR1bml0GAkgASgJSAdSBHVu'
    'aXSIAQFCCAoGX3RpdGxlQg4KDF9kZXNjcmlwdGlvbkILCglfc3RhcnRfYXRCCQoHX2VuZF9hdE'
    'ILCglfY2F0ZWdvcnlCDAoKX3RocmVzaG9sZEIJCgdfcG9pbnRzQgcKBV91bml0');

@$core.Deprecated('Use updateChallengeResponseDescriptor instead')
const UpdateChallengeResponse$json = {
  '1': 'UpdateChallengeResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
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
    'ChdVcGRhdGVDaGFsbGVuZ2VSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSFAoFdGl0bGUYAiABKA'
    'lSBXRpdGxlEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIZCghzdGFydF9hdBgE'
    'IAEoCVIHc3RhcnRBdBIVCgZlbmRfYXQYBSABKAlSBWVuZEF0EkwKCGNhdGVnb3J5GAYgASgOMj'
    'AucHJvdG8uc2VydmljZXMuaW1wdWxzZV9zdmMudjEuQ2hhbGxlbmdlQ2F0ZWdvcnlSCGNhdGVn'
    'b3J5EkAKBHR5cGUYByABKA4yLC5wcm90by5zZXJ2aWNlcy5pbXB1bHNlX3N2Yy52MS5DaGFsbG'
    'VuZ2VUeXBlUgR0eXBlEhwKCXRocmVzaG9sZBgIIAEoBFIJdGhyZXNob2xkEhYKBnBvaW50cxgJ'
    'IAEoBFIGcG9pbnRzEhIKBHVuaXQYCiABKAlSBHVuaXQ=');

