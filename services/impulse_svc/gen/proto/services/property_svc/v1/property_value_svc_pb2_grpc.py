# Generated by the gRPC Python protocol compiler plugin. DO NOT EDIT!
"""Client and server classes corresponding to protobuf-defined services."""
import grpc

from proto.services.property_svc.v1 import property_value_svc_pb2 as proto_dot_services_dot_property__svc_dot_v1_dot_property__value__svc__pb2


class PropertyValueServiceStub(object):
    """
    PropertyValueService


    """

    def __init__(self, channel):
        """Constructor.

        Args:
            channel: A grpc.Channel.
        """
        self.CreatePropertyValue = channel.unary_unary(
                '/proto.services.property_svc.v1.PropertyValueService/CreatePropertyValue',
                request_serializer=proto_dot_services_dot_property__svc_dot_v1_dot_property__value__svc__pb2.CreatePropertyValueRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_property__svc_dot_v1_dot_property__value__svc__pb2.CreatePropertyValueResponse.FromString,
                )
        self.GetPropertyValue = channel.unary_unary(
                '/proto.services.property_svc.v1.PropertyValueService/GetPropertyValue',
                request_serializer=proto_dot_services_dot_property__svc_dot_v1_dot_property__value__svc__pb2.GetPropertyValueRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_property__svc_dot_v1_dot_property__value__svc__pb2.GetPropertyValueResponse.FromString,
                )


class PropertyValueServiceServicer(object):
    """
    PropertyValueService


    """

    def CreatePropertyValue(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetPropertyValue(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')


def add_PropertyValueServiceServicer_to_server(servicer, server):
    rpc_method_handlers = {
            'CreatePropertyValue': grpc.unary_unary_rpc_method_handler(
                    servicer.CreatePropertyValue,
                    request_deserializer=proto_dot_services_dot_property__svc_dot_v1_dot_property__value__svc__pb2.CreatePropertyValueRequest.FromString,
                    response_serializer=proto_dot_services_dot_property__svc_dot_v1_dot_property__value__svc__pb2.CreatePropertyValueResponse.SerializeToString,
            ),
            'GetPropertyValue': grpc.unary_unary_rpc_method_handler(
                    servicer.GetPropertyValue,
                    request_deserializer=proto_dot_services_dot_property__svc_dot_v1_dot_property__value__svc__pb2.GetPropertyValueRequest.FromString,
                    response_serializer=proto_dot_services_dot_property__svc_dot_v1_dot_property__value__svc__pb2.GetPropertyValueResponse.SerializeToString,
            ),
    }
    generic_handler = grpc.method_handlers_generic_handler(
            'proto.services.property_svc.v1.PropertyValueService', rpc_method_handlers)
    server.add_generic_rpc_handlers((generic_handler,))


 # This class is part of an EXPERIMENTAL API.
class PropertyValueService(object):
    """
    PropertyValueService


    """

    @staticmethod
    def CreatePropertyValue(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.property_svc.v1.PropertyValueService/CreatePropertyValue',
            proto_dot_services_dot_property__svc_dot_v1_dot_property__value__svc__pb2.CreatePropertyValueRequest.SerializeToString,
            proto_dot_services_dot_property__svc_dot_v1_dot_property__value__svc__pb2.CreatePropertyValueResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def GetPropertyValue(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.property_svc.v1.PropertyValueService/GetPropertyValue',
            proto_dot_services_dot_property__svc_dot_v1_dot_property__value__svc__pb2.GetPropertyValueRequest.SerializeToString,
            proto_dot_services_dot_property__svc_dot_v1_dot_property__value__svc__pb2.GetPropertyValueResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)
