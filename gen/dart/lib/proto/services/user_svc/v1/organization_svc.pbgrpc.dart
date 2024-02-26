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

import 'organization_svc.pb.dart' as $12;

export 'organization_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.user_svc.v1.OrganizationService')
class OrganizationServiceClient extends $grpc.Client {
  static final _$createOrganization = $grpc.ClientMethod<$12.CreateOrganizationRequest, $12.CreateOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/CreateOrganization',
      ($12.CreateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.CreateOrganizationResponse.fromBuffer(value));
  static final _$createOrganizationForUser = $grpc.ClientMethod<$12.CreateOrganizationForUserRequest, $12.CreateOrganizationForUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/CreateOrganizationForUser',
      ($12.CreateOrganizationForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.CreateOrganizationForUserResponse.fromBuffer(value));
  static final _$getOrganization = $grpc.ClientMethod<$12.GetOrganizationRequest, $12.GetOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganization',
      ($12.GetOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetOrganizationResponse.fromBuffer(value));
  static final _$getOrganizationsByUser = $grpc.ClientMethod<$12.GetOrganizationsByUserRequest, $12.GetOrganizationsByUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsByUser',
      ($12.GetOrganizationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetOrganizationsByUserResponse.fromBuffer(value));
  static final _$getOrganizationsForUser = $grpc.ClientMethod<$12.GetOrganizationsForUserRequest, $12.GetOrganizationsForUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsForUser',
      ($12.GetOrganizationsForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetOrganizationsForUserResponse.fromBuffer(value));
  static final _$updateOrganization = $grpc.ClientMethod<$12.UpdateOrganizationRequest, $12.UpdateOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/UpdateOrganization',
      ($12.UpdateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UpdateOrganizationResponse.fromBuffer(value));
  static final _$deleteOrganization = $grpc.ClientMethod<$12.DeleteOrganizationRequest, $12.DeleteOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/DeleteOrganization',
      ($12.DeleteOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.DeleteOrganizationResponse.fromBuffer(value));
  static final _$getMembersByOrganization = $grpc.ClientMethod<$12.GetMembersByOrganizationRequest, $12.GetMembersByOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetMembersByOrganization',
      ($12.GetMembersByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetMembersByOrganizationResponse.fromBuffer(value));
  static final _$addMember = $grpc.ClientMethod<$12.AddMemberRequest, $12.AddMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/AddMember',
      ($12.AddMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.AddMemberResponse.fromBuffer(value));
  static final _$removeMember = $grpc.ClientMethod<$12.RemoveMemberRequest, $12.RemoveMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/RemoveMember',
      ($12.RemoveMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.RemoveMemberResponse.fromBuffer(value));
  static final _$inviteMember = $grpc.ClientMethod<$12.InviteMemberRequest, $12.InviteMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/InviteMember',
      ($12.InviteMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.InviteMemberResponse.fromBuffer(value));
  static final _$getInvitationsByOrganization = $grpc.ClientMethod<$12.GetInvitationsByOrganizationRequest, $12.GetInvitationsByOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByOrganization',
      ($12.GetInvitationsByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetInvitationsByOrganizationResponse.fromBuffer(value));
  static final _$getInvitationsByUser = $grpc.ClientMethod<$12.GetInvitationsByUserRequest, $12.GetInvitationsByUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByUser',
      ($12.GetInvitationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetInvitationsByUserResponse.fromBuffer(value));
  static final _$acceptInvitation = $grpc.ClientMethod<$12.AcceptInvitationRequest, $12.AcceptInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/AcceptInvitation',
      ($12.AcceptInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.AcceptInvitationResponse.fromBuffer(value));
  static final _$declineInvitation = $grpc.ClientMethod<$12.DeclineInvitationRequest, $12.DeclineInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/DeclineInvitation',
      ($12.DeclineInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.DeclineInvitationResponse.fromBuffer(value));
  static final _$revokeInvitation = $grpc.ClientMethod<$12.RevokeInvitationRequest, $12.RevokeInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/RevokeInvitation',
      ($12.RevokeInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.RevokeInvitationResponse.fromBuffer(value));

  OrganizationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$12.CreateOrganizationResponse> createOrganization($12.CreateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$12.CreateOrganizationForUserResponse> createOrganizationForUser($12.CreateOrganizationForUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganizationForUser, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetOrganizationResponse> getOrganization($12.GetOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetOrganizationsByUserResponse> getOrganizationsByUser($12.GetOrganizationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetOrganizationsForUserResponse> getOrganizationsForUser($12.GetOrganizationsForUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsForUser, request, options: options);
  }

  $grpc.ResponseFuture<$12.UpdateOrganizationResponse> updateOrganization($12.UpdateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$12.DeleteOrganizationResponse> deleteOrganization($12.DeleteOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetMembersByOrganizationResponse> getMembersByOrganization($12.GetMembersByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMembersByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$12.AddMemberResponse> addMember($12.AddMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addMember, request, options: options);
  }

  $grpc.ResponseFuture<$12.RemoveMemberResponse> removeMember($12.RemoveMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeMember, request, options: options);
  }

  $grpc.ResponseFuture<$12.InviteMemberResponse> inviteMember($12.InviteMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$inviteMember, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($12.GetInvitationsByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetInvitationsByUserResponse> getInvitationsByUser($12.GetInvitationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$12.AcceptInvitationResponse> acceptInvitation($12.AcceptInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$acceptInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$12.DeclineInvitationResponse> declineInvitation($12.DeclineInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$declineInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$12.RevokeInvitationResponse> revokeInvitation($12.RevokeInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeInvitation, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.user_svc.v1.OrganizationService')
abstract class OrganizationServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.user_svc.v1.OrganizationService';

  OrganizationServiceBase() {
    $addMethod($grpc.ServiceMethod<$12.CreateOrganizationRequest, $12.CreateOrganizationResponse>(
        'CreateOrganization',
        createOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.CreateOrganizationRequest.fromBuffer(value),
        ($12.CreateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.CreateOrganizationForUserRequest, $12.CreateOrganizationForUserResponse>(
        'CreateOrganizationForUser',
        createOrganizationForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.CreateOrganizationForUserRequest.fromBuffer(value),
        ($12.CreateOrganizationForUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetOrganizationRequest, $12.GetOrganizationResponse>(
        'GetOrganization',
        getOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetOrganizationRequest.fromBuffer(value),
        ($12.GetOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetOrganizationsByUserRequest, $12.GetOrganizationsByUserResponse>(
        'GetOrganizationsByUser',
        getOrganizationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetOrganizationsByUserRequest.fromBuffer(value),
        ($12.GetOrganizationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetOrganizationsForUserRequest, $12.GetOrganizationsForUserResponse>(
        'GetOrganizationsForUser',
        getOrganizationsForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetOrganizationsForUserRequest.fromBuffer(value),
        ($12.GetOrganizationsForUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UpdateOrganizationRequest, $12.UpdateOrganizationResponse>(
        'UpdateOrganization',
        updateOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UpdateOrganizationRequest.fromBuffer(value),
        ($12.UpdateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.DeleteOrganizationRequest, $12.DeleteOrganizationResponse>(
        'DeleteOrganization',
        deleteOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.DeleteOrganizationRequest.fromBuffer(value),
        ($12.DeleteOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetMembersByOrganizationRequest, $12.GetMembersByOrganizationResponse>(
        'GetMembersByOrganization',
        getMembersByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetMembersByOrganizationRequest.fromBuffer(value),
        ($12.GetMembersByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.AddMemberRequest, $12.AddMemberResponse>(
        'AddMember',
        addMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.AddMemberRequest.fromBuffer(value),
        ($12.AddMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.RemoveMemberRequest, $12.RemoveMemberResponse>(
        'RemoveMember',
        removeMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.RemoveMemberRequest.fromBuffer(value),
        ($12.RemoveMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.InviteMemberRequest, $12.InviteMemberResponse>(
        'InviteMember',
        inviteMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.InviteMemberRequest.fromBuffer(value),
        ($12.InviteMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetInvitationsByOrganizationRequest, $12.GetInvitationsByOrganizationResponse>(
        'GetInvitationsByOrganization',
        getInvitationsByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetInvitationsByOrganizationRequest.fromBuffer(value),
        ($12.GetInvitationsByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetInvitationsByUserRequest, $12.GetInvitationsByUserResponse>(
        'GetInvitationsByUser',
        getInvitationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetInvitationsByUserRequest.fromBuffer(value),
        ($12.GetInvitationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.AcceptInvitationRequest, $12.AcceptInvitationResponse>(
        'AcceptInvitation',
        acceptInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.AcceptInvitationRequest.fromBuffer(value),
        ($12.AcceptInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.DeclineInvitationRequest, $12.DeclineInvitationResponse>(
        'DeclineInvitation',
        declineInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.DeclineInvitationRequest.fromBuffer(value),
        ($12.DeclineInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.RevokeInvitationRequest, $12.RevokeInvitationResponse>(
        'RevokeInvitation',
        revokeInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.RevokeInvitationRequest.fromBuffer(value),
        ($12.RevokeInvitationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$12.CreateOrganizationResponse> createOrganization_Pre($grpc.ServiceCall call, $async.Future<$12.CreateOrganizationRequest> request) async {
    return createOrganization(call, await request);
  }

  $async.Future<$12.CreateOrganizationForUserResponse> createOrganizationForUser_Pre($grpc.ServiceCall call, $async.Future<$12.CreateOrganizationForUserRequest> request) async {
    return createOrganizationForUser(call, await request);
  }

  $async.Future<$12.GetOrganizationResponse> getOrganization_Pre($grpc.ServiceCall call, $async.Future<$12.GetOrganizationRequest> request) async {
    return getOrganization(call, await request);
  }

  $async.Future<$12.GetOrganizationsByUserResponse> getOrganizationsByUser_Pre($grpc.ServiceCall call, $async.Future<$12.GetOrganizationsByUserRequest> request) async {
    return getOrganizationsByUser(call, await request);
  }

  $async.Future<$12.GetOrganizationsForUserResponse> getOrganizationsForUser_Pre($grpc.ServiceCall call, $async.Future<$12.GetOrganizationsForUserRequest> request) async {
    return getOrganizationsForUser(call, await request);
  }

  $async.Future<$12.UpdateOrganizationResponse> updateOrganization_Pre($grpc.ServiceCall call, $async.Future<$12.UpdateOrganizationRequest> request) async {
    return updateOrganization(call, await request);
  }

  $async.Future<$12.DeleteOrganizationResponse> deleteOrganization_Pre($grpc.ServiceCall call, $async.Future<$12.DeleteOrganizationRequest> request) async {
    return deleteOrganization(call, await request);
  }

  $async.Future<$12.GetMembersByOrganizationResponse> getMembersByOrganization_Pre($grpc.ServiceCall call, $async.Future<$12.GetMembersByOrganizationRequest> request) async {
    return getMembersByOrganization(call, await request);
  }

  $async.Future<$12.AddMemberResponse> addMember_Pre($grpc.ServiceCall call, $async.Future<$12.AddMemberRequest> request) async {
    return addMember(call, await request);
  }

  $async.Future<$12.RemoveMemberResponse> removeMember_Pre($grpc.ServiceCall call, $async.Future<$12.RemoveMemberRequest> request) async {
    return removeMember(call, await request);
  }

  $async.Future<$12.InviteMemberResponse> inviteMember_Pre($grpc.ServiceCall call, $async.Future<$12.InviteMemberRequest> request) async {
    return inviteMember(call, await request);
  }

  $async.Future<$12.GetInvitationsByOrganizationResponse> getInvitationsByOrganization_Pre($grpc.ServiceCall call, $async.Future<$12.GetInvitationsByOrganizationRequest> request) async {
    return getInvitationsByOrganization(call, await request);
  }

  $async.Future<$12.GetInvitationsByUserResponse> getInvitationsByUser_Pre($grpc.ServiceCall call, $async.Future<$12.GetInvitationsByUserRequest> request) async {
    return getInvitationsByUser(call, await request);
  }

  $async.Future<$12.AcceptInvitationResponse> acceptInvitation_Pre($grpc.ServiceCall call, $async.Future<$12.AcceptInvitationRequest> request) async {
    return acceptInvitation(call, await request);
  }

  $async.Future<$12.DeclineInvitationResponse> declineInvitation_Pre($grpc.ServiceCall call, $async.Future<$12.DeclineInvitationRequest> request) async {
    return declineInvitation(call, await request);
  }

  $async.Future<$12.RevokeInvitationResponse> revokeInvitation_Pre($grpc.ServiceCall call, $async.Future<$12.RevokeInvitationRequest> request) async {
    return revokeInvitation(call, await request);
  }

  $async.Future<$12.CreateOrganizationResponse> createOrganization($grpc.ServiceCall call, $12.CreateOrganizationRequest request);
  $async.Future<$12.CreateOrganizationForUserResponse> createOrganizationForUser($grpc.ServiceCall call, $12.CreateOrganizationForUserRequest request);
  $async.Future<$12.GetOrganizationResponse> getOrganization($grpc.ServiceCall call, $12.GetOrganizationRequest request);
  $async.Future<$12.GetOrganizationsByUserResponse> getOrganizationsByUser($grpc.ServiceCall call, $12.GetOrganizationsByUserRequest request);
  $async.Future<$12.GetOrganizationsForUserResponse> getOrganizationsForUser($grpc.ServiceCall call, $12.GetOrganizationsForUserRequest request);
  $async.Future<$12.UpdateOrganizationResponse> updateOrganization($grpc.ServiceCall call, $12.UpdateOrganizationRequest request);
  $async.Future<$12.DeleteOrganizationResponse> deleteOrganization($grpc.ServiceCall call, $12.DeleteOrganizationRequest request);
  $async.Future<$12.GetMembersByOrganizationResponse> getMembersByOrganization($grpc.ServiceCall call, $12.GetMembersByOrganizationRequest request);
  $async.Future<$12.AddMemberResponse> addMember($grpc.ServiceCall call, $12.AddMemberRequest request);
  $async.Future<$12.RemoveMemberResponse> removeMember($grpc.ServiceCall call, $12.RemoveMemberRequest request);
  $async.Future<$12.InviteMemberResponse> inviteMember($grpc.ServiceCall call, $12.InviteMemberRequest request);
  $async.Future<$12.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($grpc.ServiceCall call, $12.GetInvitationsByOrganizationRequest request);
  $async.Future<$12.GetInvitationsByUserResponse> getInvitationsByUser($grpc.ServiceCall call, $12.GetInvitationsByUserRequest request);
  $async.Future<$12.AcceptInvitationResponse> acceptInvitation($grpc.ServiceCall call, $12.AcceptInvitationRequest request);
  $async.Future<$12.DeclineInvitationResponse> declineInvitation($grpc.ServiceCall call, $12.DeclineInvitationRequest request);
  $async.Future<$12.RevokeInvitationResponse> revokeInvitation($grpc.ServiceCall call, $12.RevokeInvitationRequest request);
}
