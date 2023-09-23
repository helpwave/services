//
//  Generated code. Do not modify.
//  source: proto/services/impulse_svc/v1/impulse_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ChallengeType extends $pb.ProtobufEnum {
  static const ChallengeType CHALLENGE_TYPE_UNSPECIFIED = ChallengeType._(0, _omitEnumNames ? '' : 'CHALLENGE_TYPE_UNSPECIFIED');
  static const ChallengeType CHALLENGE_TYPE_DAILY = ChallengeType._(1, _omitEnumNames ? '' : 'CHALLENGE_TYPE_DAILY');
  static const ChallengeType CHALLENGE_TYPE_QUEST = ChallengeType._(2, _omitEnumNames ? '' : 'CHALLENGE_TYPE_QUEST');

  static const $core.List<ChallengeType> values = <ChallengeType> [
    CHALLENGE_TYPE_UNSPECIFIED,
    CHALLENGE_TYPE_DAILY,
    CHALLENGE_TYPE_QUEST,
  ];

  static final $core.Map<$core.int, ChallengeType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ChallengeType? valueOf($core.int value) => _byValue[value];

  const ChallengeType._($core.int v, $core.String n) : super(v, n);
}

class ChallengeCategory extends $pb.ProtobufEnum {
  static const ChallengeCategory CHALLENGE_CATEGORY_UNSPECIFIED = ChallengeCategory._(0, _omitEnumNames ? '' : 'CHALLENGE_CATEGORY_UNSPECIFIED');
  static const ChallengeCategory CHALLENGE_CATEGORY_FOOD = ChallengeCategory._(1, _omitEnumNames ? '' : 'CHALLENGE_CATEGORY_FOOD');
  static const ChallengeCategory CHALLENGE_CATEGORY_FITNESS = ChallengeCategory._(2, _omitEnumNames ? '' : 'CHALLENGE_CATEGORY_FITNESS');

  static const $core.List<ChallengeCategory> values = <ChallengeCategory> [
    CHALLENGE_CATEGORY_UNSPECIFIED,
    CHALLENGE_CATEGORY_FOOD,
    CHALLENGE_CATEGORY_FITNESS,
  ];

  static final $core.Map<$core.int, ChallengeCategory> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ChallengeCategory? valueOf($core.int value) => _byValue[value];

  const ChallengeCategory._($core.int v, $core.String n) : super(v, n);
}

class Gender extends $pb.ProtobufEnum {
  static const Gender GENDER_UNSPECIFIED = Gender._(0, _omitEnumNames ? '' : 'GENDER_UNSPECIFIED');
  static const Gender MALE = Gender._(1, _omitEnumNames ? '' : 'MALE');
  static const Gender FEMALE = Gender._(2, _omitEnumNames ? '' : 'FEMALE');
  static const Gender DIVERSE = Gender._(3, _omitEnumNames ? '' : 'DIVERSE');

  static const $core.List<Gender> values = <Gender> [
    GENDER_UNSPECIFIED,
    MALE,
    FEMALE,
    DIVERSE,
  ];

  static final $core.Map<$core.int, Gender> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Gender? valueOf($core.int value) => _byValue[value];

  const Gender._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
