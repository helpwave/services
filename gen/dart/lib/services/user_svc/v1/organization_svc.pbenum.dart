//
//  Generated code. Do not modify.
//  source: services/user_svc/v1/organization_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class InvitationState extends $pb.ProtobufEnum {
  static const InvitationState INVITATION_STATE_UNSPECIFIED = InvitationState._(0, _omitEnumNames ? '' : 'INVITATION_STATE_UNSPECIFIED');
  static const InvitationState INVITATION_STATE_PENDING = InvitationState._(1, _omitEnumNames ? '' : 'INVITATION_STATE_PENDING');
  static const InvitationState INVITATION_STATE_ACCEPTED = InvitationState._(2, _omitEnumNames ? '' : 'INVITATION_STATE_ACCEPTED');
  static const InvitationState INVITATION_STATE_REJECTED = InvitationState._(3, _omitEnumNames ? '' : 'INVITATION_STATE_REJECTED');
  static const InvitationState INVITATION_STATE_REVOKED = InvitationState._(4, _omitEnumNames ? '' : 'INVITATION_STATE_REVOKED');

  static const $core.List<InvitationState> values = <InvitationState> [
    INVITATION_STATE_UNSPECIFIED,
    INVITATION_STATE_PENDING,
    INVITATION_STATE_ACCEPTED,
    INVITATION_STATE_REJECTED,
    INVITATION_STATE_REVOKED,
  ];

  static final $core.Map<$core.int, InvitationState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static InvitationState? valueOf($core.int value) => _byValue[value];

  const InvitationState._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
