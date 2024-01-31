# Generated by the gRPC Python protocol compiler plugin. DO NOT EDIT!
"""Client and server classes corresponding to protobuf-defined services."""
import grpc

from proto.services.tasks_svc.v1 import properties_svc_pb2 as proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2


class PropertiesServiceStub(object):
    """Missing associated documentation comment in .proto file."""

    def __init__(self, channel):
        """Constructor.

        Args:
            channel: A grpc.Channel.
        """
        self.CreateProperty = channel.unary_unary(
                '/proto.services.tasks_svc.v1.PropertiesService/CreateProperty',
                request_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.CreatePropertyRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.CreatePropertyResponse.FromString,
                )
        self.GetProperty = channel.unary_unary(
                '/proto.services.tasks_svc.v1.PropertiesService/GetProperty',
                request_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.GetPropertyRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.GetPropertyResponse.FromString,
                )
        self.GetProperties = channel.unary_unary(
                '/proto.services.tasks_svc.v1.PropertiesService/GetProperties',
                request_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.GetPropertiesRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.GetPropertiesResponse.FromString,
                )
        self.UpdateProperty = channel.unary_unary(
                '/proto.services.tasks_svc.v1.PropertiesService/UpdateProperty',
                request_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.UpdatePropertyRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.UpdatePropertyResponse.FromString,
                )
        self.AttachPropertyValue = channel.unary_unary(
                '/proto.services.tasks_svc.v1.PropertiesService/AttachPropertyValue',
                request_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.AttachPropertyValueRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.AttachPropertyValueResponse.FromString,
                )
        self.GetAttachedPropertyValues = channel.unary_unary(
                '/proto.services.tasks_svc.v1.PropertiesService/GetAttachedPropertyValues',
                request_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.GetAttachedPropertyValuesRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.GetAttachedPropertyValuesResponse.FromString,
                )


class PropertiesServiceServicer(object):
    """Missing associated documentation comment in .proto file."""

    def CreateProperty(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetProperty(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetProperties(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def UpdateProperty(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def AttachPropertyValue(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetAttachedPropertyValues(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')


def add_PropertiesServiceServicer_to_server(servicer, server):
    rpc_method_handlers = {
            'CreateProperty': grpc.unary_unary_rpc_method_handler(
                    servicer.CreateProperty,
                    request_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.CreatePropertyRequest.FromString,
                    response_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.CreatePropertyResponse.SerializeToString,
            ),
            'GetProperty': grpc.unary_unary_rpc_method_handler(
                    servicer.GetProperty,
                    request_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.GetPropertyRequest.FromString,
                    response_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.GetPropertyResponse.SerializeToString,
            ),
            'GetProperties': grpc.unary_unary_rpc_method_handler(
                    servicer.GetProperties,
                    request_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.GetPropertiesRequest.FromString,
                    response_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.GetPropertiesResponse.SerializeToString,
            ),
            'UpdateProperty': grpc.unary_unary_rpc_method_handler(
                    servicer.UpdateProperty,
                    request_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.UpdatePropertyRequest.FromString,
                    response_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.UpdatePropertyResponse.SerializeToString,
            ),
            'AttachPropertyValue': grpc.unary_unary_rpc_method_handler(
                    servicer.AttachPropertyValue,
                    request_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.AttachPropertyValueRequest.FromString,
                    response_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.AttachPropertyValueResponse.SerializeToString,
            ),
            'GetAttachedPropertyValues': grpc.unary_unary_rpc_method_handler(
                    servicer.GetAttachedPropertyValues,
                    request_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.GetAttachedPropertyValuesRequest.FromString,
                    response_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.GetAttachedPropertyValuesResponse.SerializeToString,
            ),
    }
    generic_handler = grpc.method_handlers_generic_handler(
            'proto.services.tasks_svc.v1.PropertiesService', rpc_method_handlers)
    server.add_generic_rpc_handlers((generic_handler,))


 # This class is part of an EXPERIMENTAL API.
class PropertiesService(object):
    """Missing associated documentation comment in .proto file."""

    @staticmethod
    def CreateProperty(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.tasks_svc.v1.PropertiesService/CreateProperty',
            proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.CreatePropertyRequest.SerializeToString,
            proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.CreatePropertyResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def GetProperty(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.tasks_svc.v1.PropertiesService/GetProperty',
            proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.GetPropertyRequest.SerializeToString,
            proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.GetPropertyResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def GetProperties(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.tasks_svc.v1.PropertiesService/GetProperties',
            proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.GetPropertiesRequest.SerializeToString,
            proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.GetPropertiesResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def UpdateProperty(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.tasks_svc.v1.PropertiesService/UpdateProperty',
            proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.UpdatePropertyRequest.SerializeToString,
            proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.UpdatePropertyResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def AttachPropertyValue(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.tasks_svc.v1.PropertiesService/AttachPropertyValue',
            proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.AttachPropertyValueRequest.SerializeToString,
            proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.AttachPropertyValueResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def GetAttachedPropertyValues(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.tasks_svc.v1.PropertiesService/GetAttachedPropertyValues',
            proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.GetAttachedPropertyValuesRequest.SerializeToString,
            proto_dot_services_dot_tasks__svc_dot_v1_dot_properties__svc__pb2.GetAttachedPropertyValuesResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)
