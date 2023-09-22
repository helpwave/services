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
    {'1': 'sex', '3': 2, '4': 1, '5': 9, '10': 'sex'},
    {'1': 'birthday', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'birthday'},
    {'1': 'pal', '3': 4, '4': 1, '5': 13, '10': 'pal'},
  ],
};

/// Descriptor for `CreateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVVc2VyUmVxdWVzdBIaCgh1c2VybmFtZRgBIAEoCVIIdXNlcm5hbWUSEAoDc2V4GA'
    'IgASgJUgNzZXgSNgoIYmlydGhkYXkYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1w'
    'UghiaXJ0aGRheRIQCgNwYWwYBCABKA1SA3BhbA==');

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
    {'1': 'sex', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'sex', '17': true},
    {'1': 'birthday', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 1, '10': 'birthday', '17': true},
    {'1': 'pal', '3': 4, '4': 1, '5': 13, '9': 2, '10': 'pal', '17': true},
  ],
  '8': [
    {'1': '_sex'},
    {'1': '_birthday'},
    {'1': '_pal'},
  ],
};

/// Descriptor for `UpdateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVVc2VyUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFQoDc2V4GAIgASgJSABSA3NleI'
    'gBARI7CghiaXJ0aGRheRgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAVIIYmly'
    'dGhkYXmIAQESFQoDcGFsGAQgASgNSAJSA3BhbIgBAUIGCgRfc2V4QgsKCV9iaXJ0aGRheUIGCg'
    'RfcGFs');

@$core.Deprecated('Use updateUserResponseDescriptor instead')
const UpdateUserResponse$json = {
  '1': 'UpdateUserResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'sex', '3': 2, '4': 1, '5': 9, '10': 'sex'},
    {'1': 'birthday', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'birthday'},
    {'1': 'pal', '3': 4, '4': 1, '5': 13, '10': 'pal'},
  ],
};

/// Descriptor for `UpdateUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserResponseDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVVc2VyUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEhAKA3NleBgCIAEoCVIDc2V4Ej'
    'YKCGJpcnRoZGF5GAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIIYmlydGhkYXkS'
    'EAoDcGFsGAQgASgNUgNwYWw=');

@$core.Deprecated('Use trackChallengeRequestDescriptor instead')
const TrackChallengeRequest$json = {
  '1': 'TrackChallengeRequest',
  '2': [
    {'1': 'challenge_id', '3': 1, '4': 1, '5': 9, '10': 'challengeId'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'score', '3': 3, '4': 1, '5': 4, '10': 'score'},
    {'1': 'done_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'doneAt'},
  ],
};

/// Descriptor for `TrackChallengeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List trackChallengeRequestDescriptor = $convert.base64Decode(
    'ChVUcmFja0NoYWxsZW5nZVJlcXVlc3QSIQoMY2hhbGxlbmdlX2lkGAEgASgJUgtjaGFsbGVuZ2'
    'VJZBIXCgd1c2VyX2lkGAIgASgJUgZ1c2VySWQSFAoFc2NvcmUYAyABKARSBXNjb3JlEjMKB2Rv'
    'bmVfYXQYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgZkb25lQXQ=');

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

@$core.Deprecated('Use createDailyChallengeRequestDescriptor instead')
const CreateDailyChallengeRequest$json = {
  '1': 'CreateDailyChallengeRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'category', '3': 3, '4': 1, '5': 14, '6': '.proto.services.impulse_svc.v1.ChallengeCategory', '10': 'category'},
    {'1': 'threshold', '3': 4, '4': 1, '5': 4, '10': 'threshold'},
    {'1': 'points', '3': 5, '4': 1, '5': 4, '10': 'points'},
    {'1': 'unit', '3': 6, '4': 1, '5': 9, '10': 'unit'},
  ],
};

/// Descriptor for `CreateDailyChallengeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDailyChallengeRequestDescriptor = $convert.base64Decode(
    'ChtDcmVhdGVEYWlseUNoYWxsZW5nZVJlcXVlc3QSFAoFdGl0bGUYASABKAlSBXRpdGxlEiAKC2'
    'Rlc2NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbhJMCghjYXRlZ29yeRgDIAEoDjIwLnByb3Rv'
    'LnNlcnZpY2VzLmltcHVsc2Vfc3ZjLnYxLkNoYWxsZW5nZUNhdGVnb3J5UghjYXRlZ29yeRIcCg'
    'l0aHJlc2hvbGQYBCABKARSCXRocmVzaG9sZBIWCgZwb2ludHMYBSABKARSBnBvaW50cxISCgR1'
    'bml0GAYgASgJUgR1bml0');

