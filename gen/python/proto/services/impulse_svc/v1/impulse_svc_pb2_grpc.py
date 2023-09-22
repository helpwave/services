# Generated by the gRPC Python protocol compiler plugin. DO NOT EDIT!
"""Client and server classes corresponding to protobuf-defined services."""
import grpc

import impulse_svc_pb2 as impulse__svc__pb2


class ImpulseServiceStub(object):
    """
    ImpulseService


    """

    def __init__(self, channel):
        """Constructor.

        Args:
            channel: A grpc.Channel.
        """
        self.CreateUser = channel.unary_unary(
                '/proto.services.impulse_svc.v1.ImpulseService/CreateUser',
                request_serializer=impulse__svc__pb2.CreateUserRequest.SerializeToString,
                response_deserializer=impulse__svc__pb2.CreateUserResponse.FromString,
                )
        self.UpdateUser = channel.unary_unary(
                '/proto.services.impulse_svc.v1.ImpulseService/UpdateUser',
                request_serializer=impulse__svc__pb2.UpdateUserRequest.SerializeToString,
                response_deserializer=impulse__svc__pb2.UpdateUserResponse.FromString,
                )
        self.TrackChallenge = channel.unary_unary(
                '/proto.services.impulse_svc.v1.ImpulseService/TrackChallenge',
                request_serializer=impulse__svc__pb2.TrackChallengeRequest.SerializeToString,
                response_deserializer=impulse__svc__pb2.TrackChallengeResponse.FromString,
                )
        self.CreateDailyChallenge = channel.unary_unary(
                '/proto.services.impulse_svc.v1.ImpulseService/CreateDailyChallenge',
                request_serializer=impulse__svc__pb2.CreateDailyChallengeRequest.SerializeToString,
                response_deserializer=impulse__svc__pb2.CreateDailyChallengeResponse.FromString,
                )
        self.CreateQuestChallenge = channel.unary_unary(
                '/proto.services.impulse_svc.v1.ImpulseService/CreateQuestChallenge',
                request_serializer=impulse__svc__pb2.CreateQuestChallengeRequest.SerializeToString,
                response_deserializer=impulse__svc__pb2.CreateQuestChallengeResponse.FromString,
                )
        self.UpdateChallenge = channel.unary_unary(
                '/proto.services.impulse_svc.v1.ImpulseService/UpdateChallenge',
                request_serializer=impulse__svc__pb2.UpdateChallengeRequest.SerializeToString,
                response_deserializer=impulse__svc__pb2.UpdateChallengeResponse.FromString,
                )
        self.GetChallenges = channel.unary_unary(
                '/proto.services.impulse_svc.v1.ImpulseService/GetChallenges',
                request_serializer=impulse__svc__pb2.GetChallengesRequest.SerializeToString,
                response_deserializer=impulse__svc__pb2.GetChallengesResponse.FromString,
                )


class ImpulseServiceServicer(object):
    """
    ImpulseService


    """

    def CreateUser(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def UpdateUser(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def TrackChallenge(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def CreateDailyChallenge(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def CreateQuestChallenge(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def UpdateChallenge(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetChallenges(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')


def add_ImpulseServiceServicer_to_server(servicer, server):
    rpc_method_handlers = {
            'CreateUser': grpc.unary_unary_rpc_method_handler(
                    servicer.CreateUser,
                    request_deserializer=impulse__svc__pb2.CreateUserRequest.FromString,
                    response_serializer=impulse__svc__pb2.CreateUserResponse.SerializeToString,
            ),
            'UpdateUser': grpc.unary_unary_rpc_method_handler(
                    servicer.UpdateUser,
                    request_deserializer=impulse__svc__pb2.UpdateUserRequest.FromString,
                    response_serializer=impulse__svc__pb2.UpdateUserResponse.SerializeToString,
            ),
            'TrackChallenge': grpc.unary_unary_rpc_method_handler(
                    servicer.TrackChallenge,
                    request_deserializer=impulse__svc__pb2.TrackChallengeRequest.FromString,
                    response_serializer=impulse__svc__pb2.TrackChallengeResponse.SerializeToString,
            ),
            'CreateDailyChallenge': grpc.unary_unary_rpc_method_handler(
                    servicer.CreateDailyChallenge,
                    request_deserializer=impulse__svc__pb2.CreateDailyChallengeRequest.FromString,
                    response_serializer=impulse__svc__pb2.CreateDailyChallengeResponse.SerializeToString,
            ),
            'CreateQuestChallenge': grpc.unary_unary_rpc_method_handler(
                    servicer.CreateQuestChallenge,
                    request_deserializer=impulse__svc__pb2.CreateQuestChallengeRequest.FromString,
                    response_serializer=impulse__svc__pb2.CreateQuestChallengeResponse.SerializeToString,
            ),
            'UpdateChallenge': grpc.unary_unary_rpc_method_handler(
                    servicer.UpdateChallenge,
                    request_deserializer=impulse__svc__pb2.UpdateChallengeRequest.FromString,
                    response_serializer=impulse__svc__pb2.UpdateChallengeResponse.SerializeToString,
            ),
            'GetChallenges': grpc.unary_unary_rpc_method_handler(
                    servicer.GetChallenges,
                    request_deserializer=impulse__svc__pb2.GetChallengesRequest.FromString,
                    response_serializer=impulse__svc__pb2.GetChallengesResponse.SerializeToString,
            ),
    }
    generic_handler = grpc.method_handlers_generic_handler(
            'proto.services.impulse_svc.v1.ImpulseService', rpc_method_handlers)
    server.add_generic_rpc_handlers((generic_handler,))


 # This class is part of an EXPERIMENTAL API.
class ImpulseService(object):
    """
    ImpulseService


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
        return grpc.experimental.unary_unary(request, target, '/proto.services.impulse_svc.v1.ImpulseService/CreateUser',
            impulse__svc__pb2.CreateUserRequest.SerializeToString,
            impulse__svc__pb2.CreateUserResponse.FromString,
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
        return grpc.experimental.unary_unary(request, target, '/proto.services.impulse_svc.v1.ImpulseService/UpdateUser',
            impulse__svc__pb2.UpdateUserRequest.SerializeToString,
            impulse__svc__pb2.UpdateUserResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def TrackChallenge(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.impulse_svc.v1.ImpulseService/TrackChallenge',
            impulse__svc__pb2.TrackChallengeRequest.SerializeToString,
            impulse__svc__pb2.TrackChallengeResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def CreateDailyChallenge(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.impulse_svc.v1.ImpulseService/CreateDailyChallenge',
            impulse__svc__pb2.CreateDailyChallengeRequest.SerializeToString,
            impulse__svc__pb2.CreateDailyChallengeResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def CreateQuestChallenge(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.impulse_svc.v1.ImpulseService/CreateQuestChallenge',
            impulse__svc__pb2.CreateQuestChallengeRequest.SerializeToString,
            impulse__svc__pb2.CreateQuestChallengeResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def UpdateChallenge(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.impulse_svc.v1.ImpulseService/UpdateChallenge',
            impulse__svc__pb2.UpdateChallengeRequest.SerializeToString,
            impulse__svc__pb2.UpdateChallengeResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def GetChallenges(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.impulse_svc.v1.ImpulseService/GetChallenges',
            impulse__svc__pb2.GetChallengesRequest.SerializeToString,
            impulse__svc__pb2.GetChallengesResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)
