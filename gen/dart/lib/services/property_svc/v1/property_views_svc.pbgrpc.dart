//
//  Generated code. Do not modify.
//  source: services/property_svc/v1/property_views_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'property_views_svc.pb.dart' as $3;

export 'property_views_svc.pb.dart';

@$pb.GrpcServiceName('services.property_svc.v1.PropertyViewsService')
class PropertyViewsServiceClient extends $grpc.Client {
  static final _$updatePropertyViewRule = $grpc.ClientMethod<$3.UpdatePropertyViewRuleRequest, $3.UpdatePropertyViewRuleResponse>(
      '/services.property_svc.v1.PropertyViewsService/UpdatePropertyViewRule',
      ($3.UpdatePropertyViewRuleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdatePropertyViewRuleResponse.fromBuffer(value));

  PropertyViewsServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.UpdatePropertyViewRuleResponse> updatePropertyViewRule($3.UpdatePropertyViewRuleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePropertyViewRule, request, options: options);
  }
}

@$pb.GrpcServiceName('services.property_svc.v1.PropertyViewsService')
abstract class PropertyViewsServiceBase extends $grpc.Service {
  $core.String get $name => 'services.property_svc.v1.PropertyViewsService';

  PropertyViewsServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.UpdatePropertyViewRuleRequest, $3.UpdatePropertyViewRuleResponse>(
        'UpdatePropertyViewRule',
        updatePropertyViewRule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdatePropertyViewRuleRequest.fromBuffer(value),
        ($3.UpdatePropertyViewRuleResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.UpdatePropertyViewRuleResponse> updatePropertyViewRule_Pre($grpc.ServiceCall call, $async.Future<$3.UpdatePropertyViewRuleRequest> request) async {
    return updatePropertyViewRule(call, await request);
  }

  $async.Future<$3.UpdatePropertyViewRuleResponse> updatePropertyViewRule($grpc.ServiceCall call, $3.UpdatePropertyViewRuleRequest request);
}
