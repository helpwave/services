import sys

from datetime import datetime

import grpc

sys.path.append("./gen/")

from proto.services.impulse_svc.v1 import impulse_svc_pb2_grpc
from proto.services.impulse_svc.v1 import impulse_svc_pb2

from grpc_service.models import Challenge, UserChallenge, User
from django.db.models import Q

class Servicer(impulse_svc_pb2_grpc.ImpulseService):

    def CreateUser(self, request, context):
        user = User.objects.create(
            username=request.username,
            gender=request.gender,
            pal=request.pal,
            birthday=datetime.fromisoformat(request.birthday)
        )
        return impulse_svc_pb2.CreateUserResponse(id=str(user.id))

    def UpdateUser(self, request, context):
        try:
            user = User.objects.get(id=request.id)
        except User.DoesNotExist as e:
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            return impulse_svc_pb2.Response()
        else:
            user.gender = request.gender
            user.pal = request.pal
            user.birthday = datetime.fromisoformat(request.birthday)
            user.save()

            return impulse_svc_pb2.UpdateUserResponse(
                id=str(user.id),
                gender=user.gender,
                birthday=user.birthday.isoformat(),
                pal=user.pal,
            )

    def TrackChallenge(self, request, context):
        # current date 
        current_date = datetime.now()
        # create the UserChallenge object
        user_challenge = UserChallenge.objects.create(
            user_id=request.user_id,
            challenge_id=request.challenge_id,
            score=request.score,
            done_datetime=current_date
        )
        return impulse_svc_pb2.TrackChallengeResponse(id=str(user_challenge.id))
        

    def GetActiveChallenges(self, request, context):
        current_date = datetime.now()
        challenges = Challenge.objects.get(
            # if the start date is lower than current date and the end date is higher than current date
            (Q(start_datetime__lte=current_date) & Q(end_datetime__gte=current_date)) | 
            # or the start and end dates ar`e null
            (Q(end_datetime__isnull=True) & Q(start_datetime__isnull=True))
            # the challenge is active
        )
        return impulse_svc_pb2.GetActiveChallengesResponse(
            challenges=[
                impulse_svc_pb2.Challenge(
                    id=str(challenge.id),
                    title=challenge.title,
                    description=challenge.description,
                    category=challenge.category,
                    type=challenge.type,
                    start_datetime=challenge.start_datetime,
                    end_datetime=challenge.end_datetime,
                    points=challenge.points,
                    threshold=challenge.threshold,
                    unit=challenge.unit,
                ) for challenge in challenges
            ]
        )

def grpc_hook(server):
    impulse_svc_pb2_grpc.add_ImpulseServiceServicer_to_server(Servicer(), server)
