//
//  Generated code. Do not modify.
//  source: services/property_svc/v1/types.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SubjectType extends $pb.ProtobufEnum {
  static const SubjectType SUBJECT_TYPE_UNSPECIFIED = SubjectType._(0, _omitEnumNames ? '' : 'SUBJECT_TYPE_UNSPECIFIED');
  static const SubjectType SUBJECT_TYPE_PATIENT = SubjectType._(1, _omitEnumNames ? '' : 'SUBJECT_TYPE_PATIENT');
  static const SubjectType SUBJECT_TYPE_TASK = SubjectType._(2, _omitEnumNames ? '' : 'SUBJECT_TYPE_TASK');

  static const $core.List<SubjectType> values = <SubjectType> [
    SUBJECT_TYPE_UNSPECIFIED,
    SUBJECT_TYPE_PATIENT,
    SUBJECT_TYPE_TASK,
  ];

  static final $core.Map<$core.int, SubjectType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SubjectType? valueOf($core.int value) => _byValue[value];

  const SubjectType._($core.int v, $core.String n) : super(v, n);
}

class FieldType extends $pb.ProtobufEnum {
  static const FieldType FIELD_TYPE_UNSPECIFIED = FieldType._(0, _omitEnumNames ? '' : 'FIELD_TYPE_UNSPECIFIED');
  static const FieldType FIELD_TYPE_TEXT = FieldType._(1, _omitEnumNames ? '' : 'FIELD_TYPE_TEXT');
  static const FieldType FIELD_TYPE_NUMBER = FieldType._(2, _omitEnumNames ? '' : 'FIELD_TYPE_NUMBER');
  static const FieldType FIELD_TYPE_CHECKBOX = FieldType._(3, _omitEnumNames ? '' : 'FIELD_TYPE_CHECKBOX');
  static const FieldType FIELD_TYPE_DATE = FieldType._(4, _omitEnumNames ? '' : 'FIELD_TYPE_DATE');
  static const FieldType FIELD_TYPE_DATE_TIME = FieldType._(5, _omitEnumNames ? '' : 'FIELD_TYPE_DATE_TIME');
  static const FieldType FIELD_TYPE_SELECT = FieldType._(6, _omitEnumNames ? '' : 'FIELD_TYPE_SELECT');
  static const FieldType FIELD_TYPE_MULTI_SELECT = FieldType._(7, _omitEnumNames ? '' : 'FIELD_TYPE_MULTI_SELECT');

  static const $core.List<FieldType> values = <FieldType> [
    FIELD_TYPE_UNSPECIFIED,
    FIELD_TYPE_TEXT,
    FIELD_TYPE_NUMBER,
    FIELD_TYPE_CHECKBOX,
    FIELD_TYPE_DATE,
    FIELD_TYPE_DATE_TIME,
    FIELD_TYPE_SELECT,
    FIELD_TYPE_MULTI_SELECT,
  ];

  static final $core.Map<$core.int, FieldType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FieldType? valueOf($core.int value) => _byValue[value];

  const FieldType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
