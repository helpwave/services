# Generated by the gRPC Python protocol compiler plugin. DO NOT EDIT!
"""Client and server classes corresponding to protobuf-defined services."""
import grpc

from proto.services.user_svc.v1 import user_svc_pb2 as proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2


class UserServiceStub(object):
    """
    UserService
    

    """

    def __init__(self, channel):
        """Constructor.

        Args:
            channel: A grpc.Channel.
        """
        self.CreateUser = channel.unary_unary(
                '/proto.services.user_svc.v1.UserService/CreateUser',
                request_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.CreateUserRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.CreateUserResponse.FromString,
                )
        self.ReadSelf = channel.unary_unary(
                '/proto.services.user_svc.v1.UserService/ReadSelf',
                request_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.ReadSelfRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.ReadSelfResponse.FromString,
                )
        self.ReadPublicProfile = channel.unary_unary(
                '/proto.services.user_svc.v1.UserService/ReadPublicProfile',
                request_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.ReadPublicProfileRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.ReadPublicProfileResponse.FromString,
                )
        self.UpdateUser = channel.unary_unary(
                '/proto.services.user_svc.v1.UserService/UpdateUser',
                request_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.UpdateUserRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.UpdateUserResponse.FromString,
                )


class UserServiceServicer(object):
    """
    UserService
    

    """

    def CreateUser(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def ReadSelf(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def ReadPublicProfile(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def UpdateUser(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')


def add_UserServiceServicer_to_server(servicer, server):
    rpc_method_handlers = {
            'CreateUser': grpc.unary_unary_rpc_method_handler(
                    servicer.CreateUser,
                    request_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.CreateUserRequest.FromString,
                    response_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.CreateUserResponse.SerializeToString,
            ),
            'ReadSelf': grpc.unary_unary_rpc_method_handler(
                    servicer.ReadSelf,
                    request_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.ReadSelfRequest.FromString,
                    response_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.ReadSelfResponse.SerializeToString,
            ),
            'ReadPublicProfile': grpc.unary_unary_rpc_method_handler(
                    servicer.ReadPublicProfile,
                    request_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.ReadPublicProfileRequest.FromString,
                    response_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.ReadPublicProfileResponse.SerializeToString,
            ),
            'UpdateUser': grpc.unary_unary_rpc_method_handler(
                    servicer.UpdateUser,
                    request_deserializer=proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.UpdateUserRequest.FromString,
                    response_serializer=proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.UpdateUserResponse.SerializeToString,
            ),
    }
    generic_handler = grpc.method_handlers_generic_handler(
            'proto.services.user_svc.v1.UserService', rpc_method_handlers)
    server.add_generic_rpc_handlers((generic_handler,))


 # This class is part of an EXPERIMENTAL API.
class UserService(object):
    """
    UserService
    

    """

    @staticmethod
    def CreateUser(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.user_svc.v1.UserService/CreateUser',
            proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.CreateUserRequest.SerializeToString,
            proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.CreateUserResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def ReadSelf(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.user_svc.v1.UserService/ReadSelf',
            proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.ReadSelfRequest.SerializeToString,
            proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.ReadSelfResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def ReadPublicProfile(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.user_svc.v1.UserService/ReadPublicProfile',
            proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.ReadPublicProfileRequest.SerializeToString,
            proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.ReadPublicProfileResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def UpdateUser(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.user_svc.v1.UserService/UpdateUser',
            proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.UpdateUserRequest.SerializeToString,
            proto_dot_services_dot_user__svc_dot_v1_dot_user__svc__pb2.UpdateUserResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)