@$core.Deprecated('Use createDailyChallengeResponseDescriptor instead')
const CreateDailyChallengeResponse$json = {
  '1': 'CreateDailyChallengeResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateDailyChallengeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDailyChallengeResponseDescriptor = $convert.base64Decode(
    'ChxDcmVhdGVEYWlseUNoYWxsZW5nZVJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use createQuestChallengeRequestDescriptor instead')
const CreateQuestChallengeRequest$json = {
  '1': 'CreateQuestChallengeRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'start_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startAt'},
    {'1': 'end_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endAt'},
    {'1': 'category', '3': 5, '4': 1, '5': 14, '6': '.proto.services.impulse_svc.v1.ChallengeCategory', '10': 'category'},
    {'1': 'threshold', '3': 6, '4': 1, '5': 4, '10': 'threshold'},
    {'1': 'points', '3': 7, '4': 1, '5': 4, '10': 'points'},
    {'1': 'unit', '3': 8, '4': 1, '5': 9, '10': 'unit'},
  ],
};

/// Descriptor for `CreateQuestChallengeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createQuestChallengeRequestDescriptor = $convert.base64Decode(
    'ChtDcmVhdGVRdWVzdENoYWxsZW5nZVJlcXVlc3QSFAoFdGl0bGUYASABKAlSBXRpdGxlEiAKC2'
    'Rlc2NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbhI1CghzdGFydF9hdBgDIAEoCzIaLmdvb2ds'
    'ZS5wcm90b2J1Zi5UaW1lc3RhbXBSB3N0YXJ0QXQSMQoGZW5kX2F0GAQgASgLMhouZ29vZ2xlLn'
    'Byb3RvYnVmLlRpbWVzdGFtcFIFZW5kQXQSTAoIY2F0ZWdvcnkYBSABKA4yMC5wcm90by5zZXJ2'
    'aWNlcy5pbXB1bHNlX3N2Yy52MS5DaGFsbGVuZ2VDYXRlZ29yeVIIY2F0ZWdvcnkSHAoJdGhyZX'
    'Nob2xkGAYgASgEUgl0aHJlc2hvbGQSFgoGcG9pbnRzGAcgASgEUgZwb2ludHMSEgoEdW5pdBgI'
    'IAEoCVIEdW5pdA==');

@$core.Deprecated('Use createQuestChallengeResponseDescriptor instead')
const CreateQuestChallengeResponse$json = {
  '1': 'CreateQuestChallengeResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateQuestChallengeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createQuestChallengeResponseDescriptor = $convert.base64Decode(
    'ChxDcmVhdGVRdWVzdENoYWxsZW5nZVJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use getChallengesRequestDescriptor instead')
const GetChallengesRequest$json = {
  '1': 'GetChallengesRequest',
};

/// Descriptor for `GetChallengesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getChallengesRequestDescriptor = $convert.base64Decode(
    'ChRHZXRDaGFsbGVuZ2VzUmVxdWVzdA==');

@$core.Deprecated('Use getChallengesResponseDescriptor instead')
const GetChallengesResponse$json = {
  '1': 'GetChallengesResponse',
  '2': [
    {'1': 'challenges', '3': 1, '4': 3, '5': 11, '6': '.proto.services.impulse_svc.v1.GetChallengesResponse.Challenge', '10': 'challenges'},
  ],
  '3': [GetChallengesResponse_Challenge$json],
};

@$core.Deprecated('Use getChallengesResponseDescriptor instead')
const GetChallengesResponse_Challenge$json = {
  '1': 'Challenge',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'start_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startAt'},
    {'1': 'end_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endAt'},
    {'1': 'category', '3': 6, '4': 1, '5': 14, '6': '.proto.services.impulse_svc.v1.ChallengeCategory', '10': 'category'},
    {'1': 'type', '3': 7, '4': 1, '5': 14, '6': '.proto.services.impulse_svc.v1.ChallengeType', '10': 'type'},
    {'1': 'threshold', '3': 8, '4': 1, '5': 4, '10': 'threshold'},
    {'1': 'points', '3': 9, '4': 1, '5': 4, '10': 'points'},
    {'1': 'unit', '3': 10, '4': 1, '5': 9, '10': 'unit'},
  ],
};

