//
//  Generated code. Do not modify.
//  source: services/tasks_svc/v1/types.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use taskStatusDescriptor instead')
const TaskStatus$json = {
  '1': 'TaskStatus',
  '2': [
    {'1': 'TASK_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'TASK_STATUS_TODO', '2': 1},
    {'1': 'TASK_STATUS_IN_PROGRESS', '2': 2},
    {'1': 'TASK_STATUS_DONE', '2': 3},
  ],
};

/// Descriptor for `TaskStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List taskStatusDescriptor = $convert.base64Decode(
    'CgpUYXNrU3RhdHVzEhsKF1RBU0tfU1RBVFVTX1VOU1BFQ0lGSUVEEAASFAoQVEFTS19TVEFUVV'
    'NfVE9ETxABEhsKF1RBU0tfU1RBVFVTX0lOX1BST0dSRVNTEAISFAoQVEFTS19TVEFUVVNfRE9O'
    'RRAD');

