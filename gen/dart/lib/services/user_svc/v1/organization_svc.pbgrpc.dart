//
//  Generated code. Do not modify.
//  source: services/user_svc/v1/organization_svc.proto
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

import 'organization_svc.pb.dart' as $14;

export 'organization_svc.pb.dart';

@$pb.GrpcServiceName('services.user_svc.v1.OrganizationService')
class OrganizationServiceClient extends $grpc.Client {
  static final _$createOrganization = $grpc.ClientMethod<$14.CreateOrganizationRequest, $14.CreateOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/CreateOrganization',
      ($14.CreateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.CreateOrganizationResponse.fromBuffer(value));
  static final _$createOrganizationForUser = $grpc.ClientMethod<$14.CreateOrganizationForUserRequest, $14.CreateOrganizationForUserResponse>(
      '/services.user_svc.v1.OrganizationService/CreateOrganizationForUser',
      ($14.CreateOrganizationForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.CreateOrganizationForUserResponse.fromBuffer(value));
  static final _$getOrganization = $grpc.ClientMethod<$14.GetOrganizationRequest, $14.GetOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/GetOrganization',
      ($14.GetOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.GetOrganizationResponse.fromBuffer(value));
  static final _$getOrganizationsByUser = $grpc.ClientMethod<$14.GetOrganizationsByUserRequest, $14.GetOrganizationsByUserResponse>(
      '/services.user_svc.v1.OrganizationService/GetOrganizationsByUser',
      ($14.GetOrganizationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.GetOrganizationsByUserResponse.fromBuffer(value));
  static final _$getOrganizationsForUser = $grpc.ClientMethod<$14.GetOrganizationsForUserRequest, $14.GetOrganizationsForUserResponse>(
      '/services.user_svc.v1.OrganizationService/GetOrganizationsForUser',
      ($14.GetOrganizationsForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.GetOrganizationsForUserResponse.fromBuffer(value));
  static final _$updateOrganization = $grpc.ClientMethod<$14.UpdateOrganizationRequest, $14.UpdateOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/UpdateOrganization',
      ($14.UpdateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.UpdateOrganizationResponse.fromBuffer(value));
  static final _$deleteOrganization = $grpc.ClientMethod<$14.DeleteOrganizationRequest, $14.DeleteOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/DeleteOrganization',
      ($14.DeleteOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.DeleteOrganizationResponse.fromBuffer(value));
  static final _$getMembersByOrganization = $grpc.ClientMethod<$14.GetMembersByOrganizationRequest, $14.GetMembersByOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/GetMembersByOrganization',
      ($14.GetMembersByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.GetMembersByOrganizationResponse.fromBuffer(value));
  static final _$addMember = $grpc.ClientMethod<$14.AddMemberRequest, $14.AddMemberResponse>(
      '/services.user_svc.v1.OrganizationService/AddMember',
      ($14.AddMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.AddMemberResponse.fromBuffer(value));
  static final _$removeMember = $grpc.ClientMethod<$14.RemoveMemberRequest, $14.RemoveMemberResponse>(
      '/services.user_svc.v1.OrganizationService/RemoveMember',
      ($14.RemoveMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.RemoveMemberResponse.fromBuffer(value));
  static final _$inviteMember = $grpc.ClientMethod<$14.InviteMemberRequest, $14.InviteMemberResponse>(
      '/services.user_svc.v1.OrganizationService/InviteMember',
      ($14.InviteMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.InviteMemberResponse.fromBuffer(value));
  static final _$getInvitationsByOrganization = $grpc.ClientMethod<$14.GetInvitationsByOrganizationRequest, $14.GetInvitationsByOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/GetInvitationsByOrganization',
      ($14.GetInvitationsByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.GetInvitationsByOrganizationResponse.fromBuffer(value));
  static final _$getInvitationsByUser = $grpc.ClientMethod<$14.GetInvitationsByUserRequest, $14.GetInvitationsByUserResponse>(
      '/services.user_svc.v1.OrganizationService/GetInvitationsByUser',
      ($14.GetInvitationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.GetInvitationsByUserResponse.fromBuffer(value));
  static final _$acceptInvitation = $grpc.ClientMethod<$14.AcceptInvitationRequest, $14.AcceptInvitationResponse>(
      '/services.user_svc.v1.OrganizationService/AcceptInvitation',
      ($14.AcceptInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.AcceptInvitationResponse.fromBuffer(value));
  static final _$declineInvitation = $grpc.ClientMethod<$14.DeclineInvitationRequest, $14.DeclineInvitationResponse>(
      '/services.user_svc.v1.OrganizationService/DeclineInvitation',
      ($14.DeclineInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.DeclineInvitationResponse.fromBuffer(value));
  static final _$revokeInvitation = $grpc.ClientMethod<$14.RevokeInvitationRequest, $14.RevokeInvitationResponse>(
      '/services.user_svc.v1.OrganizationService/RevokeInvitation',
      ($14.RevokeInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.RevokeInvitationResponse.fromBuffer(value));

  OrganizationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$14.CreateOrganizationResponse> createOrganization($14.CreateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$14.CreateOrganizationForUserResponse> createOrganizationForUser($14.CreateOrganizationForUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganizationForUser, request, options: options);
  }

  $grpc.ResponseFuture<$14.GetOrganizationResponse> getOrganization($14.GetOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$14.GetOrganizationsByUserResponse> getOrganizationsByUser($14.GetOrganizationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$14.GetOrganizationsForUserResponse> getOrganizationsForUser($14.GetOrganizationsForUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsForUser, request, options: options);
  }

  $grpc.ResponseFuture<$14.UpdateOrganizationResponse> updateOrganization($14.UpdateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$14.DeleteOrganizationResponse> deleteOrganization($14.DeleteOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$14.GetMembersByOrganizationResponse> getMembersByOrganization($14.GetMembersByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMembersByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$14.AddMemberResponse> addMember($14.AddMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addMember, request, options: options);
  }

  $grpc.ResponseFuture<$14.RemoveMemberResponse> removeMember($14.RemoveMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeMember, request, options: options);
  }

  $grpc.ResponseFuture<$14.InviteMemberResponse> inviteMember($14.InviteMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$inviteMember, request, options: options);
  }

  $grpc.ResponseFuture<$14.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($14.GetInvitationsByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$14.GetInvitationsByUserResponse> getInvitationsByUser($14.GetInvitationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$14.AcceptInvitationResponse> acceptInvitation($14.AcceptInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$acceptInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$14.DeclineInvitationResponse> declineInvitation($14.DeclineInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$declineInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$14.RevokeInvitationResponse> revokeInvitation($14.RevokeInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeInvitation, request, options: options);
  }
}

@$pb.GrpcServiceName('services.user_svc.v1.OrganizationService')
abstract class OrganizationServiceBase extends $grpc.Service {
  $core.String get $name => 'services.user_svc.v1.OrganizationService';

  OrganizationServiceBase() {
    $addMethod($grpc.ServiceMethod<$14.CreateOrganizationRequest, $14.CreateOrganizationResponse>(
        'CreateOrganization',
        createOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.CreateOrganizationRequest.fromBuffer(value),
        ($14.CreateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.CreateOrganizationForUserRequest, $14.CreateOrganizationForUserResponse>(
        'CreateOrganizationForUser',
        createOrganizationForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.CreateOrganizationForUserRequest.fromBuffer(value),
        ($14.CreateOrganizationForUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.GetOrganizationRequest, $14.GetOrganizationResponse>(
        'GetOrganization',
        getOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.GetOrganizationRequest.fromBuffer(value),
        ($14.GetOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.GetOrganizationsByUserRequest, $14.GetOrganizationsByUserResponse>(
        'GetOrganizationsByUser',
        getOrganizationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.GetOrganizationsByUserRequest.fromBuffer(value),
        ($14.GetOrganizationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.GetOrganizationsForUserRequest, $14.GetOrganizationsForUserResponse>(
        'GetOrganizationsForUser',
        getOrganizationsForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.GetOrganizationsForUserRequest.fromBuffer(value),
        ($14.GetOrganizationsForUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.UpdateOrganizationRequest, $14.UpdateOrganizationResponse>(
        'UpdateOrganization',
        updateOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.UpdateOrganizationRequest.fromBuffer(value),
        ($14.UpdateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.DeleteOrganizationRequest, $14.DeleteOrganizationResponse>(
        'DeleteOrganization',
        deleteOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.DeleteOrganizationRequest.fromBuffer(value),
        ($14.DeleteOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.GetMembersByOrganizationRequest, $14.GetMembersByOrganizationResponse>(
        'GetMembersByOrganization',
        getMembersByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.GetMembersByOrganizationRequest.fromBuffer(value),
        ($14.GetMembersByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.AddMemberRequest, $14.AddMemberResponse>(
        'AddMember',
        addMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.AddMemberRequest.fromBuffer(value),
        ($14.AddMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.RemoveMemberRequest, $14.RemoveMemberResponse>(
        'RemoveMember',
        removeMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.RemoveMemberRequest.fromBuffer(value),
        ($14.RemoveMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.InviteMemberRequest, $14.InviteMemberResponse>(
        'InviteMember',
        inviteMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.InviteMemberRequest.fromBuffer(value),
        ($14.InviteMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.GetInvitationsByOrganizationRequest, $14.GetInvitationsByOrganizationResponse>(
        'GetInvitationsByOrganization',
        getInvitationsByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.GetInvitationsByOrganizationRequest.fromBuffer(value),
        ($14.GetInvitationsByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.GetInvitationsByUserRequest, $14.GetInvitationsByUserResponse>(
        'GetInvitationsByUser',
        getInvitationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.GetInvitationsByUserRequest.fromBuffer(value),
        ($14.GetInvitationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.AcceptInvitationRequest, $14.AcceptInvitationResponse>(
        'AcceptInvitation',
        acceptInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.AcceptInvitationRequest.fromBuffer(value),
        ($14.AcceptInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.DeclineInvitationRequest, $14.DeclineInvitationResponse>(
        'DeclineInvitation',
        declineInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.DeclineInvitationRequest.fromBuffer(value),
        ($14.DeclineInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.RevokeInvitationRequest, $14.RevokeInvitationResponse>(
        'RevokeInvitation',
        revokeInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.RevokeInvitationRequest.fromBuffer(value),
        ($14.RevokeInvitationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$14.CreateOrganizationResponse> createOrganization_Pre($grpc.ServiceCall call, $async.Future<$14.CreateOrganizationRequest> request) async {
    return createOrganization(call, await request);
  }

  $async.Future<$14.CreateOrganizationForUserResponse> createOrganizationForUser_Pre($grpc.ServiceCall call, $async.Future<$14.CreateOrganizationForUserRequest> request) async {
    return createOrganizationForUser(call, await request);
  }

  $async.Future<$14.GetOrganizationResponse> getOrganization_Pre($grpc.ServiceCall call, $async.Future<$14.GetOrganizationRequest> request) async {
    return getOrganization(call, await request);
  }

  $async.Future<$14.GetOrganizationsByUserResponse> getOrganizationsByUser_Pre($grpc.ServiceCall call, $async.Future<$14.GetOrganizationsByUserRequest> request) async {
    return getOrganizationsByUser(call, await request);
  }

  $async.Future<$14.GetOrganizationsForUserResponse> getOrganizationsForUser_Pre($grpc.ServiceCall call, $async.Future<$14.GetOrganizationsForUserRequest> request) async {
    return getOrganizationsForUser(call, await request);
  }

  $async.Future<$14.UpdateOrganizationResponse> updateOrganization_Pre($grpc.ServiceCall call, $async.Future<$14.UpdateOrganizationRequest> request) async {
    return updateOrganization(call, await request);
  }

  $async.Future<$14.DeleteOrganizationResponse> deleteOrganization_Pre($grpc.ServiceCall call, $async.Future<$14.DeleteOrganizationRequest> request) async {
    return deleteOrganization(call, await request);
  }

  $async.Future<$14.GetMembersByOrganizationResponse> getMembersByOrganization_Pre($grpc.ServiceCall call, $async.Future<$14.GetMembersByOrganizationRequest> request) async {
    return getMembersByOrganization(call, await request);
  }

  $async.Future<$14.AddMemberResponse> addMember_Pre($grpc.ServiceCall call, $async.Future<$14.AddMemberRequest> request) async {
    return addMember(call, await request);
  }

  $async.Future<$14.RemoveMemberResponse> removeMember_Pre($grpc.ServiceCall call, $async.Future<$14.RemoveMemberRequest> request) async {
    return removeMember(call, await request);
  }

  $async.Future<$14.InviteMemberResponse> inviteMember_Pre($grpc.ServiceCall call, $async.Future<$14.InviteMemberRequest> request) async {
    return inviteMember(call, await request);
  }

  $async.Future<$14.GetInvitationsByOrganizationResponse> getInvitationsByOrganization_Pre($grpc.ServiceCall call, $async.Future<$14.GetInvitationsByOrganizationRequest> request) async {
    return getInvitationsByOrganization(call, await request);
  }

  $async.Future<$14.GetInvitationsByUserResponse> getInvitationsByUser_Pre($grpc.ServiceCall call, $async.Future<$14.GetInvitationsByUserRequest> request) async {
    return getInvitationsByUser(call, await request);
  }

  $async.Future<$14.AcceptInvitationResponse> acceptInvitation_Pre($grpc.ServiceCall call, $async.Future<$14.AcceptInvitationRequest> request) async {
    return acceptInvitation(call, await request);
  }

  $async.Future<$14.DeclineInvitationResponse> declineInvitation_Pre($grpc.ServiceCall call, $async.Future<$14.DeclineInvitationRequest> request) async {
    return declineInvitation(call, await request);
  }

  $async.Future<$14.RevokeInvitationResponse> revokeInvitation_Pre($grpc.ServiceCall call, $async.Future<$14.RevokeInvitationRequest> request) async {
    return revokeInvitation(call, await request);
  }

  $async.Future<$14.CreateOrganizationResponse> createOrganization($grpc.ServiceCall call, $14.CreateOrganizationRequest request);
  $async.Future<$14.CreateOrganizationForUserResponse> createOrganizationForUser($grpc.ServiceCall call, $14.CreateOrganizationForUserRequest request);
  $async.Future<$14.GetOrganizationResponse> getOrganization($grpc.ServiceCall call, $14.GetOrganizationRequest request);
  $async.Future<$14.GetOrganizationsByUserResponse> getOrganizationsByUser($grpc.ServiceCall call, $14.GetOrganizationsByUserRequest request);
  $async.Future<$14.GetOrganizationsForUserResponse> getOrganizationsForUser($grpc.ServiceCall call, $14.GetOrganizationsForUserRequest request);
  $async.Future<$14.UpdateOrganizationResponse> updateOrganization($grpc.ServiceCall call, $14.UpdateOrganizationRequest request);
  $async.Future<$14.DeleteOrganizationResponse> deleteOrganization($grpc.ServiceCall call, $14.DeleteOrganizationRequest request);
  $async.Future<$14.GetMembersByOrganizationResponse> getMembersByOrganization($grpc.ServiceCall call, $14.GetMembersByOrganizationRequest request);
  $async.Future<$14.AddMemberResponse> addMember($grpc.ServiceCall call, $14.AddMemberRequest request);
  $async.Future<$14.RemoveMemberResponse> removeMember($grpc.ServiceCall call, $14.RemoveMemberRequest request);
  $async.Future<$14.InviteMemberResponse> inviteMember($grpc.ServiceCall call, $14.InviteMemberRequest request);
  $async.Future<$14.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($grpc.ServiceCall call, $14.GetInvitationsByOrganizationRequest request);
  $async.Future<$14.GetInvitationsByUserResponse> getInvitationsByUser($grpc.ServiceCall call, $14.GetInvitationsByUserRequest request);
  $async.Future<$14.AcceptInvitationResponse> acceptInvitation($grpc.ServiceCall call, $14.AcceptInvitationRequest request);
  $async.Future<$14.DeclineInvitationResponse> declineInvitation($grpc.ServiceCall call, $14.DeclineInvitationRequest request);
  $async.Future<$14.RevokeInvitationResponse> revokeInvitation($grpc.ServiceCall call, $14.RevokeInvitationRequest request);
}
