import sys

from datetime import datetime

import grpc

sys.path.append("./gen/")

from proto.services.impulse_svc.v1 import impulse_svc_pb2_grpc
from proto.services.impulse_svc.v1 import impulse_svc_pb2
from google.protobuf.timestamp_pb2 import Timestamp

from grpc_service.models import Challenge, UserChallenge, User
from djang.db.models import Q

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
            user.gender = request.sex,
            user.pal = request.pal,
            user.birthday = datetime.fromtimestamp(request.birthday.seconds + request.birthday.nanos / 1e9)

            return impulse_svc_pb2.UpdateUserResponse(
                id=str(user.id),
                sex=user.gender,
                pal=user.pal,
                birthday=Timestamp().FromDatetime(dt=user.birthday)
            )

    def TrackChallenge(self, request, context):
        # get challenge
        # get user
        

    def GetChallenges(self, request, context):
        current_date = datetime.now()
        challenges = Challenge.objects.get(
            # if the start date is lower than current date and the end date is higher than current date
            (Q(start_at__lte=current_date) & Q(end_at__gte=current_date)) | 
            # or the start and end dates ar`e null
            (Q(end_at__isnull=True) & Q(start_at__gte=True))
            # the challenge is active
        )
        return impulse_svc_pb2.GetChallengesResponse(
            challenges=[
                impulse_svc_pb2.Challenge(
                    id=str(challenge.id),
                    title=challenge.title,
                    description=challenge.description,
                    category=challenge.category,
                    type=challenge.type,
                    start_at=challenge.start_at,
                    end_at=challenge.end_at,
                    points=challenge.points,
                    threshold=challenge.threshold,
                    unit=challenge.unit,
                ) for challenge in challenges
            ]
        )

def grpc_hook(server):
    impulse_svc_pb2_grpc.add_ImpulseServiceServicer_to_server(Servicer(), server)
