//
//  Generated code. Do not modify.
//  source: proto/services/properties_svc/v1/sets.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createPropertySetRequestDescriptor instead')
const CreatePropertySetRequest$json = {
  '1': 'CreatePropertySetRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'properties', '3': 3, '4': 3, '5': 9, '10': 'properties'},
  ],
};

/// Descriptor for `CreatePropertySetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPropertySetRequestDescriptor = $convert.base64Decode(
    'ChhDcmVhdGVQcm9wZXJ0eVNldFJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIeCgpwcm9wZX'
    'J0aWVzGAMgAygJUgpwcm9wZXJ0aWVz');

@$core.Deprecated('Use createPropertySetResponseDescriptor instead')
const CreatePropertySetResponse$json = {
  '1': 'CreatePropertySetResponse',
  '2': [
    {'1': 'property_set_id', '3': 1, '4': 1, '5': 9, '10': 'propertySetId'},
  ],
};

/// Descriptor for `CreatePropertySetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPropertySetResponseDescriptor = $convert.base64Decode(
    'ChlDcmVhdGVQcm9wZXJ0eVNldFJlc3BvbnNlEiYKD3Byb3BlcnR5X3NldF9pZBgBIAEoCVINcH'
    'JvcGVydHlTZXRJZA==');

@$core.Deprecated('Use updatePropertySetRequestDescriptor instead')
const UpdatePropertySetRequest$json = {
  '1': 'UpdatePropertySetRequest',
  '2': [
    {'1': 'set_id', '3': 1, '4': 1, '5': 9, '10': 'setId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'added_properties', '3': 3, '4': 3, '5': 9, '10': 'addedProperties'},
    {'1': 'removed_properties', '3': 4, '4': 3, '5': 9, '10': 'removedProperties'},
  ],
  '8': [
    {'1': '_name'},
  ],
};

/// Descriptor for `UpdatePropertySetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePropertySetRequestDescriptor = $convert.base64Decode(
    'ChhVcGRhdGVQcm9wZXJ0eVNldFJlcXVlc3QSFQoGc2V0X2lkGAEgASgJUgVzZXRJZBIXCgRuYW'
    '1lGAIgASgJSABSBG5hbWWIAQESKQoQYWRkZWRfcHJvcGVydGllcxgDIAMoCVIPYWRkZWRQcm9w'
    'ZXJ0aWVzEi0KEnJlbW92ZWRfcHJvcGVydGllcxgEIAMoCVIRcmVtb3ZlZFByb3BlcnRpZXNCBw'
    'oFX25hbWU=');

@$core.Deprecated('Use updatePropertySetResponseDescriptor instead')
const UpdatePropertySetResponse$json = {
  '1': 'UpdatePropertySetResponse',
};

/// Descriptor for `UpdatePropertySetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePropertySetResponseDescriptor = $convert.base64Decode(
    'ChlVcGRhdGVQcm9wZXJ0eVNldFJlc3BvbnNl');

@$core.Deprecated('Use deletePropertySetRequestDescriptor instead')
const DeletePropertySetRequest$json = {
  '1': 'DeletePropertySetRequest',
  '2': [
    {'1': 'set_id', '3': 1, '4': 1, '5': 9, '10': 'setId'},
  ],
};

/// Descriptor for `DeletePropertySetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePropertySetRequestDescriptor = $convert.base64Decode(
    'ChhEZWxldGVQcm9wZXJ0eVNldFJlcXVlc3QSFQoGc2V0X2lkGAEgASgJUgVzZXRJZA==');

@$core.Deprecated('Use deletePropertySetResponseDescriptor instead')
const DeletePropertySetResponse$json = {
  '1': 'DeletePropertySetResponse',
};

/// Descriptor for `DeletePropertySetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePropertySetResponseDescriptor = $convert.base64Decode(
    'ChlEZWxldGVQcm9wZXJ0eVNldFJlc3BvbnNl');

