//
//  Generated code. Do not modify.
//  source: proto/services/user_svc/v1/organization_svc.proto
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

import 'organization_svc.pb.dart' as $11;

export 'organization_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.user_svc.v1.OrganizationService')
class OrganizationServiceClient extends $grpc.Client {
  static final _$createOrganization = $grpc.ClientMethod<$11.CreateOrganizationRequest, $11.CreateOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/CreateOrganization',
      ($11.CreateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CreateOrganizationResponse.fromBuffer(value));
  static final _$createOrganizationForUser = $grpc.ClientMethod<$11.CreateOrganizationForUserRequest, $11.CreateOrganizationForUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/CreateOrganizationForUser',
      ($11.CreateOrganizationForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CreateOrganizationForUserResponse.fromBuffer(value));
  static final _$getOrganization = $grpc.ClientMethod<$11.GetOrganizationRequest, $11.GetOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganization',
      ($11.GetOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetOrganizationResponse.fromBuffer(value));
  static final _$getOrganizationsByUser = $grpc.ClientMethod<$11.GetOrganizationsByUserRequest, $11.GetOrganizationsByUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsByUser',
      ($11.GetOrganizationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetOrganizationsByUserResponse.fromBuffer(value));
  static final _$getOrganizationsForUser = $grpc.ClientMethod<$11.GetOrganizationsForUserRequest, $11.GetOrganizationsForUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsForUser',
      ($11.GetOrganizationsForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetOrganizationsForUserResponse.fromBuffer(value));
  static final _$updateOrganization = $grpc.ClientMethod<$11.UpdateOrganizationRequest, $11.UpdateOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/UpdateOrganization',
      ($11.UpdateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdateOrganizationResponse.fromBuffer(value));
  static final _$deleteOrganization = $grpc.ClientMethod<$11.DeleteOrganizationRequest, $11.DeleteOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/DeleteOrganization',
      ($11.DeleteOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DeleteOrganizationResponse.fromBuffer(value));
  static final _$getMembersByOrganization = $grpc.ClientMethod<$11.GetMembersByOrganizationRequest, $11.GetMembersByOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetMembersByOrganization',
      ($11.GetMembersByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetMembersByOrganizationResponse.fromBuffer(value));
  static final _$addMember = $grpc.ClientMethod<$11.AddMemberRequest, $11.AddMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/AddMember',
      ($11.AddMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.AddMemberResponse.fromBuffer(value));
  static final _$removeMember = $grpc.ClientMethod<$11.RemoveMemberRequest, $11.RemoveMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/RemoveMember',
      ($11.RemoveMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.RemoveMemberResponse.fromBuffer(value));
  static final _$inviteMember = $grpc.ClientMethod<$11.InviteMemberRequest, $11.InviteMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/InviteMember',
      ($11.InviteMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.InviteMemberResponse.fromBuffer(value));
  static final _$getInvitationsByOrganization = $grpc.ClientMethod<$11.GetInvitationsByOrganizationRequest, $11.GetInvitationsByOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByOrganization',
      ($11.GetInvitationsByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetInvitationsByOrganizationResponse.fromBuffer(value));
  static final _$getInvitationsByUser = $grpc.ClientMethod<$11.GetInvitationsByUserRequest, $11.GetInvitationsByUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByUser',
      ($11.GetInvitationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetInvitationsByUserResponse.fromBuffer(value));
  static final _$acceptInvitation = $grpc.ClientMethod<$11.AcceptInvitationRequest, $11.AcceptInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/AcceptInvitation',
      ($11.AcceptInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.AcceptInvitationResponse.fromBuffer(value));
  static final _$declineInvitation = $grpc.ClientMethod<$11.DeclineInvitationRequest, $11.DeclineInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/DeclineInvitation',
      ($11.DeclineInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DeclineInvitationResponse.fromBuffer(value));
  static final _$revokeInvitation = $grpc.ClientMethod<$11.RevokeInvitationRequest, $11.RevokeInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/RevokeInvitation',
      ($11.RevokeInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.RevokeInvitationResponse.fromBuffer(value));

  OrganizationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$11.CreateOrganizationResponse> createOrganization($11.CreateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$11.CreateOrganizationForUserResponse> createOrganizationForUser($11.CreateOrganizationForUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganizationForUser, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetOrganizationResponse> getOrganization($11.GetOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetOrganizationsByUserResponse> getOrganizationsByUser($11.GetOrganizationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetOrganizationsForUserResponse> getOrganizationsForUser($11.GetOrganizationsForUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsForUser, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdateOrganizationResponse> updateOrganization($11.UpdateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$11.DeleteOrganizationResponse> deleteOrganization($11.DeleteOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetMembersByOrganizationResponse> getMembersByOrganization($11.GetMembersByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMembersByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$11.AddMemberResponse> addMember($11.AddMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addMember, request, options: options);
  }

  $grpc.ResponseFuture<$11.RemoveMemberResponse> removeMember($11.RemoveMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeMember, request, options: options);
  }

  $grpc.ResponseFuture<$11.InviteMemberResponse> inviteMember($11.InviteMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$inviteMember, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($11.GetInvitationsByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetInvitationsByUserResponse> getInvitationsByUser($11.GetInvitationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$11.AcceptInvitationResponse> acceptInvitation($11.AcceptInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$acceptInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$11.DeclineInvitationResponse> declineInvitation($11.DeclineInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$declineInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$11.RevokeInvitationResponse> revokeInvitation($11.RevokeInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeInvitation, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.user_svc.v1.OrganizationService')
abstract class OrganizationServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.user_svc.v1.OrganizationService';

  OrganizationServiceBase() {
    $addMethod($grpc.ServiceMethod<$11.CreateOrganizationRequest, $11.CreateOrganizationResponse>(
        'CreateOrganization',
        createOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CreateOrganizationRequest.fromBuffer(value),
        ($11.CreateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.CreateOrganizationForUserRequest, $11.CreateOrganizationForUserResponse>(
        'CreateOrganizationForUser',
        createOrganizationForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CreateOrganizationForUserRequest.fromBuffer(value),
        ($11.CreateOrganizationForUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetOrganizationRequest, $11.GetOrganizationResponse>(
        'GetOrganization',
        getOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetOrganizationRequest.fromBuffer(value),
        ($11.GetOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetOrganizationsByUserRequest, $11.GetOrganizationsByUserResponse>(
        'GetOrganizationsByUser',
        getOrganizationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetOrganizationsByUserRequest.fromBuffer(value),
        ($11.GetOrganizationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetOrganizationsForUserRequest, $11.GetOrganizationsForUserResponse>(
        'GetOrganizationsForUser',
        getOrganizationsForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetOrganizationsForUserRequest.fromBuffer(value),
        ($11.GetOrganizationsForUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdateOrganizationRequest, $11.UpdateOrganizationResponse>(
        'UpdateOrganization',
        updateOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdateOrganizationRequest.fromBuffer(value),
        ($11.UpdateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DeleteOrganizationRequest, $11.DeleteOrganizationResponse>(
        'DeleteOrganization',
        deleteOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DeleteOrganizationRequest.fromBuffer(value),
        ($11.DeleteOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetMembersByOrganizationRequest, $11.GetMembersByOrganizationResponse>(
        'GetMembersByOrganization',
        getMembersByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetMembersByOrganizationRequest.fromBuffer(value),
        ($11.GetMembersByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.AddMemberRequest, $11.AddMemberResponse>(
        'AddMember',
        addMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.AddMemberRequest.fromBuffer(value),
        ($11.AddMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.RemoveMemberRequest, $11.RemoveMemberResponse>(
        'RemoveMember',
        removeMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.RemoveMemberRequest.fromBuffer(value),
        ($11.RemoveMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.InviteMemberRequest, $11.InviteMemberResponse>(
        'InviteMember',
        inviteMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.InviteMemberRequest.fromBuffer(value),
        ($11.InviteMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetInvitationsByOrganizationRequest, $11.GetInvitationsByOrganizationResponse>(
        'GetInvitationsByOrganization',
        getInvitationsByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetInvitationsByOrganizationRequest.fromBuffer(value),
        ($11.GetInvitationsByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetInvitationsByUserRequest, $11.GetInvitationsByUserResponse>(
        'GetInvitationsByUser',
        getInvitationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetInvitationsByUserRequest.fromBuffer(value),
        ($11.GetInvitationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.AcceptInvitationRequest, $11.AcceptInvitationResponse>(
        'AcceptInvitation',
        acceptInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.AcceptInvitationRequest.fromBuffer(value),
        ($11.AcceptInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DeclineInvitationRequest, $11.DeclineInvitationResponse>(
        'DeclineInvitation',
        declineInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DeclineInvitationRequest.fromBuffer(value),
        ($11.DeclineInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.RevokeInvitationRequest, $11.RevokeInvitationResponse>(
        'RevokeInvitation',
        revokeInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.RevokeInvitationRequest.fromBuffer(value),
        ($11.RevokeInvitationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$11.CreateOrganizationResponse> createOrganization_Pre($grpc.ServiceCall call, $async.Future<$11.CreateOrganizationRequest> request) async {
    return createOrganization(call, await request);
  }

  $async.Future<$11.CreateOrganizationForUserResponse> createOrganizationForUser_Pre($grpc.ServiceCall call, $async.Future<$11.CreateOrganizationForUserRequest> request) async {
    return createOrganizationForUser(call, await request);
  }

  $async.Future<$11.GetOrganizationResponse> getOrganization_Pre($grpc.ServiceCall call, $async.Future<$11.GetOrganizationRequest> request) async {
    return getOrganization(call, await request);
  }

  $async.Future<$11.GetOrganizationsByUserResponse> getOrganizationsByUser_Pre($grpc.ServiceCall call, $async.Future<$11.GetOrganizationsByUserRequest> request) async {
    return getOrganizationsByUser(call, await request);
  }

  $async.Future<$11.GetOrganizationsForUserResponse> getOrganizationsForUser_Pre($grpc.ServiceCall call, $async.Future<$11.GetOrganizationsForUserRequest> request) async {
    return getOrganizationsForUser(call, await request);
  }

  $async.Future<$11.UpdateOrganizationResponse> updateOrganization_Pre($grpc.ServiceCall call, $async.Future<$11.UpdateOrganizationRequest> request) async {
    return updateOrganization(call, await request);
  }

  $async.Future<$11.DeleteOrganizationResponse> deleteOrganization_Pre($grpc.ServiceCall call, $async.Future<$11.DeleteOrganizationRequest> request) async {
    return deleteOrganization(call, await request);
  }

  $async.Future<$11.GetMembersByOrganizationResponse> getMembersByOrganization_Pre($grpc.ServiceCall call, $async.Future<$11.GetMembersByOrganizationRequest> request) async {
    return getMembersByOrganization(call, await request);
  }

  $async.Future<$11.AddMemberResponse> addMember_Pre($grpc.ServiceCall call, $async.Future<$11.AddMemberRequest> request) async {
    return addMember(call, await request);
  }

  $async.Future<$11.RemoveMemberResponse> removeMember_Pre($grpc.ServiceCall call, $async.Future<$11.RemoveMemberRequest> request) async {
    return removeMember(call, await request);
  }

  $async.Future<$11.InviteMemberResponse> inviteMember_Pre($grpc.ServiceCall call, $async.Future<$11.InviteMemberRequest> request) async {
    return inviteMember(call, await request);
  }

  $async.Future<$11.GetInvitationsByOrganizationResponse> getInvitationsByOrganization_Pre($grpc.ServiceCall call, $async.Future<$11.GetInvitationsByOrganizationRequest> request) async {
    return getInvitationsByOrganization(call, await request);
  }

  $async.Future<$11.GetInvitationsByUserResponse> getInvitationsByUser_Pre($grpc.ServiceCall call, $async.Future<$11.GetInvitationsByUserRequest> request) async {
    return getInvitationsByUser(call, await request);
  }

  $async.Future<$11.AcceptInvitationResponse> acceptInvitation_Pre($grpc.ServiceCall call, $async.Future<$11.AcceptInvitationRequest> request) async {
    return acceptInvitation(call, await request);
  }

  $async.Future<$11.DeclineInvitationResponse> declineInvitation_Pre($grpc.ServiceCall call, $async.Future<$11.DeclineInvitationRequest> request) async {
    return declineInvitation(call, await request);
  }

  $async.Future<$11.RevokeInvitationResponse> revokeInvitation_Pre($grpc.ServiceCall call, $async.Future<$11.RevokeInvitationRequest> request) async {
    return revokeInvitation(call, await request);
  }

  $async.Future<$11.CreateOrganizationResponse> createOrganization($grpc.ServiceCall call, $11.CreateOrganizationRequest request);
  $async.Future<$11.CreateOrganizationForUserResponse> createOrganizationForUser($grpc.ServiceCall call, $11.CreateOrganizationForUserRequest request);
  $async.Future<$11.GetOrganizationResponse> getOrganization($grpc.ServiceCall call, $11.GetOrganizationRequest request);
  $async.Future<$11.GetOrganizationsByUserResponse> getOrganizationsByUser($grpc.ServiceCall call, $11.GetOrganizationsByUserRequest request);
  $async.Future<$11.GetOrganizationsForUserResponse> getOrganizationsForUser($grpc.ServiceCall call, $11.GetOrganizationsForUserRequest request);
  $async.Future<$11.UpdateOrganizationResponse> updateOrganization($grpc.ServiceCall call, $11.UpdateOrganizationRequest request);
  $async.Future<$11.DeleteOrganizationResponse> deleteOrganization($grpc.ServiceCall call, $11.DeleteOrganizationRequest request);
  $async.Future<$11.GetMembersByOrganizationResponse> getMembersByOrganization($grpc.ServiceCall call, $11.GetMembersByOrganizationRequest request);
  $async.Future<$11.AddMemberResponse> addMember($grpc.ServiceCall call, $11.AddMemberRequest request);
  $async.Future<$11.RemoveMemberResponse> removeMember($grpc.ServiceCall call, $11.RemoveMemberRequest request);
  $async.Future<$11.InviteMemberResponse> inviteMember($grpc.ServiceCall call, $11.InviteMemberRequest request);
  $async.Future<$11.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($grpc.ServiceCall call, $11.GetInvitationsByOrganizationRequest request);
  $async.Future<$11.GetInvitationsByUserResponse> getInvitationsByUser($grpc.ServiceCall call, $11.GetInvitationsByUserRequest request);
  $async.Future<$11.AcceptInvitationResponse> acceptInvitation($grpc.ServiceCall call, $11.AcceptInvitationRequest request);
  $async.Future<$11.DeclineInvitationResponse> declineInvitation($grpc.ServiceCall call, $11.DeclineInvitationRequest request);
  $async.Future<$11.RevokeInvitationResponse> revokeInvitation($grpc.ServiceCall call, $11.RevokeInvitationRequest request);
}
