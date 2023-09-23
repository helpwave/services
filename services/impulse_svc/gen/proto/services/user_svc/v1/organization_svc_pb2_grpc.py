# Generated by the gRPC Python protocol compiler plugin. DO NOT EDIT!
"""Client and server classes corresponding to protobuf-defined services."""
import grpc

from proto.services.user_svc.v1 import organization_svc_pb2 as proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2


class OrganizationServiceStub(object):
    """
    OrganizationService


    """

    def __init__(self, channel):
        """Constructor.

        Args:
            channel: A grpc.Channel.
        """
        self.CreateOrganization = channel.unary_unary(
                '/proto.services.user_svc.v1.OrganizationService/CreateOrganization',
                request_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.CreateOrganizationRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.CreateOrganizationResponse.FromString,
                )
        self.CreateOrganizationForUser = channel.unary_unary(
                '/proto.services.user_svc.v1.OrganizationService/CreateOrganizationForUser',
                request_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.CreateOrganizationForUserRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.CreateOrganizationForUserResponse.FromString,
                )
        self.GetOrganization = channel.unary_unary(
                '/proto.services.user_svc.v1.OrganizationService/GetOrganization',
                request_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetOrganizationRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetOrganizationResponse.FromString,
                )
        self.GetOrganizationsByUser = channel.unary_unary(
                '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsByUser',
                request_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetOrganizationsByUserRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetOrganizationsByUserResponse.FromString,
                )
        self.GetOrganizationsForUser = channel.unary_unary(
                '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsForUser',
                request_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetOrganizationsForUserRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetOrganizationsForUserResponse.FromString,
                )
        self.UpdateOrganization = channel.unary_unary(
                '/proto.services.user_svc.v1.OrganizationService/UpdateOrganization',
                request_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.UpdateOrganizationRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.UpdateOrganizationResponse.FromString,
                )
        self.DeleteOrganization = channel.unary_unary(
                '/proto.services.user_svc.v1.OrganizationService/DeleteOrganization',
                request_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.DeleteOrganizationRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.DeleteOrganizationResponse.FromString,
                )
        self.GetMembersByOrganization = channel.unary_unary(
                '/proto.services.user_svc.v1.OrganizationService/GetMembersByOrganization',
                request_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetMembersByOrganizationRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetMembersByOrganizationResponse.FromString,
                )
        self.AddMember = channel.unary_unary(
                '/proto.services.user_svc.v1.OrganizationService/AddMember',
                request_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.AddMemberRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.AddMemberResponse.FromString,
                )
        self.RemoveMember = channel.unary_unary(
                '/proto.services.user_svc.v1.OrganizationService/RemoveMember',
                request_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.RemoveMemberRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.RemoveMemberResponse.FromString,
                )
        self.InviteMember = channel.unary_unary(
                '/proto.services.user_svc.v1.OrganizationService/InviteMember',
                request_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.InviteMemberRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.InviteMemberResponse.FromString,
                )
        self.GetInvitationsByOrganization = channel.unary_unary(
                '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByOrganization',
                request_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetInvitationsByOrganizationRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetInvitationsByOrganizationResponse.FromString,
                )
        self.GetInvitationsByUser = channel.unary_unary(
                '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByUser',
                request_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetInvitationsByUserRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetInvitationsByUserResponse.FromString,
                )
        self.AcceptInvitation = channel.unary_unary(
                '/proto.services.user_svc.v1.OrganizationService/AcceptInvitation',
                request_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.AcceptInvitationRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.AcceptInvitationResponse.FromString,
                )
        self.DeclineInvitation = channel.unary_unary(
                '/proto.services.user_svc.v1.OrganizationService/DeclineInvitation',
                request_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.DeclineInvitationRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.DeclineInvitationResponse.FromString,
                )
        self.RevokeInvitation = channel.unary_unary(
                '/proto.services.user_svc.v1.OrganizationService/RevokeInvitation',
                request_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.RevokeInvitationRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.RevokeInvitationResponse.FromString,
                )


