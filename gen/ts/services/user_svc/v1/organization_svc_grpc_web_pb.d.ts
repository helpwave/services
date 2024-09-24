import * as grpcWeb from 'grpc-web';

import * as services_user_svc_v1_organization_svc_pb from '../../../services/user_svc/v1/organization_svc_pb'; // proto import: "services/user_svc/v1/organization_svc.proto"


export class OrganizationServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createOrganization(
    request: services_user_svc_v1_organization_svc_pb.CreateOrganizationRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_user_svc_v1_organization_svc_pb.CreateOrganizationResponse) => void
  ): grpcWeb.ClientReadableStream<services_user_svc_v1_organization_svc_pb.CreateOrganizationResponse>;

  getOrganization(
    request: services_user_svc_v1_organization_svc_pb.GetOrganizationRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_user_svc_v1_organization_svc_pb.GetOrganizationResponse) => void
  ): grpcWeb.ClientReadableStream<services_user_svc_v1_organization_svc_pb.GetOrganizationResponse>;

  getOrganizationsByUser(
    request: services_user_svc_v1_organization_svc_pb.GetOrganizationsByUserRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_user_svc_v1_organization_svc_pb.GetOrganizationsByUserResponse) => void
  ): grpcWeb.ClientReadableStream<services_user_svc_v1_organization_svc_pb.GetOrganizationsByUserResponse>;

  getOrganizationsForUser(
    request: services_user_svc_v1_organization_svc_pb.GetOrganizationsForUserRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_user_svc_v1_organization_svc_pb.GetOrganizationsForUserResponse) => void
  ): grpcWeb.ClientReadableStream<services_user_svc_v1_organization_svc_pb.GetOrganizationsForUserResponse>;

  updateOrganization(
    request: services_user_svc_v1_organization_svc_pb.UpdateOrganizationRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_user_svc_v1_organization_svc_pb.UpdateOrganizationResponse) => void
  ): grpcWeb.ClientReadableStream<services_user_svc_v1_organization_svc_pb.UpdateOrganizationResponse>;

  deleteOrganization(
    request: services_user_svc_v1_organization_svc_pb.DeleteOrganizationRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_user_svc_v1_organization_svc_pb.DeleteOrganizationResponse) => void
  ): grpcWeb.ClientReadableStream<services_user_svc_v1_organization_svc_pb.DeleteOrganizationResponse>;

  getMembersByOrganization(
    request: services_user_svc_v1_organization_svc_pb.GetMembersByOrganizationRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_user_svc_v1_organization_svc_pb.GetMembersByOrganizationResponse) => void
  ): grpcWeb.ClientReadableStream<services_user_svc_v1_organization_svc_pb.GetMembersByOrganizationResponse>;

  addMember(
    request: services_user_svc_v1_organization_svc_pb.AddMemberRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_user_svc_v1_organization_svc_pb.AddMemberResponse) => void
  ): grpcWeb.ClientReadableStream<services_user_svc_v1_organization_svc_pb.AddMemberResponse>;

  removeMember(
    request: services_user_svc_v1_organization_svc_pb.RemoveMemberRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_user_svc_v1_organization_svc_pb.RemoveMemberResponse) => void
  ): grpcWeb.ClientReadableStream<services_user_svc_v1_organization_svc_pb.RemoveMemberResponse>;

  inviteMember(
    request: services_user_svc_v1_organization_svc_pb.InviteMemberRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_user_svc_v1_organization_svc_pb.InviteMemberResponse) => void
  ): grpcWeb.ClientReadableStream<services_user_svc_v1_organization_svc_pb.InviteMemberResponse>;

  getInvitationsByOrganization(
    request: services_user_svc_v1_organization_svc_pb.GetInvitationsByOrganizationRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_user_svc_v1_organization_svc_pb.GetInvitationsByOrganizationResponse) => void
  ): grpcWeb.ClientReadableStream<services_user_svc_v1_organization_svc_pb.GetInvitationsByOrganizationResponse>;

  getInvitationsByUser(
    request: services_user_svc_v1_organization_svc_pb.GetInvitationsByUserRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_user_svc_v1_organization_svc_pb.GetInvitationsByUserResponse) => void
  ): grpcWeb.ClientReadableStream<services_user_svc_v1_organization_svc_pb.GetInvitationsByUserResponse>;

  acceptInvitation(
    request: services_user_svc_v1_organization_svc_pb.AcceptInvitationRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_user_svc_v1_organization_svc_pb.AcceptInvitationResponse) => void
  ): grpcWeb.ClientReadableStream<services_user_svc_v1_organization_svc_pb.AcceptInvitationResponse>;

  declineInvitation(
    request: services_user_svc_v1_organization_svc_pb.DeclineInvitationRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_user_svc_v1_organization_svc_pb.DeclineInvitationResponse) => void
  ): grpcWeb.ClientReadableStream<services_user_svc_v1_organization_svc_pb.DeclineInvitationResponse>;

  revokeInvitation(
    request: services_user_svc_v1_organization_svc_pb.RevokeInvitationRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_user_svc_v1_organization_svc_pb.RevokeInvitationResponse) => void
  ): grpcWeb.ClientReadableStream<services_user_svc_v1_organization_svc_pb.RevokeInvitationResponse>;

  createPersonalOrganization(
    request: services_user_svc_v1_organization_svc_pb.CreatePersonalOrganizationRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_user_svc_v1_organization_svc_pb.CreatePersonalOrganizationResponse) => void
  ): grpcWeb.ClientReadableStream<services_user_svc_v1_organization_svc_pb.CreatePersonalOrganizationResponse>;

}

