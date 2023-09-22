from datetime import datetime

import grpc

from grpc_service import impulse_svc_pb2_grpc
from grpc_service import impulse_svc_pb2
from google.protobuf.timestamp_pb2 import Timestamp

from grpc_service.models import Challenge, UserChallenge, User


class Servicer(impulse_svc_pb2_grpc.ImpulseService):

    def CreateUser(self, request, context):
        user = User.objects.create(
            username=request.username,
            gender=request.sex,
            pal=request.pal,
            birthday=datetime.fromtimestamp(request.birthday.seconds + request.birthday.nanos/1e9)
        )
        return impulse_svc_pb2.CreateUserResponse(id=str(user.id))

    def UpdateUser(self, request, context):
        try:
            user = User.objects.get(id=request.id)
        except User.DoesNotExist as e:
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            return impulse_svc_pb2.Response()
        else:
            user.gender=request.sex,
            user.pal=request.pal,
            user.birthday=datetime.fromtimestamp(request.birthday.seconds + request.birthday.nanos / 1e9)

            return impulse_svc_pb2.UpdateUserResponse(
                id=str(user.id),
                sex=user.gender,
                pal=user.pal,
                birthday=Timestamp().FromDatetime(user.birthday)
            )

    def TrackChallenge(self, request, context):
        pass

    def GetChallenges(self, request, context):
        pass

def grpc_hook(server):
    impulse_svc_pb2_grpc.add_ImpulseServiceServicer_to_server(Servicer(), server)
