//
//  Generated code. Do not modify.
//  source: proto/services/aggregation_svc/v1/tasks_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetWardsOverviewRequest extends $pb.GeneratedMessage {
  factory GetWardsOverviewRequest() => create();
  GetWardsOverviewRequest._() : super();
  factory GetWardsOverviewRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardsOverviewRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardsOverviewRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.aggregation_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWardsOverviewRequest clone() => GetWardsOverviewRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWardsOverviewRequest copyWith(void Function(GetWardsOverviewRequest) updates) => super.copyWith((message) => updates(message as GetWardsOverviewRequest)) as GetWardsOverviewRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWardsOverviewRequest create() => GetWardsOverviewRequest._();
  GetWardsOverviewRequest createEmptyInstance() => create();
  static $pb.PbList<GetWardsOverviewRequest> createRepeated() => $pb.PbList<GetWardsOverviewRequest>();
  @$core.pragma('dart2js:noInline')
  static GetWardsOverviewRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWardsOverviewRequest>(create);
  static GetWardsOverviewRequest? _defaultInstance;
}

class GetWardsOverviewResponse_Ward extends $pb.GeneratedMessage {
  factory GetWardsOverviewResponse_Ward() => create();
  GetWardsOverviewResponse_Ward._() : super();
  factory GetWardsOverviewResponse_Ward.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardsOverviewResponse_Ward.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardsOverviewResponse.Ward', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.aggregation_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'unscheduled', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'inProgress', $pb.PbFieldType.OU3, protoName: 'inProgress')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'done', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'bedCount', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWardsOverviewResponse_Ward clone() => GetWardsOverviewResponse_Ward()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWardsOverviewResponse_Ward copyWith(void Function(GetWardsOverviewResponse_Ward) updates) => super.copyWith((message) => updates(message as GetWardsOverviewResponse_Ward)) as GetWardsOverviewResponse_Ward;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWardsOverviewResponse_Ward create() => GetWardsOverviewResponse_Ward._();
  GetWardsOverviewResponse_Ward createEmptyInstance() => create();
  static $pb.PbList<GetWardsOverviewResponse_Ward> createRepeated() => $pb.PbList<GetWardsOverviewResponse_Ward>();
  @$core.pragma('dart2js:noInline')
  static GetWardsOverviewResponse_Ward getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWardsOverviewResponse_Ward>(create);
  static GetWardsOverviewResponse_Ward? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get unscheduled => $_getIZ(2);
  @$pb.TagNumber(3)
  set unscheduled($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUnscheduled() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnscheduled() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get inProgress => $_getIZ(3);
  @$pb.TagNumber(4)
  set inProgress($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInProgress() => $_has(3);
  @$pb.TagNumber(4)
  void clearInProgress() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get done => $_getIZ(4);
  @$pb.TagNumber(5)
  set done($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDone() => $_has(4);
  @$pb.TagNumber(5)
  void clearDone() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get bedCount => $_getIZ(5);
  @$pb.TagNumber(6)
  set bedCount($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBedCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearBedCount() => clearField(6);
}

class GetWardsOverviewResponse extends $pb.GeneratedMessage {
  factory GetWardsOverviewResponse() => create();
  GetWardsOverviewResponse._() : super();
  factory GetWardsOverviewResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardsOverviewResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardsOverviewResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.aggregation_svc.v1'), createEmptyInstance: create)
    ..pc<GetWardsOverviewResponse_Ward>(1, _omitFieldNames ? '' : 'wards', $pb.PbFieldType.PM, subBuilder: GetWardsOverviewResponse_Ward.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWardsOverviewResponse clone() => GetWardsOverviewResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWardsOverviewResponse copyWith(void Function(GetWardsOverviewResponse) updates) => super.copyWith((message) => updates(message as GetWardsOverviewResponse)) as GetWardsOverviewResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWardsOverviewResponse create() => GetWardsOverviewResponse._();
  GetWardsOverviewResponse createEmptyInstance() => create();
  static $pb.PbList<GetWardsOverviewResponse> createRepeated() => $pb.PbList<GetWardsOverviewResponse>();
  @$core.pragma('dart2js:noInline')
  static GetWardsOverviewResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWardsOverviewResponse>(create);
  static GetWardsOverviewResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetWardsOverviewResponse_Ward> get wards => $_getList(0);
}

class TasksServiceApi {
  $pb.RpcClient _client;
  TasksServiceApi(this._client);

  $async.Future<GetWardsOverviewResponse> getWardsOverview($pb.ClientContext? ctx, GetWardsOverviewRequest request) =>
    _client.invoke<GetWardsOverviewResponse>(ctx, 'TasksService', 'GetWardsOverview', request, GetWardsOverviewResponse())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
