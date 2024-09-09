# Generated by the gRPC Python protocol compiler plugin. DO NOT EDIT!
"""Client and server classes corresponding to protobuf-defined services."""
import grpc

from services.tasks_svc.v1 import ward_svc_pb2 as services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2


class WardServiceStub(object):
    """
    WardService


    """

    def __init__(self, channel):
        """Constructor.

        Args:
            channel: A grpc.Channel.
        """
        self.CreateWard = channel.unary_unary(
                '/services.tasks_svc.v1.WardService/CreateWard',
                request_serializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.CreateWardRequest.SerializeToString,
                response_deserializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.CreateWardResponse.FromString,
                _registered_method=True)
        self.GetWard = channel.unary_unary(
                '/services.tasks_svc.v1.WardService/GetWard',
                request_serializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardRequest.SerializeToString,
                response_deserializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardResponse.FromString,
                _registered_method=True)
        self.GetWards = channel.unary_unary(
                '/services.tasks_svc.v1.WardService/GetWards',
                request_serializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardsRequest.SerializeToString,
                response_deserializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardsResponse.FromString,
                _registered_method=True)
        self.GetRecentWards = channel.unary_unary(
                '/services.tasks_svc.v1.WardService/GetRecentWards',
                request_serializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetRecentWardsRequest.SerializeToString,
                response_deserializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetRecentWardsResponse.FromString,
                _registered_method=True)
        self.UpdateWard = channel.unary_unary(
                '/services.tasks_svc.v1.WardService/UpdateWard',
                request_serializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.UpdateWardRequest.SerializeToString,
                response_deserializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.UpdateWardResponse.FromString,
                _registered_method=True)
        self.DeleteWard = channel.unary_unary(
                '/services.tasks_svc.v1.WardService/DeleteWard',
                request_serializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.DeleteWardRequest.SerializeToString,
                response_deserializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.DeleteWardResponse.FromString,
                _registered_method=True)
        self.GetWardDetails = channel.unary_unary(
                '/services.tasks_svc.v1.WardService/GetWardDetails',
                request_serializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardDetailsRequest.SerializeToString,
                response_deserializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardDetailsResponse.FromString,
                _registered_method=True)
        self.GetWardOverviews = channel.unary_unary(
                '/services.tasks_svc.v1.WardService/GetWardOverviews',
                request_serializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardOverviewsRequest.SerializeToString,
                response_deserializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardOverviewsResponse.FromString,
                _registered_method=True)


class WardServiceServicer(object):
    """
    WardService


    """

    def CreateWard(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetWard(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetWards(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetRecentWards(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def UpdateWard(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def DeleteWard(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetWardDetails(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetWardOverviews(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')


def add_WardServiceServicer_to_server(servicer, server):
    rpc_method_handlers = {
            'CreateWard': grpc.unary_unary_rpc_method_handler(
                    servicer.CreateWard,
                    request_deserializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.CreateWardRequest.FromString,
                    response_serializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.CreateWardResponse.SerializeToString,
            ),
            'GetWard': grpc.unary_unary_rpc_method_handler(
                    servicer.GetWard,
                    request_deserializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardRequest.FromString,
                    response_serializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardResponse.SerializeToString,
            ),
            'GetWards': grpc.unary_unary_rpc_method_handler(
                    servicer.GetWards,
                    request_deserializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardsRequest.FromString,
                    response_serializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardsResponse.SerializeToString,
            ),
            'GetRecentWards': grpc.unary_unary_rpc_method_handler(
                    servicer.GetRecentWards,
                    request_deserializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetRecentWardsRequest.FromString,
                    response_serializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetRecentWardsResponse.SerializeToString,
            ),
            'UpdateWard': grpc.unary_unary_rpc_method_handler(
                    servicer.UpdateWard,
                    request_deserializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.UpdateWardRequest.FromString,
                    response_serializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.UpdateWardResponse.SerializeToString,
            ),
            'DeleteWard': grpc.unary_unary_rpc_method_handler(
                    servicer.DeleteWard,
                    request_deserializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.DeleteWardRequest.FromString,
                    response_serializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.DeleteWardResponse.SerializeToString,
            ),
            'GetWardDetails': grpc.unary_unary_rpc_method_handler(
                    servicer.GetWardDetails,
                    request_deserializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardDetailsRequest.FromString,
                    response_serializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardDetailsResponse.SerializeToString,
            ),
            'GetWardOverviews': grpc.unary_unary_rpc_method_handler(
                    servicer.GetWardOverviews,
                    request_deserializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardOverviewsRequest.FromString,
                    response_serializer=services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardOverviewsResponse.SerializeToString,
            ),
    }
    generic_handler = grpc.method_handlers_generic_handler(
            'services.tasks_svc.v1.WardService', rpc_method_handlers)
    server.add_generic_rpc_handlers((generic_handler,))
    server.add_registered_method_handlers('services.tasks_svc.v1.WardService', rpc_method_handlers)


 # This class is part of an EXPERIMENTAL API.
class WardService(object):
    """
    WardService


    """

    @staticmethod
    def CreateWard(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(
            request,
            target,
            '/services.tasks_svc.v1.WardService/CreateWard',
            services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.CreateWardRequest.SerializeToString,
            services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.CreateWardResponse.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)

    @staticmethod
    def GetWard(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(
            request,
            target,
            '/services.tasks_svc.v1.WardService/GetWard',
            services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardRequest.SerializeToString,
            services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardResponse.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)

    @staticmethod
    def GetWards(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(
            request,
            target,
            '/services.tasks_svc.v1.WardService/GetWards',
            services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardsRequest.SerializeToString,
            services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardsResponse.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)

    @staticmethod
    def GetRecentWards(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(
            request,
            target,
            '/services.tasks_svc.v1.WardService/GetRecentWards',
            services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetRecentWardsRequest.SerializeToString,
            services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetRecentWardsResponse.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)

    @staticmethod
    def UpdateWard(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(
            request,
            target,
            '/services.tasks_svc.v1.WardService/UpdateWard',
            services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.UpdateWardRequest.SerializeToString,
            services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.UpdateWardResponse.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)

    @staticmethod
    def DeleteWard(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(
            request,
            target,
            '/services.tasks_svc.v1.WardService/DeleteWard',
            services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.DeleteWardRequest.SerializeToString,
            services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.DeleteWardResponse.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)

    @staticmethod
    def GetWardDetails(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(
            request,
            target,
            '/services.tasks_svc.v1.WardService/GetWardDetails',
            services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardDetailsRequest.SerializeToString,
            services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardDetailsResponse.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)

    @staticmethod
    def GetWardOverviews(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(
            request,
            target,
            '/services.tasks_svc.v1.WardService/GetWardOverviews',
            services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardOverviewsRequest.SerializeToString,
            services_dot_tasks__svc_dot_v1_dot_ward__svc__pb2.GetWardOverviewsResponse.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)