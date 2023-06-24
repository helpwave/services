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

import 'organization_svc.pb.dart' as $6;
import 'organization_svc.pbjson.dart';

export 'organization_svc.pb.dart';

abstract class OrganizationServiceBase extends $pb.GeneratedService {
  $async.Future<$6.CreateOrganizationResponse> createOrganization($pb.ServerContext ctx, $6.CreateOrganizationRequest request);
  $async.Future<$6.CreateOrganizationForUserResponse> createOrganizationForUser($pb.ServerContext ctx, $6.CreateOrganizationForUserRequest request);
  $async.Future<$6.GetOrganizationResponse> getOrganization($pb.ServerContext ctx, $6.GetOrganizationRequest request);
  $async.Future<$6.GetOrganizationsByUserResponse> getOrganizationsByUser($pb.ServerContext ctx, $6.GetOrganizationsByUserRequest request);
  $async.Future<$6.UpdateOrganizationResponse> updateOrganization($pb.ServerContext ctx, $6.UpdateOrganizationRequest request);
  $async.Future<$6.DeleteOrganizationResponse> deleteOrganization($pb.ServerContext ctx, $6.DeleteOrganizationRequest request);
  $async.Future<$6.AddMemberResponse> addMember($pb.ServerContext ctx, $6.AddMemberRequest request);
  $async.Future<$6.RemoveMemberResponse> removeMember($pb.ServerContext ctx, $6.RemoveMemberRequest request);
  $async.Future<$6.InviteMemberResponse> inviteMember($pb.ServerContext ctx, $6.InviteMemberRequest request);
  $async.Future<$6.AcceptInvitationResponse> acceptInvitation($pb.ServerContext ctx, $6.AcceptInvitationRequest request);
  $async.Future<$6.GetInvitationsByUserResponse> getInvitationsByUser($pb.ServerContext ctx, $6.GetInvitationsByUserRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CreateOrganization': return $6.CreateOrganizationRequest();
      case 'CreateOrganizationForUser': return $6.CreateOrganizationForUserRequest();
      case 'GetOrganization': return $6.GetOrganizationRequest();
      case 'GetOrganizationsByUser': return $6.GetOrganizationsByUserRequest();
      case 'UpdateOrganization': return $6.UpdateOrganizationRequest();
      case 'DeleteOrganization': return $6.DeleteOrganizationRequest();
      case 'AddMember': return $6.AddMemberRequest();
      case 'RemoveMember': return $6.RemoveMemberRequest();
      case 'InviteMember': return $6.InviteMemberRequest();
      case 'AcceptInvitation': return $6.AcceptInvitationRequest();
      case 'GetInvitationsByUser': return $6.GetInvitationsByUserRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CreateOrganization': return this.createOrganization(ctx, request as $6.CreateOrganizationRequest);
      case 'CreateOrganizationForUser': return this.createOrganizationForUser(ctx, request as $6.CreateOrganizationForUserRequest);
      case 'GetOrganization': return this.getOrganization(ctx, request as $6.GetOrganizationRequest);
      case 'GetOrganizationsByUser': return this.getOrganizationsByUser(ctx, request as $6.GetOrganizationsByUserRequest);
      case 'UpdateOrganization': return this.updateOrganization(ctx, request as $6.UpdateOrganizationRequest);
      case 'DeleteOrganization': return this.deleteOrganization(ctx, request as $6.DeleteOrganizationRequest);
      case 'AddMember': return this.addMember(ctx, request as $6.AddMemberRequest);
      case 'RemoveMember': return this.removeMember(ctx, request as $6.RemoveMemberRequest);
      case 'InviteMember': return this.inviteMember(ctx, request as $6.InviteMemberRequest);
      case 'AcceptInvitation': return this.acceptInvitation(ctx, request as $6.AcceptInvitationRequest);
      case 'GetInvitationsByUser': return this.getInvitationsByUser(ctx, request as $6.GetInvitationsByUserRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => OrganizationServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => OrganizationServiceBase$messageJson;
}

