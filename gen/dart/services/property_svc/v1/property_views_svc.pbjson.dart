//
//  Generated code. Do not modify.
//  source: services/property_svc/v1/property_views_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use filterUpdateDescriptor instead')
const FilterUpdate$json = {
  '1': 'FilterUpdate',
  '2': [
    {'1': 'append_to_always_include', '3': 1, '4': 3, '5': 9, '10': 'appendToAlwaysInclude'},
    {'1': 'remove_from_always_include', '3': 2, '4': 3, '5': 9, '10': 'removeFromAlwaysInclude'},
    {'1': 'append_to_dont_always_include', '3': 3, '4': 3, '5': 9, '10': 'appendToDontAlwaysInclude'},
    {'1': 'remove_from_dont_always_include', '3': 4, '4': 3, '5': 9, '10': 'removeFromDontAlwaysInclude'},
  ],
};

/// Descriptor for `FilterUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List filterUpdateDescriptor = $convert.base64Decode(
    'CgxGaWx0ZXJVcGRhdGUSNwoYYXBwZW5kX3RvX2Fsd2F5c19pbmNsdWRlGAEgAygJUhVhcHBlbm'
    'RUb0Fsd2F5c0luY2x1ZGUSOwoacmVtb3ZlX2Zyb21fYWx3YXlzX2luY2x1ZGUYAiADKAlSF3Jl'
    'bW92ZUZyb21BbHdheXNJbmNsdWRlEkAKHWFwcGVuZF90b19kb250X2Fsd2F5c19pbmNsdWRlGA'
    'MgAygJUhlhcHBlbmRUb0RvbnRBbHdheXNJbmNsdWRlEkQKH3JlbW92ZV9mcm9tX2RvbnRfYWx3'
    'YXlzX2luY2x1ZGUYBCADKAlSG3JlbW92ZUZyb21Eb250QWx3YXlzSW5jbHVkZQ==');

@$core.Deprecated('Use updatePropertyViewRuleRequestDescriptor instead')
const UpdatePropertyViewRuleRequest$json = {
  '1': 'UpdatePropertyViewRuleRequest',
  '2': [
    {'1': 'filter_update', '3': 1, '4': 1, '5': 11, '6': '.services.property_svc.v1.FilterUpdate', '10': 'filterUpdate'},
    {'1': 'task_matcher', '3': 2, '4': 1, '5': 11, '6': '.services.property_svc.v1.TaskPropertyMatcher', '9': 0, '10': 'taskMatcher'},
    {'1': 'patient_matcher', '3': 3, '4': 1, '5': 11, '6': '.services.property_svc.v1.PatientPropertyMatcher', '9': 0, '10': 'patientMatcher'},
  ],
  '8': [
    {'1': 'matcher'},
  ],
};

/// Descriptor for `UpdatePropertyViewRuleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePropertyViewRuleRequestDescriptor = $convert.base64Decode(
    'Ch1VcGRhdGVQcm9wZXJ0eVZpZXdSdWxlUmVxdWVzdBJLCg1maWx0ZXJfdXBkYXRlGAEgASgLMi'
    'Yuc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLkZpbHRlclVwZGF0ZVIMZmlsdGVyVXBkYXRlElIK'
    'DHRhc2tfbWF0Y2hlchgCIAEoCzItLnNlcnZpY2VzLnByb3BlcnR5X3N2Yy52MS5UYXNrUHJvcG'
    'VydHlNYXRjaGVySABSC3Rhc2tNYXRjaGVyElsKD3BhdGllbnRfbWF0Y2hlchgDIAEoCzIwLnNl'
    'cnZpY2VzLnByb3BlcnR5X3N2Yy52MS5QYXRpZW50UHJvcGVydHlNYXRjaGVySABSDnBhdGllbn'
    'RNYXRjaGVyQgkKB21hdGNoZXI=');

@$core.Deprecated('Use updatePropertyViewRuleResponseDescriptor instead')
const UpdatePropertyViewRuleResponse$json = {
  '1': 'UpdatePropertyViewRuleResponse',
};

/// Descriptor for `UpdatePropertyViewRuleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePropertyViewRuleResponseDescriptor = $convert.base64Decode(
    'Ch5VcGRhdGVQcm9wZXJ0eVZpZXdSdWxlUmVzcG9uc2U=');

