///
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/task_template_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'task_template_svc.pb.dart' as $6;
import 'task_template_svc.pbjson.dart';

export 'task_template_svc.pb.dart';

abstract class TaskTemplateServiceBase extends $pb.GeneratedService {
  $async.Future<$6.CreateTaskTemplateResponse> createTaskTemplate($pb.ServerContext ctx, $6.CreateTaskTemplateRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'CreateTaskTemplate': return $6.CreateTaskTemplateRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'CreateTaskTemplate': return this.createTaskTemplate(ctx, request as $6.CreateTaskTemplateRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => TaskTemplateServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => TaskTemplateServiceBase$messageJson;
}

