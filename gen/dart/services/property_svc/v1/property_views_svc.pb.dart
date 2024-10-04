//
//  Generated code. Do not modify.
//  source: services/property_svc/v1/property_views_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'property_value_svc.pb.dart' as $3;

class FilterUpdate extends $pb.GeneratedMessage {
  factory FilterUpdate({
    $core.Iterable<$core.String>? appendToAlwaysInclude,
    $core.Iterable<$core.String>? removeFromAlwaysInclude,
    $core.Iterable<$core.String>? appendToDontAlwaysInclude,
    $core.Iterable<$core.String>? removeFromDontAlwaysInclude,
  }) {
    final $result = create();
    if (appendToAlwaysInclude != null) {
      $result.appendToAlwaysInclude.addAll(appendToAlwaysInclude);
    }
    if (removeFromAlwaysInclude != null) {
      $result.removeFromAlwaysInclude.addAll(removeFromAlwaysInclude);
    }
    if (appendToDontAlwaysInclude != null) {
      $result.appendToDontAlwaysInclude.addAll(appendToDontAlwaysInclude);
    }
    if (removeFromDontAlwaysInclude != null) {
      $result.removeFromDontAlwaysInclude.addAll(removeFromDontAlwaysInclude);
    }
    return $result;
  }
  FilterUpdate._() : super();
  factory FilterUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FilterUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FilterUpdate', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'appendToAlwaysInclude')
    ..pPS(2, _omitFieldNames ? '' : 'removeFromAlwaysInclude')
    ..pPS(3, _omitFieldNames ? '' : 'appendToDontAlwaysInclude')
    ..pPS(4, _omitFieldNames ? '' : 'removeFromDontAlwaysInclude')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FilterUpdate clone() => FilterUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FilterUpdate copyWith(void Function(FilterUpdate) updates) => super.copyWith((message) => updates(message as FilterUpdate)) as FilterUpdate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FilterUpdate create() => FilterUpdate._();
  FilterUpdate createEmptyInstance() => create();
  static $pb.PbList<FilterUpdate> createRepeated() => $pb.PbList<FilterUpdate>();
  @$core.pragma('dart2js:noInline')
  static FilterUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FilterUpdate>(create);
  static FilterUpdate? _defaultInstance;

  /// append property_id to the always_include list
  /// this means the property is shown, unless a more specific rule (including itself)
  /// puts it in its dont_always_include list
  @$pb.TagNumber(1)
  $core.List<$core.String> get appendToAlwaysInclude => $_getList(0);

  /// remove property_id to the always_include list, also see append_to_always_include
  @$pb.TagNumber(2)
  $core.List<$core.String> get removeFromAlwaysInclude => $_getList(1);

  /// append property_id to the dont_always_include list, also see append_to_always_include
  @$pb.TagNumber(3)
  $core.List<$core.String> get appendToDontAlwaysInclude => $_getList(2);

  /// remove property_id to the dont_always_include list, also see append_to_always_include
  @$pb.TagNumber(4)
  $core.List<$core.String> get removeFromDontAlwaysInclude => $_getList(3);
}

enum UpdatePropertyViewRuleRequest_Matcher {
  taskMatcher, 
  patientMatcher, 
  notSet
}

