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

import 'organization_svc.pb.dart' as $13;

export 'organization_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.user_svc.v1.OrganizationService')
class OrganizationServiceClient extends $grpc.Client {
  static final _$createOrganization = $grpc.ClientMethod<$13.CreateOrganizationRequest, $13.CreateOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/CreateOrganization',
      ($13.CreateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.CreateOrganizationResponse.fromBuffer(value));
  static final _$createOrganizationForUser = $grpc.ClientMethod<$13.CreateOrganizationForUserRequest, $13.CreateOrganizationForUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/CreateOrganizationForUser',
      ($13.CreateOrganizationForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.CreateOrganizationForUserResponse.fromBuffer(value));
  static final _$getOrganization = $grpc.ClientMethod<$13.GetOrganizationRequest, $13.GetOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganization',
      ($13.GetOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetOrganizationResponse.fromBuffer(value));
  static final _$getOrganizationsByUser = $grpc.ClientMethod<$13.GetOrganizationsByUserRequest, $13.GetOrganizationsByUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsByUser',
      ($13.GetOrganizationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetOrganizationsByUserResponse.fromBuffer(value));
  static final _$getOrganizationsForUser = $grpc.ClientMethod<$13.GetOrganizationsForUserRequest, $13.GetOrganizationsForUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsForUser',
      ($13.GetOrganizationsForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetOrganizationsForUserResponse.fromBuffer(value));
  static final _$updateOrganization = $grpc.ClientMethod<$13.UpdateOrganizationRequest, $13.UpdateOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/UpdateOrganization',
      ($13.UpdateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UpdateOrganizationResponse.fromBuffer(value));
  static final _$deleteOrganization = $grpc.ClientMethod<$13.DeleteOrganizationRequest, $13.DeleteOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/DeleteOrganization',
      ($13.DeleteOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DeleteOrganizationResponse.fromBuffer(value));
  static final _$getMembersByOrganization = $grpc.ClientMethod<$13.GetMembersByOrganizationRequest, $13.GetMembersByOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetMembersByOrganization',
      ($13.GetMembersByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetMembersByOrganizationResponse.fromBuffer(value));
  static final _$addMember = $grpc.ClientMethod<$13.AddMemberRequest, $13.AddMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/AddMember',
      ($13.AddMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.AddMemberResponse.fromBuffer(value));
  static final _$removeMember = $grpc.ClientMethod<$13.RemoveMemberRequest, $13.RemoveMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/RemoveMember',
      ($13.RemoveMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.RemoveMemberResponse.fromBuffer(value));
  static final _$inviteMember = $grpc.ClientMethod<$13.InviteMemberRequest, $13.InviteMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/InviteMember',
      ($13.InviteMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.InviteMemberResponse.fromBuffer(value));
  static final _$getInvitationsByOrganization = $grpc.ClientMethod<$13.GetInvitationsByOrganizationRequest, $13.GetInvitationsByOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByOrganization',
      ($13.GetInvitationsByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetInvitationsByOrganizationResponse.fromBuffer(value));
  static final _$getInvitationsByUser = $grpc.ClientMethod<$13.GetInvitationsByUserRequest, $13.GetInvitationsByUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByUser',
      ($13.GetInvitationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetInvitationsByUserResponse.fromBuffer(value));
  static final _$acceptInvitation = $grpc.ClientMethod<$13.AcceptInvitationRequest, $13.AcceptInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/AcceptInvitation',
      ($13.AcceptInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.AcceptInvitationResponse.fromBuffer(value));
  static final _$declineInvitation = $grpc.ClientMethod<$13.DeclineInvitationRequest, $13.DeclineInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/DeclineInvitation',
      ($13.DeclineInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DeclineInvitationResponse.fromBuffer(value));
  static final _$revokeInvitation = $grpc.ClientMethod<$13.RevokeInvitationRequest, $13.RevokeInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/RevokeInvitation',
      ($13.RevokeInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.RevokeInvitationResponse.fromBuffer(value));

  OrganizationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$13.CreateOrganizationResponse> createOrganization($13.CreateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$13.CreateOrganizationForUserResponse> createOrganizationForUser($13.CreateOrganizationForUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganizationForUser, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetOrganizationResponse> getOrganization($13.GetOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetOrganizationsByUserResponse> getOrganizationsByUser($13.GetOrganizationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetOrganizationsForUserResponse> getOrganizationsForUser($13.GetOrganizationsForUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsForUser, request, options: options);
  }

  $grpc.ResponseFuture<$13.UpdateOrganizationResponse> updateOrganization($13.UpdateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$13.DeleteOrganizationResponse> deleteOrganization($13.DeleteOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetMembersByOrganizationResponse> getMembersByOrganization($13.GetMembersByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMembersByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$13.AddMemberResponse> addMember($13.AddMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addMember, request, options: options);
  }

  $grpc.ResponseFuture<$13.RemoveMemberResponse> removeMember($13.RemoveMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeMember, request, options: options);
  }

  $grpc.ResponseFuture<$13.InviteMemberResponse> inviteMember($13.InviteMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$inviteMember, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($13.GetInvitationsByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetInvitationsByUserResponse> getInvitationsByUser($13.GetInvitationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$13.AcceptInvitationResponse> acceptInvitation($13.AcceptInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$acceptInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$13.DeclineInvitationResponse> declineInvitation($13.DeclineInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$declineInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$13.RevokeInvitationResponse> revokeInvitation($13.RevokeInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeInvitation, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.user_svc.v1.OrganizationService')
abstract class OrganizationServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.user_svc.v1.OrganizationService';

  OrganizationServiceBase() {
    $addMethod($grpc.ServiceMethod<$13.CreateOrganizationRequest, $13.CreateOrganizationResponse>(
        'CreateOrganization',
        createOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.CreateOrganizationRequest.fromBuffer(value),
        ($13.CreateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.CreateOrganizationForUserRequest, $13.CreateOrganizationForUserResponse>(
        'CreateOrganizationForUser',
        createOrganizationForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.CreateOrganizationForUserRequest.fromBuffer(value),
        ($13.CreateOrganizationForUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetOrganizationRequest, $13.GetOrganizationResponse>(
        'GetOrganization',
        getOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetOrganizationRequest.fromBuffer(value),
        ($13.GetOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetOrganizationsByUserRequest, $13.GetOrganizationsByUserResponse>(
        'GetOrganizationsByUser',
        getOrganizationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetOrganizationsByUserRequest.fromBuffer(value),
        ($13.GetOrganizationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetOrganizationsForUserRequest, $13.GetOrganizationsForUserResponse>(
        'GetOrganizationsForUser',
        getOrganizationsForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetOrganizationsForUserRequest.fromBuffer(value),
        ($13.GetOrganizationsForUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdateOrganizationRequest, $13.UpdateOrganizationResponse>(
        'UpdateOrganization',
        updateOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UpdateOrganizationRequest.fromBuffer(value),
        ($13.UpdateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DeleteOrganizationRequest, $13.DeleteOrganizationResponse>(
        'DeleteOrganization',
        deleteOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DeleteOrganizationRequest.fromBuffer(value),
        ($13.DeleteOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetMembersByOrganizationRequest, $13.GetMembersByOrganizationResponse>(
        'GetMembersByOrganization',
        getMembersByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetMembersByOrganizationRequest.fromBuffer(value),
        ($13.GetMembersByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.AddMemberRequest, $13.AddMemberResponse>(
        'AddMember',
        addMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.AddMemberRequest.fromBuffer(value),
        ($13.AddMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.RemoveMemberRequest, $13.RemoveMemberResponse>(
        'RemoveMember',
        removeMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.RemoveMemberRequest.fromBuffer(value),
        ($13.RemoveMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.InviteMemberRequest, $13.InviteMemberResponse>(
        'InviteMember',
        inviteMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.InviteMemberRequest.fromBuffer(value),
        ($13.InviteMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetInvitationsByOrganizationRequest, $13.GetInvitationsByOrganizationResponse>(
        'GetInvitationsByOrganization',
        getInvitationsByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetInvitationsByOrganizationRequest.fromBuffer(value),
        ($13.GetInvitationsByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetInvitationsByUserRequest, $13.GetInvitationsByUserResponse>(
        'GetInvitationsByUser',
        getInvitationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetInvitationsByUserRequest.fromBuffer(value),
        ($13.GetInvitationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.AcceptInvitationRequest, $13.AcceptInvitationResponse>(
        'AcceptInvitation',
        acceptInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.AcceptInvitationRequest.fromBuffer(value),
        ($13.AcceptInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DeclineInvitationRequest, $13.DeclineInvitationResponse>(
        'DeclineInvitation',
        declineInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DeclineInvitationRequest.fromBuffer(value),
        ($13.DeclineInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.RevokeInvitationRequest, $13.RevokeInvitationResponse>(
        'RevokeInvitation',
        revokeInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.RevokeInvitationRequest.fromBuffer(value),
        ($13.RevokeInvitationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$13.CreateOrganizationResponse> createOrganization_Pre($grpc.ServiceCall call, $async.Future<$13.CreateOrganizationRequest> request) async {
    return createOrganization(call, await request);
  }

  $async.Future<$13.CreateOrganizationForUserResponse> createOrganizationForUser_Pre($grpc.ServiceCall call, $async.Future<$13.CreateOrganizationForUserRequest> request) async {
    return createOrganizationForUser(call, await request);
  }

  $async.Future<$13.GetOrganizationResponse> getOrganization_Pre($grpc.ServiceCall call, $async.Future<$13.GetOrganizationRequest> request) async {
    return getOrganization(call, await request);
  }

  $async.Future<$13.GetOrganizationsByUserResponse> getOrganizationsByUser_Pre($grpc.ServiceCall call, $async.Future<$13.GetOrganizationsByUserRequest> request) async {
    return getOrganizationsByUser(call, await request);
  }

  $async.Future<$13.GetOrganizationsForUserResponse> getOrganizationsForUser_Pre($grpc.ServiceCall call, $async.Future<$13.GetOrganizationsForUserRequest> request) async {
    return getOrganizationsForUser(call, await request);
  }

  $async.Future<$13.UpdateOrganizationResponse> updateOrganization_Pre($grpc.ServiceCall call, $async.Future<$13.UpdateOrganizationRequest> request) async {
    return updateOrganization(call, await request);
  }

  $async.Future<$13.DeleteOrganizationResponse> deleteOrganization_Pre($grpc.ServiceCall call, $async.Future<$13.DeleteOrganizationRequest> request) async {
    return deleteOrganization(call, await request);
  }

  $async.Future<$13.GetMembersByOrganizationResponse> getMembersByOrganization_Pre($grpc.ServiceCall call, $async.Future<$13.GetMembersByOrganizationRequest> request) async {
    return getMembersByOrganization(call, await request);
  }

  $async.Future<$13.AddMemberResponse> addMember_Pre($grpc.ServiceCall call, $async.Future<$13.AddMemberRequest> request) async {
    return addMember(call, await request);
  }

  $async.Future<$13.RemoveMemberResponse> removeMember_Pre($grpc.ServiceCall call, $async.Future<$13.RemoveMemberRequest> request) async {
    return removeMember(call, await request);
  }

  $async.Future<$13.InviteMemberResponse> inviteMember_Pre($grpc.ServiceCall call, $async.Future<$13.InviteMemberRequest> request) async {
    return inviteMember(call, await request);
  }

  $async.Future<$13.GetInvitationsByOrganizationResponse> getInvitationsByOrganization_Pre($grpc.ServiceCall call, $async.Future<$13.GetInvitationsByOrganizationRequest> request) async {
    return getInvitationsByOrganization(call, await request);
  }

  $async.Future<$13.GetInvitationsByUserResponse> getInvitationsByUser_Pre($grpc.ServiceCall call, $async.Future<$13.GetInvitationsByUserRequest> request) async {
    return getInvitationsByUser(call, await request);
  }

  $async.Future<$13.AcceptInvitationResponse> acceptInvitation_Pre($grpc.ServiceCall call, $async.Future<$13.AcceptInvitationRequest> request) async {
    return acceptInvitation(call, await request);
  }

  $async.Future<$13.DeclineInvitationResponse> declineInvitation_Pre($grpc.ServiceCall call, $async.Future<$13.DeclineInvitationRequest> request) async {
    return declineInvitation(call, await request);
  }

  $async.Future<$13.RevokeInvitationResponse> revokeInvitation_Pre($grpc.ServiceCall call, $async.Future<$13.RevokeInvitationRequest> request) async {
    return revokeInvitation(call, await request);
  }

  $async.Future<$13.CreateOrganizationResponse> createOrganization($grpc.ServiceCall call, $13.CreateOrganizationRequest request);
  $async.Future<$13.CreateOrganizationForUserResponse> createOrganizationForUser($grpc.ServiceCall call, $13.CreateOrganizationForUserRequest request);
  $async.Future<$13.GetOrganizationResponse> getOrganization($grpc.ServiceCall call, $13.GetOrganizationRequest request);
  $async.Future<$13.GetOrganizationsByUserResponse> getOrganizationsByUser($grpc.ServiceCall call, $13.GetOrganizationsByUserRequest request);
  $async.Future<$13.GetOrganizationsForUserResponse> getOrganizationsForUser($grpc.ServiceCall call, $13.GetOrganizationsForUserRequest request);
  $async.Future<$13.UpdateOrganizationResponse> updateOrganization($grpc.ServiceCall call, $13.UpdateOrganizationRequest request);
  $async.Future<$13.DeleteOrganizationResponse> deleteOrganization($grpc.ServiceCall call, $13.DeleteOrganizationRequest request);
  $async.Future<$13.GetMembersByOrganizationResponse> getMembersByOrganization($grpc.ServiceCall call, $13.GetMembersByOrganizationRequest request);
  $async.Future<$13.AddMemberResponse> addMember($grpc.ServiceCall call, $13.AddMemberRequest request);
  $async.Future<$13.RemoveMemberResponse> removeMember($grpc.ServiceCall call, $13.RemoveMemberRequest request);
  $async.Future<$13.InviteMemberResponse> inviteMember($grpc.ServiceCall call, $13.InviteMemberRequest request);
  $async.Future<$13.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($grpc.ServiceCall call, $13.GetInvitationsByOrganizationRequest request);
  $async.Future<$13.GetInvitationsByUserResponse> getInvitationsByUser($grpc.ServiceCall call, $13.GetInvitationsByUserRequest request);
  $async.Future<$13.AcceptInvitationResponse> acceptInvitation($grpc.ServiceCall call, $13.AcceptInvitationRequest request);
  $async.Future<$13.DeclineInvitationResponse> declineInvitation($grpc.ServiceCall call, $13.DeclineInvitationRequest request);
  $async.Future<$13.RevokeInvitationResponse> revokeInvitation($grpc.ServiceCall call, $13.RevokeInvitationRequest request);
}
