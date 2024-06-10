//
//  Generated code. Do not modify.
//  source: services/auth_svc/v1/auth_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// More in <a href="https://wiki.helpwave.de/doc/authentication-jedzCcERwF">the wiki</a>
class PrelimAuthRequestRequest extends $pb.GeneratedMessage {
  factory PrelimAuthRequestRequest() => create();
  PrelimAuthRequestRequest._() : super();
  factory PrelimAuthRequestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrelimAuthRequestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PrelimAuthRequestRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.auth_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PrelimAuthRequestRequest clone() => PrelimAuthRequestRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PrelimAuthRequestRequest copyWith(void Function(PrelimAuthRequestRequest) updates) => super.copyWith((message) => updates(message as PrelimAuthRequestRequest)) as PrelimAuthRequestRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrelimAuthRequestRequest create() => PrelimAuthRequestRequest._();
  PrelimAuthRequestRequest createEmptyInstance() => create();
  static $pb.PbList<PrelimAuthRequestRequest> createRepeated() => $pb.PbList<PrelimAuthRequestRequest>();
  @$core.pragma('dart2js:noInline')
  static PrelimAuthRequestRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrelimAuthRequestRequest>(create);
  static PrelimAuthRequestRequest? _defaultInstance;
}

class PrelimAuthRequestResponse extends $pb.GeneratedMessage {
  factory PrelimAuthRequestResponse({
    $core.String? url,
  }) {
    final $result = create();
    if (url != null) {
      $result.url = url;
    }
    return $result;
  }
  PrelimAuthRequestResponse._() : super();
  factory PrelimAuthRequestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrelimAuthRequestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PrelimAuthRequestResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.auth_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PrelimAuthRequestResponse clone() => PrelimAuthRequestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PrelimAuthRequestResponse copyWith(void Function(PrelimAuthRequestResponse) updates) => super.copyWith((message) => updates(message as PrelimAuthRequestResponse)) as PrelimAuthRequestResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrelimAuthRequestResponse create() => PrelimAuthRequestResponse._();
  PrelimAuthRequestResponse createEmptyInstance() => create();
  static $pb.PbList<PrelimAuthRequestResponse> createRepeated() => $pb.PbList<PrelimAuthRequestResponse>();
  @$core.pragma('dart2js:noInline')
  static PrelimAuthRequestResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrelimAuthRequestResponse>(create);
  static PrelimAuthRequestResponse? _defaultInstance;

  /// The Authorization Request URL including Client ID, Scopes and so on. Start the Auth Flow by redirecting here.
  /// State and PKCE should be populated by the client
  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
