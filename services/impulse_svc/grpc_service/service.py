from grpc_service import impulse_svc_pb2_grpc
from grpc_service import impulse_svc_pb2


class MYServicer(impulse_svc_pb2_grpc.ControllerServicer):

    def Get(self, request, context):
        return impulse_svc_pb2.GetResponse(value="Test")

def grpc_hook(server):
    impulse_svc_pb2_grpc.add_ControllerServicer_to_server(MYServicer(), server)
