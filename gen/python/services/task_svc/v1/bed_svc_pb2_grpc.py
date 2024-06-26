# Generated by the gRPC Python protocol compiler plugin. DO NOT EDIT!
"""Client and server classes corresponding to protobuf-defined services."""
import grpc

from services.task_svc.v1 import bed_svc_pb2 as services_dot_task__svc_dot_v1_dot_bed__svc__pb2


class BedServiceStub(object):
    """
    BedService


    """

    def __init__(self, channel):
        """Constructor.

        Args:
            channel: A grpc.Channel.
        """
        self.CreateBed = channel.unary_unary(
                '/services.task_svc.v1.BedService/CreateBed',
                request_serializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.CreateBedRequest.SerializeToString,
                response_deserializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.CreateBedResponse.FromString,
                _registered_method=True)
        self.BulkCreateBeds = channel.unary_unary(
                '/services.task_svc.v1.BedService/BulkCreateBeds',
                request_serializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.BulkCreateBedsRequest.SerializeToString,
                response_deserializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.BulkCreateBedsResponse.FromString,
                _registered_method=True)
        self.GetBed = channel.unary_unary(
                '/services.task_svc.v1.BedService/GetBed',
                request_serializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedRequest.SerializeToString,
                response_deserializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedResponse.FromString,
                _registered_method=True)
        self.GetBedByPatient = channel.unary_unary(
                '/services.task_svc.v1.BedService/GetBedByPatient',
                request_serializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedByPatientRequest.SerializeToString,
                response_deserializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedByPatientResponse.FromString,
                _registered_method=True)
        self.GetBeds = channel.unary_unary(
                '/services.task_svc.v1.BedService/GetBeds',
                request_serializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedsRequest.SerializeToString,
                response_deserializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedsResponse.FromString,
                _registered_method=True)
        self.GetBedsByRoom = channel.unary_unary(
                '/services.task_svc.v1.BedService/GetBedsByRoom',
                request_serializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedsByRoomRequest.SerializeToString,
                response_deserializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedsByRoomResponse.FromString,
                _registered_method=True)
        self.UpdateBed = channel.unary_unary(
                '/services.task_svc.v1.BedService/UpdateBed',
                request_serializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.UpdateBedRequest.SerializeToString,
                response_deserializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.UpdateBedResponse.FromString,
                _registered_method=True)
        self.DeleteBed = channel.unary_unary(
                '/services.task_svc.v1.BedService/DeleteBed',
                request_serializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.DeleteBedRequest.SerializeToString,
                response_deserializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.DeleteBedResponse.FromString,
                _registered_method=True)


class BedServiceServicer(object):
    """
    BedService


    """

    def CreateBed(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def BulkCreateBeds(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetBed(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetBedByPatient(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetBeds(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetBedsByRoom(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def UpdateBed(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def DeleteBed(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')


def add_BedServiceServicer_to_server(servicer, server):
    rpc_method_handlers = {
            'CreateBed': grpc.unary_unary_rpc_method_handler(
                    servicer.CreateBed,
                    request_deserializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.CreateBedRequest.FromString,
                    response_serializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.CreateBedResponse.SerializeToString,
            ),
            'BulkCreateBeds': grpc.unary_unary_rpc_method_handler(
                    servicer.BulkCreateBeds,
                    request_deserializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.BulkCreateBedsRequest.FromString,
                    response_serializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.BulkCreateBedsResponse.SerializeToString,
            ),
            'GetBed': grpc.unary_unary_rpc_method_handler(
                    servicer.GetBed,
                    request_deserializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedRequest.FromString,
                    response_serializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedResponse.SerializeToString,
            ),
            'GetBedByPatient': grpc.unary_unary_rpc_method_handler(
                    servicer.GetBedByPatient,
                    request_deserializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedByPatientRequest.FromString,
                    response_serializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedByPatientResponse.SerializeToString,
            ),
            'GetBeds': grpc.unary_unary_rpc_method_handler(
                    servicer.GetBeds,
                    request_deserializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedsRequest.FromString,
                    response_serializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedsResponse.SerializeToString,
            ),
            'GetBedsByRoom': grpc.unary_unary_rpc_method_handler(
                    servicer.GetBedsByRoom,
                    request_deserializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedsByRoomRequest.FromString,
                    response_serializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedsByRoomResponse.SerializeToString,
            ),
            'UpdateBed': grpc.unary_unary_rpc_method_handler(
                    servicer.UpdateBed,
                    request_deserializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.UpdateBedRequest.FromString,
                    response_serializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.UpdateBedResponse.SerializeToString,
            ),
            'DeleteBed': grpc.unary_unary_rpc_method_handler(
                    servicer.DeleteBed,
                    request_deserializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.DeleteBedRequest.FromString,
                    response_serializer=services_dot_task__svc_dot_v1_dot_bed__svc__pb2.DeleteBedResponse.SerializeToString,
            ),
    }
    generic_handler = grpc.method_handlers_generic_handler(
            'services.task_svc.v1.BedService', rpc_method_handlers)
    server.add_generic_rpc_handlers((generic_handler,))
    server.add_registered_method_handlers('services.task_svc.v1.BedService', rpc_method_handlers)


 # This class is part of an EXPERIMENTAL API.
class BedService(object):
    """
    BedService


    """

    @staticmethod
    def CreateBed(request,
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
            '/services.task_svc.v1.BedService/CreateBed',
            services_dot_task__svc_dot_v1_dot_bed__svc__pb2.CreateBedRequest.SerializeToString,
            services_dot_task__svc_dot_v1_dot_bed__svc__pb2.CreateBedResponse.FromString,
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
    def BulkCreateBeds(request,
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
            '/services.task_svc.v1.BedService/BulkCreateBeds',
            services_dot_task__svc_dot_v1_dot_bed__svc__pb2.BulkCreateBedsRequest.SerializeToString,
            services_dot_task__svc_dot_v1_dot_bed__svc__pb2.BulkCreateBedsResponse.FromString,
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
    def GetBed(request,
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
            '/services.task_svc.v1.BedService/GetBed',
            services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedRequest.SerializeToString,
            services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedResponse.FromString,
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
    def GetBedByPatient(request,
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
            '/services.task_svc.v1.BedService/GetBedByPatient',
            services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedByPatientRequest.SerializeToString,
            services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedByPatientResponse.FromString,
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
    def GetBeds(request,
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
            '/services.task_svc.v1.BedService/GetBeds',
            services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedsRequest.SerializeToString,
            services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedsResponse.FromString,
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
    def GetBedsByRoom(request,
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
            '/services.task_svc.v1.BedService/GetBedsByRoom',
            services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedsByRoomRequest.SerializeToString,
            services_dot_task__svc_dot_v1_dot_bed__svc__pb2.GetBedsByRoomResponse.FromString,
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
    def UpdateBed(request,
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
            '/services.task_svc.v1.BedService/UpdateBed',
            services_dot_task__svc_dot_v1_dot_bed__svc__pb2.UpdateBedRequest.SerializeToString,
            services_dot_task__svc_dot_v1_dot_bed__svc__pb2.UpdateBedResponse.FromString,
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
    def DeleteBed(request,
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
            '/services.task_svc.v1.BedService/DeleteBed',
            services_dot_task__svc_dot_v1_dot_bed__svc__pb2.DeleteBedRequest.SerializeToString,
            services_dot_task__svc_dot_v1_dot_bed__svc__pb2.DeleteBedResponse.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)
