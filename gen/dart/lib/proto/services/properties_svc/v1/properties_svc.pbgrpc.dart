//
//  Generated code. Do not modify.
//  source: proto/services/properties_svc/v1/properties_svc.proto
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

import 'properties_svc.pb.dart' as $3;

export 'properties_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.properties_svc.v1.PropertiesService')
class PropertiesServiceClient extends $grpc.Client {
  static final _$createPropertySet = $grpc.ClientMethod<$3.CreatePropertySetRequest, $3.CreatePropertySetResponse>(
      '/proto.services.properties_svc.v1.PropertiesService/CreatePropertySet',
      ($3.CreatePropertySetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreatePropertySetResponse.fromBuffer(value));
  static final _$updatePropertySet = $grpc.ClientMethod<$3.UpdatePropertySetRequest, $3.UpdatePropertySetResponse>(
      '/proto.services.properties_svc.v1.PropertiesService/UpdatePropertySet',
      ($3.UpdatePropertySetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdatePropertySetResponse.fromBuffer(value));
  static final _$deletePropertySet = $grpc.ClientMethod<$3.DeletePropertySetRequest, $3.DeletePropertySetResponse>(
      '/proto.services.properties_svc.v1.PropertiesService/DeletePropertySet',
      ($3.DeletePropertySetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DeletePropertySetResponse.fromBuffer(value));
  static final _$createProperty = $grpc.ClientMethod<$3.CreatePropertyRequest, $3.CreatePropertyResponse>(
      '/proto.services.properties_svc.v1.PropertiesService/CreateProperty',
      ($3.CreatePropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreatePropertyResponse.fromBuffer(value));
  static final _$getProperty = $grpc.ClientMethod<$3.GetPropertyRequest, $3.GetPropertyResponse>(
      '/proto.services.properties_svc.v1.PropertiesService/GetProperty',
      ($3.GetPropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetPropertyResponse.fromBuffer(value));
  static final _$getProperties = $grpc.ClientMethod<$3.GetPropertiesRequest, $3.GetPropertiesResponse>(
      '/proto.services.properties_svc.v1.PropertiesService/GetProperties',
      ($3.GetPropertiesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetPropertiesResponse.fromBuffer(value));
  static final _$updateProperty = $grpc.ClientMethod<$3.UpdatePropertyRequest, $3.UpdatePropertyResponse>(
      '/proto.services.properties_svc.v1.PropertiesService/UpdateProperty',
      ($3.UpdatePropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdatePropertyResponse.fromBuffer(value));
  static final _$attachPropertyValue = $grpc.ClientMethod<$3.AttachPropertyValueRequest, $3.AttachPropertyValueResponse>(
      '/proto.services.properties_svc.v1.PropertiesService/AttachPropertyValue',
      ($3.AttachPropertyValueRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AttachPropertyValueResponse.fromBuffer(value));
  static final _$getAttachedPropertyValues = $grpc.ClientMethod<$3.GetAttachedPropertyValuesRequest, $3.GetAttachedPropertyValuesResponse>(
      '/proto.services.properties_svc.v1.PropertiesService/GetAttachedPropertyValues',
      ($3.GetAttachedPropertyValuesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetAttachedPropertyValuesResponse.fromBuffer(value));
  static final _$updatePatientPropertyViewRule = $grpc.ClientMethod<$3.UpdatePatientPropertyViewRuleRequest, $3.UpdatePatientPropertyViewRuleResponse>(
      '/proto.services.properties_svc.v1.PropertiesService/UpdatePatientPropertyViewRule',
      ($3.UpdatePatientPropertyViewRuleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdatePatientPropertyViewRuleResponse.fromBuffer(value));
  static final _$updateOrder = $grpc.ClientMethod<$3.UpdateOrderRequest, $3.UpdateOrderResponse>(
      '/proto.services.properties_svc.v1.PropertiesService/UpdateOrder',
      ($3.UpdateOrderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdateOrderResponse.fromBuffer(value));

  PropertiesServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.CreatePropertySetResponse> createPropertySet($3.CreatePropertySetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPropertySet, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdatePropertySetResponse> updatePropertySet($3.UpdatePropertySetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePropertySet, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeletePropertySetResponse> deletePropertySet($3.DeletePropertySetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePropertySet, request, options: options);
  }

  $grpc.ResponseFuture<$3.CreatePropertyResponse> createProperty($3.CreatePropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createProperty, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetPropertyResponse> getProperty($3.GetPropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProperty, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetPropertiesResponse> getProperties($3.GetPropertiesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProperties, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdatePropertyResponse> updateProperty($3.UpdatePropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateProperty, request, options: options);
  }

  $grpc.ResponseFuture<$3.AttachPropertyValueResponse> attachPropertyValue($3.AttachPropertyValueRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$attachPropertyValue, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetAttachedPropertyValuesResponse> getAttachedPropertyValues($3.GetAttachedPropertyValuesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAttachedPropertyValues, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdatePatientPropertyViewRuleResponse> updatePatientPropertyViewRule($3.UpdatePatientPropertyViewRuleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePatientPropertyViewRule, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdateOrderResponse> updateOrder($3.UpdateOrderRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateOrder, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.properties_svc.v1.PropertiesService')
abstract class PropertiesServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.properties_svc.v1.PropertiesService';

  PropertiesServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.CreatePropertySetRequest, $3.CreatePropertySetResponse>(
        'CreatePropertySet',
        createPropertySet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreatePropertySetRequest.fromBuffer(value),
        ($3.CreatePropertySetResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdatePropertySetRequest, $3.UpdatePropertySetResponse>(
        'UpdatePropertySet',
        updatePropertySet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdatePropertySetRequest.fromBuffer(value),
        ($3.UpdatePropertySetResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeletePropertySetRequest, $3.DeletePropertySetResponse>(
        'DeletePropertySet',
        deletePropertySet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeletePropertySetRequest.fromBuffer(value),
        ($3.DeletePropertySetResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.CreatePropertyRequest, $3.CreatePropertyResponse>(
        'CreateProperty',
        createProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreatePropertyRequest.fromBuffer(value),
        ($3.CreatePropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetPropertyRequest, $3.GetPropertyResponse>(
        'GetProperty',
        getProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetPropertyRequest.fromBuffer(value),
        ($3.GetPropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetPropertiesRequest, $3.GetPropertiesResponse>(
        'GetProperties',
        getProperties_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetPropertiesRequest.fromBuffer(value),
        ($3.GetPropertiesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdatePropertyRequest, $3.UpdatePropertyResponse>(
        'UpdateProperty',
        updateProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdatePropertyRequest.fromBuffer(value),
        ($3.UpdatePropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AttachPropertyValueRequest, $3.AttachPropertyValueResponse>(
        'AttachPropertyValue',
        attachPropertyValue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AttachPropertyValueRequest.fromBuffer(value),
        ($3.AttachPropertyValueResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetAttachedPropertyValuesRequest, $3.GetAttachedPropertyValuesResponse>(
        'GetAttachedPropertyValues',
        getAttachedPropertyValues_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetAttachedPropertyValuesRequest.fromBuffer(value),
        ($3.GetAttachedPropertyValuesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdatePatientPropertyViewRuleRequest, $3.UpdatePatientPropertyViewRuleResponse>(
        'UpdatePatientPropertyViewRule',
        updatePatientPropertyViewRule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdatePatientPropertyViewRuleRequest.fromBuffer(value),
        ($3.UpdatePatientPropertyViewRuleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateOrderRequest, $3.UpdateOrderResponse>(
        'UpdateOrder',
        updateOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateOrderRequest.fromBuffer(value),
        ($3.UpdateOrderResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.CreatePropertySetResponse> createPropertySet_Pre($grpc.ServiceCall call, $async.Future<$3.CreatePropertySetRequest> request) async {
    return createPropertySet(call, await request);
  }

  $async.Future<$3.UpdatePropertySetResponse> updatePropertySet_Pre($grpc.ServiceCall call, $async.Future<$3.UpdatePropertySetRequest> request) async {
    return updatePropertySet(call, await request);
  }

  $async.Future<$3.DeletePropertySetResponse> deletePropertySet_Pre($grpc.ServiceCall call, $async.Future<$3.DeletePropertySetRequest> request) async {
    return deletePropertySet(call, await request);
  }

  $async.Future<$3.CreatePropertyResponse> createProperty_Pre($grpc.ServiceCall call, $async.Future<$3.CreatePropertyRequest> request) async {
    return createProperty(call, await request);
  }

  $async.Future<$3.GetPropertyResponse> getProperty_Pre($grpc.ServiceCall call, $async.Future<$3.GetPropertyRequest> request) async {
    return getProperty(call, await request);
  }

  $async.Future<$3.GetPropertiesResponse> getProperties_Pre($grpc.ServiceCall call, $async.Future<$3.GetPropertiesRequest> request) async {
    return getProperties(call, await request);
  }

  $async.Future<$3.UpdatePropertyResponse> updateProperty_Pre($grpc.ServiceCall call, $async.Future<$3.UpdatePropertyRequest> request) async {
    return updateProperty(call, await request);
  }

  $async.Future<$3.AttachPropertyValueResponse> attachPropertyValue_Pre($grpc.ServiceCall call, $async.Future<$3.AttachPropertyValueRequest> request) async {
    return attachPropertyValue(call, await request);
  }

  $async.Future<$3.GetAttachedPropertyValuesResponse> getAttachedPropertyValues_Pre($grpc.ServiceCall call, $async.Future<$3.GetAttachedPropertyValuesRequest> request) async {
    return getAttachedPropertyValues(call, await request);
  }

  $async.Future<$3.UpdatePatientPropertyViewRuleResponse> updatePatientPropertyViewRule_Pre($grpc.ServiceCall call, $async.Future<$3.UpdatePatientPropertyViewRuleRequest> request) async {
    return updatePatientPropertyViewRule(call, await request);
  }

  $async.Future<$3.UpdateOrderResponse> updateOrder_Pre($grpc.ServiceCall call, $async.Future<$3.UpdateOrderRequest> request) async {
    return updateOrder(call, await request);
  }

  $async.Future<$3.CreatePropertySetResponse> createPropertySet($grpc.ServiceCall call, $3.CreatePropertySetRequest request);
  $async.Future<$3.UpdatePropertySetResponse> updatePropertySet($grpc.ServiceCall call, $3.UpdatePropertySetRequest request);
  $async.Future<$3.DeletePropertySetResponse> deletePropertySet($grpc.ServiceCall call, $3.DeletePropertySetRequest request);
  $async.Future<$3.CreatePropertyResponse> createProperty($grpc.ServiceCall call, $3.CreatePropertyRequest request);
  $async.Future<$3.GetPropertyResponse> getProperty($grpc.ServiceCall call, $3.GetPropertyRequest request);
  $async.Future<$3.GetPropertiesResponse> getProperties($grpc.ServiceCall call, $3.GetPropertiesRequest request);
  $async.Future<$3.UpdatePropertyResponse> updateProperty($grpc.ServiceCall call, $3.UpdatePropertyRequest request);
  $async.Future<$3.AttachPropertyValueResponse> attachPropertyValue($grpc.ServiceCall call, $3.AttachPropertyValueRequest request);
  $async.Future<$3.GetAttachedPropertyValuesResponse> getAttachedPropertyValues($grpc.ServiceCall call, $3.GetAttachedPropertyValuesRequest request);
  $async.Future<$3.UpdatePatientPropertyViewRuleResponse> updatePatientPropertyViewRule($grpc.ServiceCall call, $3.UpdatePatientPropertyViewRuleRequest request);
  $async.Future<$3.UpdateOrderResponse> updateOrder($grpc.ServiceCall call, $3.UpdateOrderRequest request);
}