class UpdatePropertyViewRuleRequest extends $pb.GeneratedMessage {
  factory UpdatePropertyViewRuleRequest({
    FilterUpdate? filterUpdate,
    $3.TaskPropertyMatcher? taskMatcher,
    $3.PatientPropertyMatcher? patientMatcher,
  }) {
    final $result = create();
    if (filterUpdate != null) {
      $result.filterUpdate = filterUpdate;
    }
    if (taskMatcher != null) {
      $result.taskMatcher = taskMatcher;
    }
    if (patientMatcher != null) {
      $result.patientMatcher = patientMatcher;
    }
    return $result;
  }
  UpdatePropertyViewRuleRequest._() : super();
  factory UpdatePropertyViewRuleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePropertyViewRuleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, UpdatePropertyViewRuleRequest_Matcher> _UpdatePropertyViewRuleRequest_MatcherByTag = {
    2 : UpdatePropertyViewRuleRequest_Matcher.taskMatcher,
    3 : UpdatePropertyViewRuleRequest_Matcher.patientMatcher,
    0 : UpdatePropertyViewRuleRequest_Matcher.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertyViewRuleRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOM<FilterUpdate>(1, _omitFieldNames ? '' : 'filterUpdate', subBuilder: FilterUpdate.create)
    ..aOM<$3.TaskPropertyMatcher>(2, _omitFieldNames ? '' : 'taskMatcher', subBuilder: $3.TaskPropertyMatcher.create)
    ..aOM<$3.PatientPropertyMatcher>(3, _omitFieldNames ? '' : 'patientMatcher', subBuilder: $3.PatientPropertyMatcher.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePropertyViewRuleRequest clone() => UpdatePropertyViewRuleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePropertyViewRuleRequest copyWith(void Function(UpdatePropertyViewRuleRequest) updates) => super.copyWith((message) => updates(message as UpdatePropertyViewRuleRequest)) as UpdatePropertyViewRuleRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePropertyViewRuleRequest create() => UpdatePropertyViewRuleRequest._();
  UpdatePropertyViewRuleRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePropertyViewRuleRequest> createRepeated() => $pb.PbList<UpdatePropertyViewRuleRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePropertyViewRuleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePropertyViewRuleRequest>(create);
  static UpdatePropertyViewRuleRequest? _defaultInstance;

  UpdatePropertyViewRuleRequest_Matcher whichMatcher() => _UpdatePropertyViewRuleRequest_MatcherByTag[$_whichOneof(0)]!;
  void clearMatcher() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  FilterUpdate get filterUpdate => $_getN(0);
  @$pb.TagNumber(1)
  set filterUpdate(FilterUpdate v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilterUpdate() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilterUpdate() => clearField(1);
  @$pb.TagNumber(1)
  FilterUpdate ensureFilterUpdate() => $_ensure(0);

  @$pb.TagNumber(2)
  $3.TaskPropertyMatcher get taskMatcher => $_getN(1);
  @$pb.TagNumber(2)
  set taskMatcher($3.TaskPropertyMatcher v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTaskMatcher() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskMatcher() => clearField(2);
  @$pb.TagNumber(2)
  $3.TaskPropertyMatcher ensureTaskMatcher() => $_ensure(1);

  @$pb.TagNumber(3)
  $3.PatientPropertyMatcher get patientMatcher => $_getN(2);
  @$pb.TagNumber(3)
  set patientMatcher($3.PatientPropertyMatcher v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPatientMatcher() => $_has(2);
  @$pb.TagNumber(3)
  void clearPatientMatcher() => clearField(3);
  @$pb.TagNumber(3)
  $3.PatientPropertyMatcher ensurePatientMatcher() => $_ensure(2);
}

class UpdatePropertyViewRuleResponse extends $pb.GeneratedMessage {
  factory UpdatePropertyViewRuleResponse() => create();
  UpdatePropertyViewRuleResponse._() : super();
  factory UpdatePropertyViewRuleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePropertyViewRuleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertyViewRuleResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePropertyViewRuleResponse clone() => UpdatePropertyViewRuleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePropertyViewRuleResponse copyWith(void Function(UpdatePropertyViewRuleResponse) updates) => super.copyWith((message) => updates(message as UpdatePropertyViewRuleResponse)) as UpdatePropertyViewRuleResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePropertyViewRuleResponse create() => UpdatePropertyViewRuleResponse._();
  UpdatePropertyViewRuleResponse createEmptyInstance() => create();
  static $pb.PbList<UpdatePropertyViewRuleResponse> createRepeated() => $pb.PbList<UpdatePropertyViewRuleResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdatePropertyViewRuleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePropertyViewRuleResponse>(create);
  static UpdatePropertyViewRuleResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
