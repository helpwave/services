# Generated by the gRPC Python protocol compiler plugin. DO NOT EDIT!
"""Client and server classes corresponding to protobuf-defined services."""
import grpc

from proto.services.impulse_svc.v1 import impulse_svc_pb2 as proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2


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
                request_serializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.CreateUserRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.CreateUserResponse.FromString,
                )
        self.UpdateUser = channel.unary_unary(
                '/proto.services.impulse_svc.v1.ImpulseService/UpdateUser',
                request_serializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.UpdateUserRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.UpdateUserResponse.FromString,
                )
        self.TrackChallenge = channel.unary_unary(
                '/proto.services.impulse_svc.v1.ImpulseService/TrackChallenge',
                request_serializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.TrackChallengeRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.TrackChallengeResponse.FromString,
                )
        self.GetActiveChallenges = channel.unary_unary(
                '/proto.services.impulse_svc.v1.ImpulseService/GetActiveChallenges',
                request_serializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetActiveChallengesRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetActiveChallengesResponse.FromString,
                )
        self.GetScore = channel.unary_unary(
                '/proto.services.impulse_svc.v1.ImpulseService/GetScore',
                request_serializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetScoreRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetScoreResponse.FromString,
                )
        self.GetRewards = channel.unary_unary(
                '/proto.services.impulse_svc.v1.ImpulseService/GetRewards',
                request_serializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetRewardsRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetRewardsResponse.FromString,
                )
        self.GetAllRewards = channel.unary_unary(
                '/proto.services.impulse_svc.v1.ImpulseService/GetAllRewards',
                request_serializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetAllRewardsRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetAllRewardsResponse.FromString,
                )
        self.GetAllTeams = channel.unary_unary(
                '/proto.services.impulse_svc.v1.ImpulseService/GetAllTeams',
                request_serializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetAllTeamsRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetAllTeamsResponse.FromString,
                )
        self.StatsForTeamByUser = channel.unary_unary(
                '/proto.services.impulse_svc.v1.ImpulseService/StatsForTeamByUser',
                request_serializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.StatsForTeamByUserRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.StatsForTeamByUserResponse.FromString,
                )
        self.Verification = channel.unary_unary(
                '/proto.services.impulse_svc.v1.ImpulseService/Verification',
                request_serializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.VerificationRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.VerificationResponse.FromString,
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

    def GetActiveChallenges(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetScore(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetRewards(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetAllRewards(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetAllTeams(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def StatsForTeamByUser(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def Verification(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')


def add_ImpulseServiceServicer_to_server(servicer, server):
    rpc_method_handlers = {
            'CreateUser': grpc.unary_unary_rpc_method_handler(
                    servicer.CreateUser,
                    request_deserializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.CreateUserRequest.FromString,
                    response_serializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.CreateUserResponse.SerializeToString,
            ),
            'UpdateUser': grpc.unary_unary_rpc_method_handler(
                    servicer.UpdateUser,
                    request_deserializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.UpdateUserRequest.FromString,
                    response_serializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.UpdateUserResponse.SerializeToString,
            ),
            'TrackChallenge': grpc.unary_unary_rpc_method_handler(
                    servicer.TrackChallenge,
                    request_deserializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.TrackChallengeRequest.FromString,
                    response_serializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.TrackChallengeResponse.SerializeToString,
            ),
            'GetActiveChallenges': grpc.unary_unary_rpc_method_handler(
                    servicer.GetActiveChallenges,
                    request_deserializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetActiveChallengesRequest.FromString,
                    response_serializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetActiveChallengesResponse.SerializeToString,
            ),
            'GetScore': grpc.unary_unary_rpc_method_handler(
                    servicer.GetScore,
                    request_deserializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetScoreRequest.FromString,
                    response_serializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetScoreResponse.SerializeToString,
            ),
            'GetRewards': grpc.unary_unary_rpc_method_handler(
                    servicer.GetRewards,
                    request_deserializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetRewardsRequest.FromString,
                    response_serializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetRewardsResponse.SerializeToString,
            ),
            'GetAllRewards': grpc.unary_unary_rpc_method_handler(
                    servicer.GetAllRewards,
                    request_deserializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetAllRewardsRequest.FromString,
                    response_serializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetAllRewardsResponse.SerializeToString,
            ),
            'GetAllTeams': grpc.unary_unary_rpc_method_handler(
                    servicer.GetAllTeams,
                    request_deserializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetAllTeamsRequest.FromString,
                    response_serializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetAllTeamsResponse.SerializeToString,
            ),
            'StatsForTeamByUser': grpc.unary_unary_rpc_method_handler(
                    servicer.StatsForTeamByUser,
                    request_deserializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.StatsForTeamByUserRequest.FromString,
                    response_serializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.StatsForTeamByUserResponse.SerializeToString,
            ),
            'Verification': grpc.unary_unary_rpc_method_handler(
                    servicer.Verification,
                    request_deserializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.VerificationRequest.FromString,
                    response_serializer=proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.VerificationResponse.SerializeToString,
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
            proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.CreateUserRequest.SerializeToString,
            proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.CreateUserResponse.FromString,
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
            proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.UpdateUserRequest.SerializeToString,
            proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.UpdateUserResponse.FromString,
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
            proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.TrackChallengeRequest.SerializeToString,
            proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.TrackChallengeResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def GetActiveChallenges(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.impulse_svc.v1.ImpulseService/GetActiveChallenges',
            proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetActiveChallengesRequest.SerializeToString,
            proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetActiveChallengesResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def GetScore(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.impulse_svc.v1.ImpulseService/GetScore',
            proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetScoreRequest.SerializeToString,
            proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetScoreResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def GetRewards(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.impulse_svc.v1.ImpulseService/GetRewards',
            proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetRewardsRequest.SerializeToString,
            proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetRewardsResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def GetAllRewards(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.impulse_svc.v1.ImpulseService/GetAllRewards',
            proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetAllRewardsRequest.SerializeToString,
            proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetAllRewardsResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def GetAllTeams(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.impulse_svc.v1.ImpulseService/GetAllTeams',
            proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetAllTeamsRequest.SerializeToString,
            proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.GetAllTeamsResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def StatsForTeamByUser(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.impulse_svc.v1.ImpulseService/StatsForTeamByUser',
            proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.StatsForTeamByUserRequest.SerializeToString,
            proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.StatsForTeamByUserResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def Verification(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.impulse_svc.v1.ImpulseService/Verification',
            proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.VerificationRequest.SerializeToString,
            proto_dot_services_dot_impulse__svc_dot_v1_dot_impulse__svc__pb2.VerificationResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)
