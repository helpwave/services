# Generated by the gRPC Python protocol compiler plugin. DO NOT EDIT!
"""Client and server classes corresponding to protobuf-defined services."""
import grpc

from proto.services.tasks_svc.v1 import task_svc_pb2 as proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2


class TaskServiceStub(object):
    """
    TaskService


    """

    def __init__(self, channel):
        """Constructor.

        Args:
            channel: A grpc.Channel.
        """
        self.CreateTask = channel.unary_unary(
                '/proto.services.tasks_svc.v1.TaskService/CreateTask',
                request_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.CreateTaskRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.CreateTaskResponse.FromString,
                )
        self.UpdateTask = channel.unary_unary(
                '/proto.services.tasks_svc.v1.TaskService/UpdateTask',
                request_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.UpdateTaskRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.UpdateTaskResponse.FromString,
                )
        self.PublishTask = channel.unary_unary(
                '/proto.services.tasks_svc.v1.TaskService/PublishTask',
                request_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.PublishTaskRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.PublishTaskResponse.FromString,
                )
        self.GetTask = channel.unary_unary(
                '/proto.services.tasks_svc.v1.TaskService/GetTask',
                request_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.GetTaskRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.GetTaskResponse.FromString,
                )
        self.AssignTask = channel.unary_unary(
                '/proto.services.tasks_svc.v1.TaskService/AssignTask',
                request_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.AssignTaskRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.AssignTaskResponse.FromString,
                )
        self.CreateSubtask = channel.unary_unary(
                '/proto.services.tasks_svc.v1.TaskService/CreateSubtask',
                request_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.CreateSubtaskRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.CreateSubtaskResponse.FromString,
                )
        self.UpdateSubtask = channel.unary_unary(
                '/proto.services.tasks_svc.v1.TaskService/UpdateSubtask',
                request_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.UpdateSubtaskRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.UpdateSubtaskResponse.FromString,
                )
        self.CompleteSubtask = channel.unary_unary(
                '/proto.services.tasks_svc.v1.TaskService/CompleteSubtask',
                request_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.CompleteSubtaskRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.CompleteSubtaskResponse.FromString,
                )
        self.UncompleteSubtask = channel.unary_unary(
                '/proto.services.tasks_svc.v1.TaskService/UncompleteSubtask',
                request_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.UncompleteSubtaskRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.UncompleteSubtaskResponse.FromString,
                )
        self.DeleteSubtask = channel.unary_unary(
                '/proto.services.tasks_svc.v1.TaskService/DeleteSubtask',
                request_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.DeleteSubtaskRequest.SerializeToString,
                response_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.DeleteSubtaskResponse.FromString,
                )


class TaskServiceServicer(object):
    """
    TaskService


    """

    def CreateTask(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def UpdateTask(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def PublishTask(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetTask(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def AssignTask(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def CreateSubtask(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def UpdateSubtask(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def CompleteSubtask(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def UncompleteSubtask(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def DeleteSubtask(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')


def add_TaskServiceServicer_to_server(servicer, server):
    rpc_method_handlers = {
            'CreateTask': grpc.unary_unary_rpc_method_handler(
                    servicer.CreateTask,
                    request_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.CreateTaskRequest.FromString,
                    response_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.CreateTaskResponse.SerializeToString,
            ),
            'UpdateTask': grpc.unary_unary_rpc_method_handler(
                    servicer.UpdateTask,
                    request_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.UpdateTaskRequest.FromString,
                    response_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.UpdateTaskResponse.SerializeToString,
            ),
            'PublishTask': grpc.unary_unary_rpc_method_handler(
                    servicer.PublishTask,
                    request_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.PublishTaskRequest.FromString,
                    response_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.PublishTaskResponse.SerializeToString,
            ),
            'GetTask': grpc.unary_unary_rpc_method_handler(
                    servicer.GetTask,
                    request_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.GetTaskRequest.FromString,
                    response_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.GetTaskResponse.SerializeToString,
            ),
            'AssignTask': grpc.unary_unary_rpc_method_handler(
                    servicer.AssignTask,
                    request_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.AssignTaskRequest.FromString,
                    response_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.AssignTaskResponse.SerializeToString,
            ),
            'CreateSubtask': grpc.unary_unary_rpc_method_handler(
                    servicer.CreateSubtask,
                    request_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.CreateSubtaskRequest.FromString,
                    response_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.CreateSubtaskResponse.SerializeToString,
            ),
            'UpdateSubtask': grpc.unary_unary_rpc_method_handler(
                    servicer.UpdateSubtask,
                    request_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.UpdateSubtaskRequest.FromString,
                    response_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.UpdateSubtaskResponse.SerializeToString,
            ),
            'CompleteSubtask': grpc.unary_unary_rpc_method_handler(
                    servicer.CompleteSubtask,
                    request_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.CompleteSubtaskRequest.FromString,
                    response_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.CompleteSubtaskResponse.SerializeToString,
            ),
            'UncompleteSubtask': grpc.unary_unary_rpc_method_handler(
                    servicer.UncompleteSubtask,
                    request_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.UncompleteSubtaskRequest.FromString,
                    response_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.UncompleteSubtaskResponse.SerializeToString,
            ),
            'DeleteSubtask': grpc.unary_unary_rpc_method_handler(
                    servicer.DeleteSubtask,
                    request_deserializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.DeleteSubtaskRequest.FromString,
                    response_serializer=proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.DeleteSubtaskResponse.SerializeToString,
            ),
    }
    generic_handler = grpc.method_handlers_generic_handler(
            'proto.services.tasks_svc.v1.TaskService', rpc_method_handlers)
    server.add_generic_rpc_handlers((generic_handler,))


 # This class is part of an EXPERIMENTAL API.
class TaskService(object):
    """
    TaskService


    """

    @staticmethod
    def CreateTask(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.tasks_svc.v1.TaskService/CreateTask',
            proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.CreateTaskRequest.SerializeToString,
            proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.CreateTaskResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def UpdateTask(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.tasks_svc.v1.TaskService/UpdateTask',
            proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.UpdateTaskRequest.SerializeToString,
            proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.UpdateTaskResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def PublishTask(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.tasks_svc.v1.TaskService/PublishTask',
            proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.PublishTaskRequest.SerializeToString,
            proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.PublishTaskResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def GetTask(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.tasks_svc.v1.TaskService/GetTask',
            proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.GetTaskRequest.SerializeToString,
            proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.GetTaskResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def AssignTask(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.tasks_svc.v1.TaskService/AssignTask',
            proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.AssignTaskRequest.SerializeToString,
            proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.AssignTaskResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def CreateSubtask(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.tasks_svc.v1.TaskService/CreateSubtask',
            proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.CreateSubtaskRequest.SerializeToString,
            proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.CreateSubtaskResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def UpdateSubtask(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.tasks_svc.v1.TaskService/UpdateSubtask',
            proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.UpdateSubtaskRequest.SerializeToString,
            proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.UpdateSubtaskResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def CompleteSubtask(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.tasks_svc.v1.TaskService/CompleteSubtask',
            proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.CompleteSubtaskRequest.SerializeToString,
            proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.CompleteSubtaskResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def UncompleteSubtask(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.tasks_svc.v1.TaskService/UncompleteSubtask',
            proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.UncompleteSubtaskRequest.SerializeToString,
            proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.UncompleteSubtaskResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def DeleteSubtask(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/proto.services.tasks_svc.v1.TaskService/DeleteSubtask',
            proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.DeleteSubtaskRequest.SerializeToString,
            proto_dot_services_dot_tasks__svc_dot_v1_dot_task__svc__pb2.DeleteSubtaskResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)
