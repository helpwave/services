//
//  Generated code. Do not modify.
//  source: proto/services/properties_svc/v1/views.proto
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

import 'views.pb.dart' as $6;

export 'views.pb.dart';

@$pb.GrpcServiceName('proto.services.properties_svc.v1.PropertyViewsService')
class PropertyViewsServiceClient extends $grpc.Client {
  static final _$updatePatientPropertyViewRule = $grpc.ClientMethod<$6.UpdatePatientPropertyViewRuleRequest, $6.UpdatePatientPropertyViewRuleResponse>(
      '/proto.services.properties_svc.v1.PropertyViewsService/UpdatePatientPropertyViewRule',
      ($6.UpdatePatientPropertyViewRuleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdatePatientPropertyViewRuleResponse.fromBuffer(value));
  static final _$updateOrder = $grpc.ClientMethod<$6.UpdateOrderRequest, $6.UpdateOrderResponse>(
      '/proto.services.properties_svc.v1.PropertyViewsService/UpdateOrder',
      ($6.UpdateOrderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateOrderResponse.fromBuffer(value));

  PropertyViewsServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$6.UpdatePatientPropertyViewRuleResponse> updatePatientPropertyViewRule($6.UpdatePatientPropertyViewRuleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePatientPropertyViewRule, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateOrderResponse> updateOrder($6.UpdateOrderRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateOrder, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.properties_svc.v1.PropertyViewsService')
abstract class PropertyViewsServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.properties_svc.v1.PropertyViewsService';

  PropertyViewsServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.UpdatePatientPropertyViewRuleRequest, $6.UpdatePatientPropertyViewRuleResponse>(
        'UpdatePatientPropertyViewRule',
        updatePatientPropertyViewRule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdatePatientPropertyViewRuleRequest.fromBuffer(value),
        ($6.UpdatePatientPropertyViewRuleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateOrderRequest, $6.UpdateOrderResponse>(
        'UpdateOrder',
        updateOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateOrderRequest.fromBuffer(value),
        ($6.UpdateOrderResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.UpdatePatientPropertyViewRuleResponse> updatePatientPropertyViewRule_Pre($grpc.ServiceCall call, $async.Future<$6.UpdatePatientPropertyViewRuleRequest> request) async {
    return updatePatientPropertyViewRule(call, await request);
  }

  $async.Future<$6.UpdateOrderResponse> updateOrder_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateOrderRequest> request) async {
    return updateOrder(call, await request);
  }

  $async.Future<$6.UpdatePatientPropertyViewRuleResponse> updatePatientPropertyViewRule($grpc.ServiceCall call, $6.UpdatePatientPropertyViewRuleRequest request);
  $async.Future<$6.UpdateOrderResponse> updateOrder($grpc.ServiceCall call, $6.UpdateOrderRequest request);
}
