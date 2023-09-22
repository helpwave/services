from grpc_service import controller_pb2
from grpc_service import controller_pb2_grpc


class MYServicer(controller_pb2_grpc.ControllerServicer):

    def Get(self, request, context):
        return controller_pb2.GetResponse(value="Test")

def grpc_hook(server):
    controller_pb2_grpc.add_ControllerServicer_to_server(MYServicer(), server)
