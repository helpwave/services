//
//  Generated code. Do not modify.
//  source: proto/services/user_svc/v1/organization_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'organization_svc.pb.dart' as $9;
import 'organization_svc.pbjson.dart';

export 'organization_svc.pb.dart';

abstract class OrganizationServiceBase extends $pb.GeneratedService {
  $async.Future<$9.CreateOrganizationResponse> createOrganization($pb.ServerContext ctx, $9.CreateOrganizationRequest request);
  $async.Future<$9.CreateOrganizationForUserResponse> createOrganizationForUser($pb.ServerContext ctx, $9.CreateOrganizationForUserRequest request);
  $async.Future<$9.GetOrganizationResponse> getOrganization($pb.ServerContext ctx, $9.GetOrganizationRequest request);
  $async.Future<$9.GetOrganizationsByUserResponse> getOrganizationsByUser($pb.ServerContext ctx, $9.GetOrganizationsByUserRequest request);
  $async.Future<$9.UpdateOrganizationResponse> updateOrganization($pb.ServerContext ctx, $9.UpdateOrganizationRequest request);
  $async.Future<$9.DeleteOrganizationResponse> deleteOrganization($pb.ServerContext ctx, $9.DeleteOrganizationRequest request);
  $async.Future<$9.AddMemberResponse> addMember($pb.ServerContext ctx, $9.AddMemberRequest request);
  $async.Future<$9.RemoveMemberResponse> removeMember($pb.ServerContext ctx, $9.RemoveMemberRequest request);
  $async.Future<$9.InviteMemberResponse> inviteMember($pb.ServerContext ctx, $9.InviteMemberRequest request);
  $async.Future<$9.AcceptInvitationResponse> acceptInvitation($pb.ServerContext ctx, $9.AcceptInvitationRequest request);
  $async.Future<$9.GetInvitationsByUserResponse> getInvitationsByUser($pb.ServerContext ctx, $9.GetInvitationsByUserRequest request);
  $async.Future<$9.DeclineInvitationResponse> declineInvitation($pb.ServerContext ctx, $9.DeclineInvitationRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CreateOrganization': return $9.CreateOrganizationRequest();
      case 'CreateOrganizationForUser': return $9.CreateOrganizationForUserRequest();
      case 'GetOrganization': return $9.GetOrganizationRequest();
      case 'GetOrganizationsByUser': return $9.GetOrganizationsByUserRequest();
      case 'UpdateOrganization': return $9.UpdateOrganizationRequest();
      case 'DeleteOrganization': return $9.DeleteOrganizationRequest();
      case 'AddMember': return $9.AddMemberRequest();
      case 'RemoveMember': return $9.RemoveMemberRequest();
      case 'InviteMember': return $9.InviteMemberRequest();
      case 'AcceptInvitation': return $9.AcceptInvitationRequest();
      case 'GetInvitationsByUser': return $9.GetInvitationsByUserRequest();
      case 'DeclineInvitation': return $9.DeclineInvitationRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CreateOrganization': return this.createOrganization(ctx, request as $9.CreateOrganizationRequest);
      case 'CreateOrganizationForUser': return this.createOrganizationForUser(ctx, request as $9.CreateOrganizationForUserRequest);
      case 'GetOrganization': return this.getOrganization(ctx, request as $9.GetOrganizationRequest);
      case 'GetOrganizationsByUser': return this.getOrganizationsByUser(ctx, request as $9.GetOrganizationsByUserRequest);
      case 'UpdateOrganization': return this.updateOrganization(ctx, request as $9.UpdateOrganizationRequest);
      case 'DeleteOrganization': return this.deleteOrganization(ctx, request as $9.DeleteOrganizationRequest);
      case 'AddMember': return this.addMember(ctx, request as $9.AddMemberRequest);
      case 'RemoveMember': return this.removeMember(ctx, request as $9.RemoveMemberRequest);
      case 'InviteMember': return this.inviteMember(ctx, request as $9.InviteMemberRequest);
      case 'AcceptInvitation': return this.acceptInvitation(ctx, request as $9.AcceptInvitationRequest);
      case 'GetInvitationsByUser': return this.getInvitationsByUser(ctx, request as $9.GetInvitationsByUserRequest);
      case 'DeclineInvitation': return this.declineInvitation(ctx, request as $9.DeclineInvitationRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => OrganizationServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => OrganizationServiceBase$messageJson;
}

