from grpc_service import impulse_svc_pb2_grpc
from grpc_service import impulse_svc_pb2

from grpc_service.models import Challenge, UserChallenge, User


class Servicer(impulse_svc_pb2_grpc.ImpulseService):

    def CreateUser(self, request, context):
        for msg in request:
            print(msg)

    def UpdateUser(self, request, context):
        pass

    def TrackChallenge(self, request, context):
        pass

    def GetChallenges(self, request, context):
        pass

def grpc_hook(server):
    impulse_svc_pb2_grpc.add_ImpulseServiceServicer_to_server(Servicer(), server)