class OrganizationServiceServicer(object):
    """
    OrganizationService


    """

    def CreateOrganization(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def CreateOrganizationForUser(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetOrganization(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetOrganizationsByUser(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetOrganizationsForUser(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def UpdateOrganization(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def DeleteOrganization(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetMembersByOrganization(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def AddMember(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def RemoveMember(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def InviteMember(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetInvitationsByOrganization(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetInvitationsByUser(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def AcceptInvitation(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def DeclineInvitation(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def RevokeInvitation(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')


def add_OrganizationServiceServicer_to_server(servicer, server):
    rpc_method_handlers = {
            'CreateOrganization': grpc.unary_unary_rpc_method_handler(
                    servicer.CreateOrganization,
                    request_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.CreateOrganizationRequest.FromString,
                    response_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.CreateOrganizationResponse.SerializeToString,
            ),
            'CreateOrganizationForUser': grpc.unary_unary_rpc_method_handler(
                    servicer.CreateOrganizationForUser,
                    request_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.CreateOrganizationForUserRequest.FromString,
                    response_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.CreateOrganizationForUserResponse.SerializeToString,
            ),
            'GetOrganization': grpc.unary_unary_rpc_method_handler(
                    servicer.GetOrganization,
                    request_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetOrganizationRequest.FromString,
                    response_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetOrganizationResponse.SerializeToString,
            ),
            'GetOrganizationsByUser': grpc.unary_unary_rpc_method_handler(
                    servicer.GetOrganizationsByUser,
                    request_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetOrganizationsByUserRequest.FromString,
                    response_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetOrganizationsByUserResponse.SerializeToString,
            ),
            'GetOrganizationsForUser': grpc.unary_unary_rpc_method_handler(
                    servicer.GetOrganizationsForUser,
                    request_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetOrganizationsForUserRequest.FromString,
                    response_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetOrganizationsForUserResponse.SerializeToString,
            ),
            'UpdateOrganization': grpc.unary_unary_rpc_method_handler(
                    servicer.UpdateOrganization,
                    request_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.UpdateOrganizationRequest.FromString,
                    response_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.UpdateOrganizationResponse.SerializeToString,
            ),
            'DeleteOrganization': grpc.unary_unary_rpc_method_handler(
                    servicer.DeleteOrganization,
                    request_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.DeleteOrganizationRequest.FromString,
                    response_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.DeleteOrganizationResponse.SerializeToString,
            ),
            'GetMembersByOrganization': grpc.unary_unary_rpc_method_handler(
                    servicer.GetMembersByOrganization,
                    request_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetMembersByOrganizationRequest.FromString,
                    response_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetMembersByOrganizationResponse.SerializeToString,
            ),
            'AddMember': grpc.unary_unary_rpc_method_handler(
                    servicer.AddMember,
                    request_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.AddMemberRequest.FromString,
                    response_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.AddMemberResponse.SerializeToString,
            ),
            'RemoveMember': grpc.unary_unary_rpc_method_handler(
                    servicer.RemoveMember,
                    request_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.RemoveMemberRequest.FromString,
                    response_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.RemoveMemberResponse.SerializeToString,
            ),
            'InviteMember': grpc.unary_unary_rpc_method_handler(
                    servicer.InviteMember,
                    request_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.InviteMemberRequest.FromString,
                    response_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.InviteMemberResponse.SerializeToString,
            ),
            'GetInvitationsByOrganization': grpc.unary_unary_rpc_method_handler(
                    servicer.GetInvitationsByOrganization,
                    request_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetInvitationsByOrganizationRequest.FromString,
                    response_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetInvitationsByOrganizationResponse.SerializeToString,
            ),
            'GetInvitationsByUser': grpc.unary_unary_rpc_method_handler(
                    servicer.GetInvitationsByUser,
                    request_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetInvitationsByUserRequest.FromString,
                    response_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetInvitationsByUserResponse.SerializeToString,
            ),
            'AcceptInvitation': grpc.unary_unary_rpc_method_handler(
                    servicer.AcceptInvitation,
                    request_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.AcceptInvitationRequest.FromString,
                    response_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.AcceptInvitationResponse.SerializeToString,
            ),
            'DeclineInvitation': grpc.unary_unary_rpc_method_handler(
                    servicer.DeclineInvitation,
                    request_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.DeclineInvitationRequest.FromString,
                    response_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.DeclineInvitationResponse.SerializeToString,
            ),
            'RevokeInvitation': grpc.unary_unary_rpc_method_handler(
                    servicer.RevokeInvitation,
                    request_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.RevokeInvitationRequest.FromString,
                    response_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.RevokeInvitationResponse.SerializeToString,
            ),
    }
    generic_handler = grpc.method_handlers_generic_handler(
            'proto.services.user_svc.v1.OrganizationService', rpc_method_handlers)
    server.add_generic_rpc_handlers((generic_handler,))


 # This class is part of an EXPERIMENTAL API.
class OrganizationService(object):
    """
    OrganizationService


    """

    @staticmethod
    def CreateOrganization(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.user_svc.v1.OrganizationService/CreateOrganization',
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.CreateOrganizationRequest.SerializeToString,
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.CreateOrganizationResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def CreateOrganizationForUser(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.user_svc.v1.OrganizationService/CreateOrganizationForUser',
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.CreateOrganizationForUserRequest.SerializeToString,
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.CreateOrganizationForUserResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def GetOrganization(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.user_svc.v1.OrganizationService/GetOrganization',
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetOrganizationRequest.SerializeToString,
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetOrganizationResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def GetOrganizationsByUser(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsByUser',
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetOrganizationsByUserRequest.SerializeToString,
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetOrganizationsByUserResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def GetOrganizationsForUser(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsForUser',
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetOrganizationsForUserRequest.SerializeToString,
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetOrganizationsForUserResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def UpdateOrganization(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.user_svc.v1.OrganizationService/UpdateOrganization',
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.UpdateOrganizationRequest.SerializeToString,
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.UpdateOrganizationResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def DeleteOrganization(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.user_svc.v1.OrganizationService/DeleteOrganization',
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.DeleteOrganizationRequest.SerializeToString,
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.DeleteOrganizationResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def GetMembersByOrganization(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.user_svc.v1.OrganizationService/GetMembersByOrganization',
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetMembersByOrganizationRequest.SerializeToString,
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetMembersByOrganizationResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def AddMember(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.user_svc.v1.OrganizationService/AddMember',
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.AddMemberRequest.SerializeToString,
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.AddMemberResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def RemoveMember(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.user_svc.v1.OrganizationService/RemoveMember',
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.RemoveMemberRequest.SerializeToString,
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.RemoveMemberResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def InviteMember(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.user_svc.v1.OrganizationService/InviteMember',
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.InviteMemberRequest.SerializeToString,
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.InviteMemberResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def GetInvitationsByOrganization(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByOrganization',
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetInvitationsByOrganizationRequest.SerializeToString,
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetInvitationsByOrganizationResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def GetInvitationsByUser(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByUser',
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetInvitationsByUserRequest.SerializeToString,
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.GetInvitationsByUserResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def AcceptInvitation(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.user_svc.v1.OrganizationService/AcceptInvitation',
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.AcceptInvitationRequest.SerializeToString,
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.AcceptInvitationResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def DeclineInvitation(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.user_svc.v1.OrganizationService/DeclineInvitation',
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.DeclineInvitationRequest.SerializeToString,
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.DeclineInvitationResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def RevokeInvitation(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.user_svc.v1.OrganizationService/RevokeInvitation',
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.RevokeInvitationRequest.SerializeToString,
            proto_dot_services_dot_user__svc_dot_v1_dot_organization__svc__pb2.RevokeInvitationResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)
