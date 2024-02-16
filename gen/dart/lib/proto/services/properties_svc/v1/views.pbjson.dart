//
//  Generated code. Do not modify.
//  source: proto/services/properties_svc/v1/views.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use updatePatientPropertyViewRuleRequestDescriptor instead')
const UpdatePatientPropertyViewRuleRequest$json = {
  '1': 'UpdatePatientPropertyViewRuleRequest',
  '2': [
    {'1': 'ward_id', '3': 1, '4': 1, '5': 9, '9': 1, '10': 'wardId', '17': true},
    {'1': 'patient_id', '3': 2, '4': 1, '5': 9, '9': 2, '10': 'patientId', '17': true},
    {'1': 'reset_soft_required', '3': 3, '4': 1, '5': 8, '9': 0, '10': 'resetSoftRequired'},
    {'1': 'set_soft_required', '3': 4, '4': 1, '5': 8, '9': 0, '10': 'setSoftRequired'},
    {'1': 'append_to_always_include', '3': 5, '4': 1, '5': 9, '9': 3, '10': 'appendToAlwaysInclude', '17': true},
    {'1': 'remove_from_always_include', '3': 6, '4': 1, '5': 9, '9': 4, '10': 'removeFromAlwaysInclude', '17': true},
    {'1': 'append_to_dont_always_include', '3': 7, '4': 1, '5': 9, '9': 5, '10': 'appendToDontAlwaysInclude', '17': true},
    {'1': 'remove_from_dont_always_include', '3': 8, '4': 1, '5': 9, '9': 6, '10': 'removeFromDontAlwaysInclude', '17': true},
  ],
  '8': [
    {'1': 'soft_required'},
    {'1': '_ward_id'},
    {'1': '_patient_id'},
    {'1': '_append_to_always_include'},
    {'1': '_remove_from_always_include'},
    {'1': '_append_to_dont_always_include'},
    {'1': '_remove_from_dont_always_include'},
  ],
};

/// Descriptor for `UpdatePatientPropertyViewRuleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePatientPropertyViewRuleRequestDescriptor = $convert.base64Decode(
    'CiRVcGRhdGVQYXRpZW50UHJvcGVydHlWaWV3UnVsZVJlcXVlc3QSHAoHd2FyZF9pZBgBIAEoCU'
    'gBUgZ3YXJkSWSIAQESIgoKcGF0aWVudF9pZBgCIAEoCUgCUglwYXRpZW50SWSIAQESMAoTcmVz'
    'ZXRfc29mdF9yZXF1aXJlZBgDIAEoCEgAUhFyZXNldFNvZnRSZXF1aXJlZBIsChFzZXRfc29mdF'
    '9yZXF1aXJlZBgEIAEoCEgAUg9zZXRTb2Z0UmVxdWlyZWQSPAoYYXBwZW5kX3RvX2Fsd2F5c19p'
    'bmNsdWRlGAUgASgJSANSFWFwcGVuZFRvQWx3YXlzSW5jbHVkZYgBARJAChpyZW1vdmVfZnJvbV'
    '9hbHdheXNfaW5jbHVkZRgGIAEoCUgEUhdyZW1vdmVGcm9tQWx3YXlzSW5jbHVkZYgBARJFCh1h'
    'cHBlbmRfdG9fZG9udF9hbHdheXNfaW5jbHVkZRgHIAEoCUgFUhlhcHBlbmRUb0RvbnRBbHdheX'
    'NJbmNsdWRliAEBEkkKH3JlbW92ZV9mcm9tX2RvbnRfYWx3YXlzX2luY2x1ZGUYCCABKAlIBlIb'
    'cmVtb3ZlRnJvbURvbnRBbHdheXNJbmNsdWRliAEBQg8KDXNvZnRfcmVxdWlyZWRCCgoIX3dhcm'
    'RfaWRCDQoLX3BhdGllbnRfaWRCGwoZX2FwcGVuZF90b19hbHdheXNfaW5jbHVkZUIdChtfcmVt'
    'b3ZlX2Zyb21fYWx3YXlzX2luY2x1ZGVCIAoeX2FwcGVuZF90b19kb250X2Fsd2F5c19pbmNsdW'
    'RlQiIKIF9yZW1vdmVfZnJvbV9kb250X2Fsd2F5c19pbmNsdWRl');

@$core.Deprecated('Use updatePatientPropertyViewRuleResponseDescriptor instead')
const UpdatePatientPropertyViewRuleResponse$json = {
  '1': 'UpdatePatientPropertyViewRuleResponse',
};

/// Descriptor for `UpdatePatientPropertyViewRuleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePatientPropertyViewRuleResponseDescriptor = $convert.base64Decode(
    'CiVVcGRhdGVQYXRpZW50UHJvcGVydHlWaWV3UnVsZVJlc3BvbnNl');

@$core.Deprecated('Use updateOrderRequestDescriptor instead')
const UpdateOrderRequest$json = {
  '1': 'UpdateOrderRequest',
  '2': [
    {'1': 'property_id', '3': 1, '4': 1, '5': 9, '10': 'propertyId'},
    {'1': 'prev_neighbor', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'prevNeighbor', '17': true},
  ],
  '8': [
    {'1': '_prev_neighbor'},
  ],
};

/// Descriptor for `UpdateOrderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateOrderRequestDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVPcmRlclJlcXVlc3QSHwoLcHJvcGVydHlfaWQYASABKAlSCnByb3BlcnR5SWQSKA'
    'oNcHJldl9uZWlnaGJvchgCIAEoCUgAUgxwcmV2TmVpZ2hib3KIAQFCEAoOX3ByZXZfbmVpZ2hi'
    'b3I=');

@$core.Deprecated('Use updateOrderResponseDescriptor instead')
const UpdateOrderResponse$json = {
  '1': 'UpdateOrderResponse',
};

/// Descriptor for `UpdateOrderResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateOrderResponseDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVPcmRlclJlc3BvbnNl');