export class OrganizationServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createOrganization(
    request: services_user_svc_v1_organization_svc_pb.CreateOrganizationRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_user_svc_v1_organization_svc_pb.CreateOrganizationResponse>;

  getOrganization(
    request: services_user_svc_v1_organization_svc_pb.GetOrganizationRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_user_svc_v1_organization_svc_pb.GetOrganizationResponse>;

  getOrganizationsByUser(
    request: services_user_svc_v1_organization_svc_pb.GetOrganizationsByUserRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_user_svc_v1_organization_svc_pb.GetOrganizationsByUserResponse>;

  getOrganizationsForUser(
    request: services_user_svc_v1_organization_svc_pb.GetOrganizationsForUserRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_user_svc_v1_organization_svc_pb.GetOrganizationsForUserResponse>;

  updateOrganization(
    request: services_user_svc_v1_organization_svc_pb.UpdateOrganizationRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_user_svc_v1_organization_svc_pb.UpdateOrganizationResponse>;

  deleteOrganization(
    request: services_user_svc_v1_organization_svc_pb.DeleteOrganizationRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_user_svc_v1_organization_svc_pb.DeleteOrganizationResponse>;

  getMembersByOrganization(
    request: services_user_svc_v1_organization_svc_pb.GetMembersByOrganizationRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_user_svc_v1_organization_svc_pb.GetMembersByOrganizationResponse>;

  addMember(
    request: services_user_svc_v1_organization_svc_pb.AddMemberRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_user_svc_v1_organization_svc_pb.AddMemberResponse>;

  removeMember(
    request: services_user_svc_v1_organization_svc_pb.RemoveMemberRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_user_svc_v1_organization_svc_pb.RemoveMemberResponse>;

  inviteMember(
    request: services_user_svc_v1_organization_svc_pb.InviteMemberRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_user_svc_v1_organization_svc_pb.InviteMemberResponse>;

  getInvitationsByOrganization(
    request: services_user_svc_v1_organization_svc_pb.GetInvitationsByOrganizationRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_user_svc_v1_organization_svc_pb.GetInvitationsByOrganizationResponse>;

  getInvitationsByUser(
    request: services_user_svc_v1_organization_svc_pb.GetInvitationsByUserRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_user_svc_v1_organization_svc_pb.GetInvitationsByUserResponse>;

  acceptInvitation(
    request: services_user_svc_v1_organization_svc_pb.AcceptInvitationRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_user_svc_v1_organization_svc_pb.AcceptInvitationResponse>;

  declineInvitation(
    request: services_user_svc_v1_organization_svc_pb.DeclineInvitationRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_user_svc_v1_organization_svc_pb.DeclineInvitationResponse>;

  revokeInvitation(
    request: services_user_svc_v1_organization_svc_pb.RevokeInvitationRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_user_svc_v1_organization_svc_pb.RevokeInvitationResponse>;

  createPersonalOrganization(
    request: services_user_svc_v1_organization_svc_pb.CreatePersonalOrganizationRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_user_svc_v1_organization_svc_pb.CreatePersonalOrganizationResponse>;

}

