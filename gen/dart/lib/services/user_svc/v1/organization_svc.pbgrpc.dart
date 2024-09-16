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

import 'organization_svc.pb.dart' as $17;

export 'organization_svc.pb.dart';

@$pb.GrpcServiceName('services.user_svc.v1.OrganizationService')
class OrganizationServiceClient extends $grpc.Client {
  static final _$createOrganization = $grpc.ClientMethod<$17.CreateOrganizationRequest, $17.CreateOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/CreateOrganization',
      ($17.CreateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.CreateOrganizationResponse.fromBuffer(value));
  static final _$createOrganizationForUser = $grpc.ClientMethod<$17.CreateOrganizationForUserRequest, $17.CreateOrganizationForUserResponse>(
      '/services.user_svc.v1.OrganizationService/CreateOrganizationForUser',
      ($17.CreateOrganizationForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.CreateOrganizationForUserResponse.fromBuffer(value));
  static final _$getOrganization = $grpc.ClientMethod<$17.GetOrganizationRequest, $17.GetOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/GetOrganization',
      ($17.GetOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.GetOrganizationResponse.fromBuffer(value));
  static final _$getOrganizationsByUser = $grpc.ClientMethod<$17.GetOrganizationsByUserRequest, $17.GetOrganizationsByUserResponse>(
      '/services.user_svc.v1.OrganizationService/GetOrganizationsByUser',
      ($17.GetOrganizationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.GetOrganizationsByUserResponse.fromBuffer(value));
  static final _$getOrganizationsForUser = $grpc.ClientMethod<$17.GetOrganizationsForUserRequest, $17.GetOrganizationsForUserResponse>(
      '/services.user_svc.v1.OrganizationService/GetOrganizationsForUser',
      ($17.GetOrganizationsForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.GetOrganizationsForUserResponse.fromBuffer(value));
  static final _$updateOrganization = $grpc.ClientMethod<$17.UpdateOrganizationRequest, $17.UpdateOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/UpdateOrganization',
      ($17.UpdateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.UpdateOrganizationResponse.fromBuffer(value));
  static final _$deleteOrganization = $grpc.ClientMethod<$17.DeleteOrganizationRequest, $17.DeleteOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/DeleteOrganization',
      ($17.DeleteOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.DeleteOrganizationResponse.fromBuffer(value));
  static final _$getMembersByOrganization = $grpc.ClientMethod<$17.GetMembersByOrganizationRequest, $17.GetMembersByOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/GetMembersByOrganization',
      ($17.GetMembersByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.GetMembersByOrganizationResponse.fromBuffer(value));
  static final _$addMember = $grpc.ClientMethod<$17.AddMemberRequest, $17.AddMemberResponse>(
      '/services.user_svc.v1.OrganizationService/AddMember',
      ($17.AddMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.AddMemberResponse.fromBuffer(value));
  static final _$removeMember = $grpc.ClientMethod<$17.RemoveMemberRequest, $17.RemoveMemberResponse>(
      '/services.user_svc.v1.OrganizationService/RemoveMember',
      ($17.RemoveMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.RemoveMemberResponse.fromBuffer(value));
  static final _$inviteMember = $grpc.ClientMethod<$17.InviteMemberRequest, $17.InviteMemberResponse>(
      '/services.user_svc.v1.OrganizationService/InviteMember',
      ($17.InviteMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.InviteMemberResponse.fromBuffer(value));
  static final _$getInvitationsByOrganization = $grpc.ClientMethod<$17.GetInvitationsByOrganizationRequest, $17.GetInvitationsByOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/GetInvitationsByOrganization',
      ($17.GetInvitationsByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.GetInvitationsByOrganizationResponse.fromBuffer(value));
  static final _$getInvitationsByUser = $grpc.ClientMethod<$17.GetInvitationsByUserRequest, $17.GetInvitationsByUserResponse>(
      '/services.user_svc.v1.OrganizationService/GetInvitationsByUser',
      ($17.GetInvitationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.GetInvitationsByUserResponse.fromBuffer(value));
  static final _$acceptInvitation = $grpc.ClientMethod<$17.AcceptInvitationRequest, $17.AcceptInvitationResponse>(
      '/services.user_svc.v1.OrganizationService/AcceptInvitation',
      ($17.AcceptInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.AcceptInvitationResponse.fromBuffer(value));
  static final _$declineInvitation = $grpc.ClientMethod<$17.DeclineInvitationRequest, $17.DeclineInvitationResponse>(
      '/services.user_svc.v1.OrganizationService/DeclineInvitation',
      ($17.DeclineInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.DeclineInvitationResponse.fromBuffer(value));
  static final _$revokeInvitation = $grpc.ClientMethod<$17.RevokeInvitationRequest, $17.RevokeInvitationResponse>(
      '/services.user_svc.v1.OrganizationService/RevokeInvitation',
      ($17.RevokeInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.RevokeInvitationResponse.fromBuffer(value));

  OrganizationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$17.CreateOrganizationResponse> createOrganization($17.CreateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$17.CreateOrganizationForUserResponse> createOrganizationForUser($17.CreateOrganizationForUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganizationForUser, request, options: options);
  }

  $grpc.ResponseFuture<$17.GetOrganizationResponse> getOrganization($17.GetOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$17.GetOrganizationsByUserResponse> getOrganizationsByUser($17.GetOrganizationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$17.GetOrganizationsForUserResponse> getOrganizationsForUser($17.GetOrganizationsForUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsForUser, request, options: options);
  }

  $grpc.ResponseFuture<$17.UpdateOrganizationResponse> updateOrganization($17.UpdateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$17.DeleteOrganizationResponse> deleteOrganization($17.DeleteOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$17.GetMembersByOrganizationResponse> getMembersByOrganization($17.GetMembersByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMembersByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$17.AddMemberResponse> addMember($17.AddMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addMember, request, options: options);
  }

  $grpc.ResponseFuture<$17.RemoveMemberResponse> removeMember($17.RemoveMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeMember, request, options: options);
  }

  $grpc.ResponseFuture<$17.InviteMemberResponse> inviteMember($17.InviteMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$inviteMember, request, options: options);
  }

  $grpc.ResponseFuture<$17.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($17.GetInvitationsByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$17.GetInvitationsByUserResponse> getInvitationsByUser($17.GetInvitationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$17.AcceptInvitationResponse> acceptInvitation($17.AcceptInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$acceptInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$17.DeclineInvitationResponse> declineInvitation($17.DeclineInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$declineInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$17.RevokeInvitationResponse> revokeInvitation($17.RevokeInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeInvitation, request, options: options);
  }
}

@$pb.GrpcServiceName('services.user_svc.v1.OrganizationService')
abstract class OrganizationServiceBase extends $grpc.Service {
  $core.String get $name => 'services.user_svc.v1.OrganizationService';

  OrganizationServiceBase() {
    $addMethod($grpc.ServiceMethod<$17.CreateOrganizationRequest, $17.CreateOrganizationResponse>(
        'CreateOrganization',
        createOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.CreateOrganizationRequest.fromBuffer(value),
        ($17.CreateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.CreateOrganizationForUserRequest, $17.CreateOrganizationForUserResponse>(
        'CreateOrganizationForUser',
        createOrganizationForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.CreateOrganizationForUserRequest.fromBuffer(value),
        ($17.CreateOrganizationForUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.GetOrganizationRequest, $17.GetOrganizationResponse>(
        'GetOrganization',
        getOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.GetOrganizationRequest.fromBuffer(value),
        ($17.GetOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.GetOrganizationsByUserRequest, $17.GetOrganizationsByUserResponse>(
        'GetOrganizationsByUser',
        getOrganizationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.GetOrganizationsByUserRequest.fromBuffer(value),
        ($17.GetOrganizationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.GetOrganizationsForUserRequest, $17.GetOrganizationsForUserResponse>(
        'GetOrganizationsForUser',
        getOrganizationsForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.GetOrganizationsForUserRequest.fromBuffer(value),
        ($17.GetOrganizationsForUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.UpdateOrganizationRequest, $17.UpdateOrganizationResponse>(
        'UpdateOrganization',
        updateOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.UpdateOrganizationRequest.fromBuffer(value),
        ($17.UpdateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.DeleteOrganizationRequest, $17.DeleteOrganizationResponse>(
        'DeleteOrganization',
        deleteOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.DeleteOrganizationRequest.fromBuffer(value),
        ($17.DeleteOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.GetMembersByOrganizationRequest, $17.GetMembersByOrganizationResponse>(
        'GetMembersByOrganization',
        getMembersByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.GetMembersByOrganizationRequest.fromBuffer(value),
        ($17.GetMembersByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.AddMemberRequest, $17.AddMemberResponse>(
        'AddMember',
        addMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.AddMemberRequest.fromBuffer(value),
        ($17.AddMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.RemoveMemberRequest, $17.RemoveMemberResponse>(
        'RemoveMember',
        removeMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.RemoveMemberRequest.fromBuffer(value),
        ($17.RemoveMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.InviteMemberRequest, $17.InviteMemberResponse>(
        'InviteMember',
        inviteMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.InviteMemberRequest.fromBuffer(value),
        ($17.InviteMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.GetInvitationsByOrganizationRequest, $17.GetInvitationsByOrganizationResponse>(
        'GetInvitationsByOrganization',
        getInvitationsByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.GetInvitationsByOrganizationRequest.fromBuffer(value),
        ($17.GetInvitationsByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.GetInvitationsByUserRequest, $17.GetInvitationsByUserResponse>(
        'GetInvitationsByUser',
        getInvitationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.GetInvitationsByUserRequest.fromBuffer(value),
        ($17.GetInvitationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.AcceptInvitationRequest, $17.AcceptInvitationResponse>(
        'AcceptInvitation',
        acceptInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.AcceptInvitationRequest.fromBuffer(value),
        ($17.AcceptInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.DeclineInvitationRequest, $17.DeclineInvitationResponse>(
        'DeclineInvitation',
        declineInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.DeclineInvitationRequest.fromBuffer(value),
        ($17.DeclineInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.RevokeInvitationRequest, $17.RevokeInvitationResponse>(
        'RevokeInvitation',
        revokeInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.RevokeInvitationRequest.fromBuffer(value),
        ($17.RevokeInvitationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$17.CreateOrganizationResponse> createOrganization_Pre($grpc.ServiceCall call, $async.Future<$17.CreateOrganizationRequest> request) async {
    return createOrganization(call, await request);
  }

  $async.Future<$17.CreateOrganizationForUserResponse> createOrganizationForUser_Pre($grpc.ServiceCall call, $async.Future<$17.CreateOrganizationForUserRequest> request) async {
    return createOrganizationForUser(call, await request);
  }

  $async.Future<$17.GetOrganizationResponse> getOrganization_Pre($grpc.ServiceCall call, $async.Future<$17.GetOrganizationRequest> request) async {
    return getOrganization(call, await request);
  }

  $async.Future<$17.GetOrganizationsByUserResponse> getOrganizationsByUser_Pre($grpc.ServiceCall call, $async.Future<$17.GetOrganizationsByUserRequest> request) async {
    return getOrganizationsByUser(call, await request);
  }

  $async.Future<$17.GetOrganizationsForUserResponse> getOrganizationsForUser_Pre($grpc.ServiceCall call, $async.Future<$17.GetOrganizationsForUserRequest> request) async {
    return getOrganizationsForUser(call, await request);
  }

  $async.Future<$17.UpdateOrganizationResponse> updateOrganization_Pre($grpc.ServiceCall call, $async.Future<$17.UpdateOrganizationRequest> request) async {
    return updateOrganization(call, await request);
  }

  $async.Future<$17.DeleteOrganizationResponse> deleteOrganization_Pre($grpc.ServiceCall call, $async.Future<$17.DeleteOrganizationRequest> request) async {
    return deleteOrganization(call, await request);
  }

  $async.Future<$17.GetMembersByOrganizationResponse> getMembersByOrganization_Pre($grpc.ServiceCall call, $async.Future<$17.GetMembersByOrganizationRequest> request) async {
    return getMembersByOrganization(call, await request);
  }

  $async.Future<$17.AddMemberResponse> addMember_Pre($grpc.ServiceCall call, $async.Future<$17.AddMemberRequest> request) async {
    return addMember(call, await request);
  }

  $async.Future<$17.RemoveMemberResponse> removeMember_Pre($grpc.ServiceCall call, $async.Future<$17.RemoveMemberRequest> request) async {
    return removeMember(call, await request);
  }

  $async.Future<$17.InviteMemberResponse> inviteMember_Pre($grpc.ServiceCall call, $async.Future<$17.InviteMemberRequest> request) async {
    return inviteMember(call, await request);
  }

  $async.Future<$17.GetInvitationsByOrganizationResponse> getInvitationsByOrganization_Pre($grpc.ServiceCall call, $async.Future<$17.GetInvitationsByOrganizationRequest> request) async {
    return getInvitationsByOrganization(call, await request);
  }

  $async.Future<$17.GetInvitationsByUserResponse> getInvitationsByUser_Pre($grpc.ServiceCall call, $async.Future<$17.GetInvitationsByUserRequest> request) async {
    return getInvitationsByUser(call, await request);
  }

  $async.Future<$17.AcceptInvitationResponse> acceptInvitation_Pre($grpc.ServiceCall call, $async.Future<$17.AcceptInvitationRequest> request) async {
    return acceptInvitation(call, await request);
  }

  $async.Future<$17.DeclineInvitationResponse> declineInvitation_Pre($grpc.ServiceCall call, $async.Future<$17.DeclineInvitationRequest> request) async {
    return declineInvitation(call, await request);
  }

  $async.Future<$17.RevokeInvitationResponse> revokeInvitation_Pre($grpc.ServiceCall call, $async.Future<$17.RevokeInvitationRequest> request) async {
    return revokeInvitation(call, await request);
  }

  $async.Future<$17.CreateOrganizationResponse> createOrganization($grpc.ServiceCall call, $17.CreateOrganizationRequest request);
  $async.Future<$17.CreateOrganizationForUserResponse> createOrganizationForUser($grpc.ServiceCall call, $17.CreateOrganizationForUserRequest request);
  $async.Future<$17.GetOrganizationResponse> getOrganization($grpc.ServiceCall call, $17.GetOrganizationRequest request);
  $async.Future<$17.GetOrganizationsByUserResponse> getOrganizationsByUser($grpc.ServiceCall call, $17.GetOrganizationsByUserRequest request);
  $async.Future<$17.GetOrganizationsForUserResponse> getOrganizationsForUser($grpc.ServiceCall call, $17.GetOrganizationsForUserRequest request);
  $async.Future<$17.UpdateOrganizationResponse> updateOrganization($grpc.ServiceCall call, $17.UpdateOrganizationRequest request);
  $async.Future<$17.DeleteOrganizationResponse> deleteOrganization($grpc.ServiceCall call, $17.DeleteOrganizationRequest request);
  $async.Future<$17.GetMembersByOrganizationResponse> getMembersByOrganization($grpc.ServiceCall call, $17.GetMembersByOrganizationRequest request);
  $async.Future<$17.AddMemberResponse> addMember($grpc.ServiceCall call, $17.AddMemberRequest request);
  $async.Future<$17.RemoveMemberResponse> removeMember($grpc.ServiceCall call, $17.RemoveMemberRequest request);
  $async.Future<$17.InviteMemberResponse> inviteMember($grpc.ServiceCall call, $17.InviteMemberRequest request);
  $async.Future<$17.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($grpc.ServiceCall call, $17.GetInvitationsByOrganizationRequest request);
  $async.Future<$17.GetInvitationsByUserResponse> getInvitationsByUser($grpc.ServiceCall call, $17.GetInvitationsByUserRequest request);
  $async.Future<$17.AcceptInvitationResponse> acceptInvitation($grpc.ServiceCall call, $17.AcceptInvitationRequest request);
  $async.Future<$17.DeclineInvitationResponse> declineInvitation($grpc.ServiceCall call, $17.DeclineInvitationRequest request);
  $async.Future<$17.RevokeInvitationResponse> revokeInvitation($grpc.ServiceCall call, $17.RevokeInvitationRequest request);
}