/// Descriptor for `GetChallengesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getChallengesResponseDescriptor = $convert.base64Decode(
    'ChVHZXRDaGFsbGVuZ2VzUmVzcG9uc2USXgoKY2hhbGxlbmdlcxgBIAMoCzI+LnByb3RvLnNlcn'
    'ZpY2VzLmltcHVsc2Vfc3ZjLnYxLkdldENoYWxsZW5nZXNSZXNwb25zZS5DaGFsbGVuZ2VSCmNo'
    'YWxsZW5nZXMalwMKCUNoYWxsZW5nZRIOCgJpZBgBIAEoCVICaWQSFAoFdGl0bGUYAiABKAlSBX'
    'RpdGxlEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhI1CghzdGFydF9hdBgEIAEo'
    'CzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSB3N0YXJ0QXQSMQoGZW5kX2F0GAUgASgLMh'
    'ouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIFZW5kQXQSTAoIY2F0ZWdvcnkYBiABKA4yMC5w'
    'cm90by5zZXJ2aWNlcy5pbXB1bHNlX3N2Yy52MS5DaGFsbGVuZ2VDYXRlZ29yeVIIY2F0ZWdvcn'
    'kSQAoEdHlwZRgHIAEoDjIsLnByb3RvLnNlcnZpY2VzLmltcHVsc2Vfc3ZjLnYxLkNoYWxsZW5n'
    'ZVR5cGVSBHR5cGUSHAoJdGhyZXNob2xkGAggASgEUgl0aHJlc2hvbGQSFgoGcG9pbnRzGAkgAS'
    'gEUgZwb2ludHMSEgoEdW5pdBgKIAEoCVIEdW5pdA==');

@$core.Deprecated('Use updateChallengeRequestDescriptor instead')
const UpdateChallengeRequest$json = {
  '1': 'UpdateChallengeRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'title', '17': true},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'start_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 2, '10': 'startAt', '17': true},
    {'1': 'end_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 3, '10': 'endAt', '17': true},
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
    'gAUgV0aXRsZYgBARIlCgtkZXNjcmlwdGlvbhgDIAEoCUgBUgtkZXNjcmlwdGlvbogBARI6Cghz'
    'dGFydF9hdBgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAlIHc3RhcnRBdIgBAR'
    'I2CgZlbmRfYXQYBSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wSANSBWVuZEF0iAEB'
    'ElEKCGNhdGVnb3J5GAYgASgOMjAucHJvdG8uc2VydmljZXMuaW1wdWxzZV9zdmMudjEuQ2hhbG'
    'xlbmdlQ2F0ZWdvcnlIBFIIY2F0ZWdvcnmIAQESIQoJdGhyZXNob2xkGAcgASgESAVSCXRocmVz'
    'aG9sZIgBARIbCgZwb2ludHMYCCABKARIBlIGcG9pbnRziAEBEhcKBHVuaXQYCSABKAlIB1IEdW'
    '5pdIgBAUIICgZfdGl0bGVCDgoMX2Rlc2NyaXB0aW9uQgsKCV9zdGFydF9hdEIJCgdfZW5kX2F0'
    'QgsKCV9jYXRlZ29yeUIMCgpfdGhyZXNob2xkQgkKB19wb2ludHNCBwoFX3VuaXQ=');

@$core.Deprecated('Use updateChallengeResponseDescriptor instead')
const UpdateChallengeResponse$json = {
  '1': 'UpdateChallengeResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'start_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startAt'},
    {'1': 'end_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endAt'},
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
    'lSBXRpdGxlEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhI1CghzdGFydF9hdBgE'
    'IAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSB3N0YXJ0QXQSMQoGZW5kX2F0GAUgAS'
    'gLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIFZW5kQXQSTAoIY2F0ZWdvcnkYBiABKA4y'
    'MC5wcm90by5zZXJ2aWNlcy5pbXB1bHNlX3N2Yy52MS5DaGFsbGVuZ2VDYXRlZ29yeVIIY2F0ZW'
    'dvcnkSQAoEdHlwZRgHIAEoDjIsLnByb3RvLnNlcnZpY2VzLmltcHVsc2Vfc3ZjLnYxLkNoYWxs'
    'ZW5nZVR5cGVSBHR5cGUSHAoJdGhyZXNob2xkGAggASgEUgl0aHJlc2hvbGQSFgoGcG9pbnRzGA'
    'kgASgEUgZwb2ludHMSEgoEdW5pdBgKIAEoCVIEdW5pdA==');

