# Generated by the gRPC Python protocol compiler plugin. DO NOT EDIT!
"""Client and server classes corresponding to protobuf-defined services."""
import grpc

from proto.services.auth_svc.v1 import auth_svc_pb2 as proto_dot_services_dot_auth__svc_dot_v1_dot_auth__svc__pb2


class AuthServiceStub(object):
    """
    AuthService


    """

    def __init__(self, channel):
        """Constructor.

        Args:
            channel: A grpc.Channel.
        """
        self.PrelimAuthRequest = channel.unary_unary(
                '/proto.services.auth_svc.v1.AuthService/PrelimAuthRequest',
                request_serializer=proto_dot_services_dot_auth__svc_dot_v1_dot_auth__svc__pb2.PrelimAuthRequestRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_auth__svc_dot_v1_dot_auth__svc__pb2.PrelimAuthRequestResponse.FromString,
                )


class AuthServiceServicer(object):
    """
    AuthService


    """

    def PrelimAuthRequest(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')


def add_AuthServiceServicer_to_server(servicer, server):
    rpc_method_handlers = {
            'PrelimAuthRequest': grpc.unary_unary_rpc_method_handler(
                    servicer.PrelimAuthRequest,
                    request_deserializer=proto_dot_services_dot_auth__svc_dot_v1_dot_auth__svc__pb2.PrelimAuthRequestRequest.FromString,
                    response_serializer=proto_dot_services_dot_auth__svc_dot_v1_dot_auth__svc__pb2.PrelimAuthRequestResponse.SerializeToString,
            ),
    }
    generic_handler = grpc.method_handlers_generic_handler(
            'proto.services.auth_svc.v1.AuthService', rpc_method_handlers)
    server.add_generic_rpc_handlers((generic_handler,))


 # This class is part of an EXPERIMENTAL API.
class AuthService(object):
    """
    AuthService


    """

    @staticmethod
    def PrelimAuthRequest(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.auth_svc.v1.AuthService/PrelimAuthRequest',
            proto_dot_services_dot_auth__svc_dot_v1_dot_auth__svc__pb2.PrelimAuthRequestRequest.SerializeToString,
            proto_dot_services_dot_auth__svc_dot_v1_dot_auth__svc__pb2.PrelimAuthRequestResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)
