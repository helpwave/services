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

import 'organization_svc.pb.dart' as $10;

export 'organization_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.user_svc.v1.OrganizationService')
class OrganizationServiceClient extends $grpc.Client {
  static final _$createOrganization = $grpc.ClientMethod<$10.CreateOrganizationRequest, $10.CreateOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/CreateOrganization',
      ($10.CreateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.CreateOrganizationResponse.fromBuffer(value));
  static final _$createOrganizationForUser = $grpc.ClientMethod<$10.CreateOrganizationForUserRequest, $10.CreateOrganizationForUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/CreateOrganizationForUser',
      ($10.CreateOrganizationForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.CreateOrganizationForUserResponse.fromBuffer(value));
  static final _$getOrganization = $grpc.ClientMethod<$10.GetOrganizationRequest, $10.GetOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganization',
      ($10.GetOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetOrganizationResponse.fromBuffer(value));
  static final _$getOrganizationsByUser = $grpc.ClientMethod<$10.GetOrganizationsByUserRequest, $10.GetOrganizationsByUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsByUser',
      ($10.GetOrganizationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetOrganizationsByUserResponse.fromBuffer(value));
  static final _$getOrganizationsForUser = $grpc.ClientMethod<$10.GetOrganizationsForUserRequest, $10.GetOrganizationsForUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsForUser',
      ($10.GetOrganizationsForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetOrganizationsForUserResponse.fromBuffer(value));
  static final _$updateOrganization = $grpc.ClientMethod<$10.UpdateOrganizationRequest, $10.UpdateOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/UpdateOrganization',
      ($10.UpdateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.UpdateOrganizationResponse.fromBuffer(value));
  static final _$deleteOrganization = $grpc.ClientMethod<$10.DeleteOrganizationRequest, $10.DeleteOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/DeleteOrganization',
      ($10.DeleteOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.DeleteOrganizationResponse.fromBuffer(value));
  static final _$getMembersByOrganization = $grpc.ClientMethod<$10.GetMembersByOrganizationRequest, $10.GetMembersByOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetMembersByOrganization',
      ($10.GetMembersByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetMembersByOrganizationResponse.fromBuffer(value));
  static final _$addMember = $grpc.ClientMethod<$10.AddMemberRequest, $10.AddMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/AddMember',
      ($10.AddMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.AddMemberResponse.fromBuffer(value));
  static final _$removeMember = $grpc.ClientMethod<$10.RemoveMemberRequest, $10.RemoveMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/RemoveMember',
      ($10.RemoveMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.RemoveMemberResponse.fromBuffer(value));
  static final _$inviteMember = $grpc.ClientMethod<$10.InviteMemberRequest, $10.InviteMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/InviteMember',
      ($10.InviteMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.InviteMemberResponse.fromBuffer(value));
  static final _$getInvitationsByOrganization = $grpc.ClientMethod<$10.GetInvitationsByOrganizationRequest, $10.GetInvitationsByOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByOrganization',
      ($10.GetInvitationsByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetInvitationsByOrganizationResponse.fromBuffer(value));
  static final _$getInvitationsByUser = $grpc.ClientMethod<$10.GetInvitationsByUserRequest, $10.GetInvitationsByUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByUser',
      ($10.GetInvitationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetInvitationsByUserResponse.fromBuffer(value));
  static final _$acceptInvitation = $grpc.ClientMethod<$10.AcceptInvitationRequest, $10.AcceptInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/AcceptInvitation',
      ($10.AcceptInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.AcceptInvitationResponse.fromBuffer(value));
  static final _$declineInvitation = $grpc.ClientMethod<$10.DeclineInvitationRequest, $10.DeclineInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/DeclineInvitation',
      ($10.DeclineInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.DeclineInvitationResponse.fromBuffer(value));
  static final _$revokeInvitation = $grpc.ClientMethod<$10.RevokeInvitationRequest, $10.RevokeInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/RevokeInvitation',
      ($10.RevokeInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.RevokeInvitationResponse.fromBuffer(value));

  OrganizationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$10.CreateOrganizationResponse> createOrganization($10.CreateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$10.CreateOrganizationForUserResponse> createOrganizationForUser($10.CreateOrganizationForUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganizationForUser, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetOrganizationResponse> getOrganization($10.GetOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetOrganizationsByUserResponse> getOrganizationsByUser($10.GetOrganizationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetOrganizationsForUserResponse> getOrganizationsForUser($10.GetOrganizationsForUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsForUser, request, options: options);
  }

  $grpc.ResponseFuture<$10.UpdateOrganizationResponse> updateOrganization($10.UpdateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$10.DeleteOrganizationResponse> deleteOrganization($10.DeleteOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetMembersByOrganizationResponse> getMembersByOrganization($10.GetMembersByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMembersByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$10.AddMemberResponse> addMember($10.AddMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addMember, request, options: options);
  }

  $grpc.ResponseFuture<$10.RemoveMemberResponse> removeMember($10.RemoveMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeMember, request, options: options);
  }

  $grpc.ResponseFuture<$10.InviteMemberResponse> inviteMember($10.InviteMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$inviteMember, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($10.GetInvitationsByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetInvitationsByUserResponse> getInvitationsByUser($10.GetInvitationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$10.AcceptInvitationResponse> acceptInvitation($10.AcceptInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$acceptInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$10.DeclineInvitationResponse> declineInvitation($10.DeclineInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$declineInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$10.RevokeInvitationResponse> revokeInvitation($10.RevokeInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeInvitation, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.user_svc.v1.OrganizationService')
abstract class OrganizationServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.user_svc.v1.OrganizationService';

  OrganizationServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.CreateOrganizationRequest, $10.CreateOrganizationResponse>(
        'CreateOrganization',
        createOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.CreateOrganizationRequest.fromBuffer(value),
        ($10.CreateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.CreateOrganizationForUserRequest, $10.CreateOrganizationForUserResponse>(
        'CreateOrganizationForUser',
        createOrganizationForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.CreateOrganizationForUserRequest.fromBuffer(value),
        ($10.CreateOrganizationForUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetOrganizationRequest, $10.GetOrganizationResponse>(
        'GetOrganization',
        getOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetOrganizationRequest.fromBuffer(value),
        ($10.GetOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetOrganizationsByUserRequest, $10.GetOrganizationsByUserResponse>(
        'GetOrganizationsByUser',
        getOrganizationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetOrganizationsByUserRequest.fromBuffer(value),
        ($10.GetOrganizationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetOrganizationsForUserRequest, $10.GetOrganizationsForUserResponse>(
        'GetOrganizationsForUser',
        getOrganizationsForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetOrganizationsForUserRequest.fromBuffer(value),
        ($10.GetOrganizationsForUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.UpdateOrganizationRequest, $10.UpdateOrganizationResponse>(
        'UpdateOrganization',
        updateOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.UpdateOrganizationRequest.fromBuffer(value),
        ($10.UpdateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.DeleteOrganizationRequest, $10.DeleteOrganizationResponse>(
        'DeleteOrganization',
        deleteOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.DeleteOrganizationRequest.fromBuffer(value),
        ($10.DeleteOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetMembersByOrganizationRequest, $10.GetMembersByOrganizationResponse>(
        'GetMembersByOrganization',
        getMembersByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetMembersByOrganizationRequest.fromBuffer(value),
        ($10.GetMembersByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.AddMemberRequest, $10.AddMemberResponse>(
        'AddMember',
        addMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.AddMemberRequest.fromBuffer(value),
        ($10.AddMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.RemoveMemberRequest, $10.RemoveMemberResponse>(
        'RemoveMember',
        removeMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.RemoveMemberRequest.fromBuffer(value),
        ($10.RemoveMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.InviteMemberRequest, $10.InviteMemberResponse>(
        'InviteMember',
        inviteMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.InviteMemberRequest.fromBuffer(value),
        ($10.InviteMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetInvitationsByOrganizationRequest, $10.GetInvitationsByOrganizationResponse>(
        'GetInvitationsByOrganization',
        getInvitationsByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetInvitationsByOrganizationRequest.fromBuffer(value),
        ($10.GetInvitationsByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetInvitationsByUserRequest, $10.GetInvitationsByUserResponse>(
        'GetInvitationsByUser',
        getInvitationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetInvitationsByUserRequest.fromBuffer(value),
        ($10.GetInvitationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.AcceptInvitationRequest, $10.AcceptInvitationResponse>(
        'AcceptInvitation',
        acceptInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.AcceptInvitationRequest.fromBuffer(value),
        ($10.AcceptInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.DeclineInvitationRequest, $10.DeclineInvitationResponse>(
        'DeclineInvitation',
        declineInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.DeclineInvitationRequest.fromBuffer(value),
        ($10.DeclineInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.RevokeInvitationRequest, $10.RevokeInvitationResponse>(
        'RevokeInvitation',
        revokeInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.RevokeInvitationRequest.fromBuffer(value),
        ($10.RevokeInvitationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$10.CreateOrganizationResponse> createOrganization_Pre($grpc.ServiceCall call, $async.Future<$10.CreateOrganizationRequest> request) async {
    return createOrganization(call, await request);
  }

  $async.Future<$10.CreateOrganizationForUserResponse> createOrganizationForUser_Pre($grpc.ServiceCall call, $async.Future<$10.CreateOrganizationForUserRequest> request) async {
    return createOrganizationForUser(call, await request);
  }

  $async.Future<$10.GetOrganizationResponse> getOrganization_Pre($grpc.ServiceCall call, $async.Future<$10.GetOrganizationRequest> request) async {
    return getOrganization(call, await request);
  }

  $async.Future<$10.GetOrganizationsByUserResponse> getOrganizationsByUser_Pre($grpc.ServiceCall call, $async.Future<$10.GetOrganizationsByUserRequest> request) async {
    return getOrganizationsByUser(call, await request);
  }

  $async.Future<$10.GetOrganizationsForUserResponse> getOrganizationsForUser_Pre($grpc.ServiceCall call, $async.Future<$10.GetOrganizationsForUserRequest> request) async {
    return getOrganizationsForUser(call, await request);
  }

  $async.Future<$10.UpdateOrganizationResponse> updateOrganization_Pre($grpc.ServiceCall call, $async.Future<$10.UpdateOrganizationRequest> request) async {
    return updateOrganization(call, await request);
  }

  $async.Future<$10.DeleteOrganizationResponse> deleteOrganization_Pre($grpc.ServiceCall call, $async.Future<$10.DeleteOrganizationRequest> request) async {
    return deleteOrganization(call, await request);
  }

  $async.Future<$10.GetMembersByOrganizationResponse> getMembersByOrganization_Pre($grpc.ServiceCall call, $async.Future<$10.GetMembersByOrganizationRequest> request) async {
    return getMembersByOrganization(call, await request);
  }

  $async.Future<$10.AddMemberResponse> addMember_Pre($grpc.ServiceCall call, $async.Future<$10.AddMemberRequest> request) async {
    return addMember(call, await request);
  }

  $async.Future<$10.RemoveMemberResponse> removeMember_Pre($grpc.ServiceCall call, $async.Future<$10.RemoveMemberRequest> request) async {
    return removeMember(call, await request);
  }

  $async.Future<$10.InviteMemberResponse> inviteMember_Pre($grpc.ServiceCall call, $async.Future<$10.InviteMemberRequest> request) async {
    return inviteMember(call, await request);
  }

  $async.Future<$10.GetInvitationsByOrganizationResponse> getInvitationsByOrganization_Pre($grpc.ServiceCall call, $async.Future<$10.GetInvitationsByOrganizationRequest> request) async {
    return getInvitationsByOrganization(call, await request);
  }

  $async.Future<$10.GetInvitationsByUserResponse> getInvitationsByUser_Pre($grpc.ServiceCall call, $async.Future<$10.GetInvitationsByUserRequest> request) async {
    return getInvitationsByUser(call, await request);
  }

  $async.Future<$10.AcceptInvitationResponse> acceptInvitation_Pre($grpc.ServiceCall call, $async.Future<$10.AcceptInvitationRequest> request) async {
    return acceptInvitation(call, await request);
  }

  $async.Future<$10.DeclineInvitationResponse> declineInvitation_Pre($grpc.ServiceCall call, $async.Future<$10.DeclineInvitationRequest> request) async {
    return declineInvitation(call, await request);
  }

  $async.Future<$10.RevokeInvitationResponse> revokeInvitation_Pre($grpc.ServiceCall call, $async.Future<$10.RevokeInvitationRequest> request) async {
    return revokeInvitation(call, await request);
  }

  $async.Future<$10.CreateOrganizationResponse> createOrganization($grpc.ServiceCall call, $10.CreateOrganizationRequest request);
  $async.Future<$10.CreateOrganizationForUserResponse> createOrganizationForUser($grpc.ServiceCall call, $10.CreateOrganizationForUserRequest request);
  $async.Future<$10.GetOrganizationResponse> getOrganization($grpc.ServiceCall call, $10.GetOrganizationRequest request);
  $async.Future<$10.GetOrganizationsByUserResponse> getOrganizationsByUser($grpc.ServiceCall call, $10.GetOrganizationsByUserRequest request);
  $async.Future<$10.GetOrganizationsForUserResponse> getOrganizationsForUser($grpc.ServiceCall call, $10.GetOrganizationsForUserRequest request);
  $async.Future<$10.UpdateOrganizationResponse> updateOrganization($grpc.ServiceCall call, $10.UpdateOrganizationRequest request);
  $async.Future<$10.DeleteOrganizationResponse> deleteOrganization($grpc.ServiceCall call, $10.DeleteOrganizationRequest request);
  $async.Future<$10.GetMembersByOrganizationResponse> getMembersByOrganization($grpc.ServiceCall call, $10.GetMembersByOrganizationRequest request);
  $async.Future<$10.AddMemberResponse> addMember($grpc.ServiceCall call, $10.AddMemberRequest request);
  $async.Future<$10.RemoveMemberResponse> removeMember($grpc.ServiceCall call, $10.RemoveMemberRequest request);
  $async.Future<$10.InviteMemberResponse> inviteMember($grpc.ServiceCall call, $10.InviteMemberRequest request);
  $async.Future<$10.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($grpc.ServiceCall call, $10.GetInvitationsByOrganizationRequest request);
  $async.Future<$10.GetInvitationsByUserResponse> getInvitationsByUser($grpc.ServiceCall call, $10.GetInvitationsByUserRequest request);
  $async.Future<$10.AcceptInvitationResponse> acceptInvitation($grpc.ServiceCall call, $10.AcceptInvitationRequest request);
  $async.Future<$10.DeclineInvitationResponse> declineInvitation($grpc.ServiceCall call, $10.DeclineInvitationRequest request);
  $async.Future<$10.RevokeInvitationResponse> revokeInvitation($grpc.ServiceCall call, $10.RevokeInvitationRequest request);
}
