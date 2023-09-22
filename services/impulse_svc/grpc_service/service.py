from grpc_service import impulse_svc_pb2_grpc
from grpc_service import impulse_svc_pb2


class Servicer(impulse_svc_pb2_grpc.ImpulseService):

    def CreateUser(self, request, context):
        pass

    def UpdateUser(self, request, context):
        pass

    def TrackChallenge(self, request, context):
        pass

    def GetChallenges(self, request, context):
        pass

def grpc_hook(server):
    impulse_svc_pb2_grpc.add_ImpulseServiceServicer_to_server(Servicer(), server)
