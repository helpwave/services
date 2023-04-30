///
//  Generated code. Do not modify.
//  source: proto/services/auth_svc/v1/auth_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PrelimAuthRequestRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PrelimAuthRequestRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.auth_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  PrelimAuthRequestRequest._() : super();
  factory PrelimAuthRequestRequest() => create();
  factory PrelimAuthRequestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrelimAuthRequestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PrelimAuthRequestRequest clone() => PrelimAuthRequestRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PrelimAuthRequestRequest copyWith(void Function(PrelimAuthRequestRequest) updates) => super.copyWith((message) => updates(message as PrelimAuthRequestRequest)) as PrelimAuthRequestRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PrelimAuthRequestResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.auth_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..hasRequiredFields = false
  ;

  PrelimAuthRequestResponse._() : super();
  factory PrelimAuthRequestResponse({
    $core.String? url,
  }) {
    final _result = create();
    if (url != null) {
      _result.url = url;
    }
    return _result;
  }
  factory PrelimAuthRequestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrelimAuthRequestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PrelimAuthRequestResponse clone() => PrelimAuthRequestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PrelimAuthRequestResponse copyWith(void Function(PrelimAuthRequestResponse) updates) => super.copyWith((message) => updates(message as PrelimAuthRequestResponse)) as PrelimAuthRequestResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PrelimAuthRequestResponse create() => PrelimAuthRequestResponse._();
  PrelimAuthRequestResponse createEmptyInstance() => create();
  static $pb.PbList<PrelimAuthRequestResponse> createRepeated() => $pb.PbList<PrelimAuthRequestResponse>();
  @$core.pragma('dart2js:noInline')
  static PrelimAuthRequestResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrelimAuthRequestResponse>(create);
  static PrelimAuthRequestResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);
}

class AuthServiceApi {
  $pb.RpcClient _client;
  AuthServiceApi(this._client);

  $async.Future<PrelimAuthRequestResponse> prelimAuthRequest($pb.ClientContext? ctx, PrelimAuthRequestRequest request) {
    var emptyResponse = PrelimAuthRequestResponse();
    return _client.invoke<PrelimAuthRequestResponse>(ctx, 'AuthService', 'PrelimAuthRequest', request, emptyResponse);
  }
}

