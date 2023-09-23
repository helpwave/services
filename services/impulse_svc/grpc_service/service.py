import sys

from datetime import datetime

import django.core.exceptions as exceptions

import pytz
import grpc

sys.path.append("./gen/")

from proto.services.impulse_svc.v1 import impulse_svc_pb2_grpc
from proto.services.impulse_svc.v1 import impulse_svc_pb2

from grpc_service.models import Challenge, UserChallenge, User, Reward, Team

from django.db.models import Q
from django.db.utils import IntegrityError


tz = pytz.timezone('Europe/Berlin')


class Servicer(impulse_svc_pb2_grpc.ImpulseService):
    def CreateUser(self, request: impulse_svc_pb2.CreateUserRequest, context):
        try:
            user = User.objects.create(
                username=request.username,
                gender=request.gender,
                pal=request.pal,
                birthday=datetime.fromisoformat(request.birthday),
                weight=request.weight,
                length=request.length,
            )
        except (exceptions.ValidationError, ValueError, AttributeError) as e:
            if isinstance(e, exceptions.ValidationError) or isinstance(e, ValueError) or isinstance(e, AttributeError):
                context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            else:
                context.set_code(grpc.StatusCode.INTERNAL)
            return impulse_svc_pb2.CreateUserResponse()

        return impulse_svc_pb2.CreateUserResponse(user_id=str(user.id))

    def UpdateUser(self, request, context):
        try:
            user: User = User.objects.get(id=request.user_id)
        except (exceptions.ValidationError, exceptions.ObjectDoesNotExist, AttributeError) as e:
            if isinstance(e, exceptions.ObjectDoesNotExist):
                context.set_code(grpc.StatusCode.NOT_FOUND)
            else:
                context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            return impulse_svc_pb2.UpdateUserResponse()

        try:
            user.birthday = datetime.fromisoformat(request.birthday)
        except (ValueError, AttributeError) as e:
            if request.birthday != "":
                context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
                context.set_details("Check the date format")
                return impulse_svc_pb2.UpdateUserResponse()

        if request.gender != "":
            user.gender = request.gender

        if request.pal != 0:
            user.pal = request.pal

        if request.length != 0:
            user.length = request.length

        if request.weight != 0:
            user.weight = request.weight

        try:
            user.team = Team.objects.get(id=request.team_id)
        except (exceptions.ValidationError, exceptions.ObjectDoesNotExist, AttributeError) as e:
            pass

        user.save()

        if user.team is None:
            return impulse_svc_pb2.UpdateUserResponse(
                user_id=str(user.id),
                gender=user.gender,
                birthday=user.birthday.isoformat(),
                pal=user.pal,
                length=user.length,
                weight=user.weight,
            )
        else:
            return impulse_svc_pb2.UpdateUserResponse(
                user_id=str(user.id),
                team_id=str(user.team.id),
                gender=user.gender,
                birthday=user.birthday.isoformat(),
                pal=user.pal,
                length=user.length,
                weight=user.weight,
            )
    
    def GetAllTeams(self, request, context):
        teams = Team.objects.all()
        return impulse_svc_pb2.GetAllTeamsResponse(
            teams=[
                impulse_svc_pb2.GetAllTeamsResponse.Team(
                    team_id=str(team.id),
                    name=team.name,
                    description=team.description,
                ) for team in teams
            ]
        )
    
    def GetScore(self, request, context):
        try:
            user = User.objects.get(id=request.user_id)
        except User.DoesNotExist:
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            return impulse_svc_pb2.GetScoreResponse()

        return impulse_svc_pb2.GetScoreResponse(score=user.score)
    
    def GetRewards(self, request, context):
        try:
            user = User.objects.get(id=request.user_id)
        except (exceptions.ValidationError, exceptions.ObjectDoesNotExist, AttributeError) as e:
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            return impulse_svc_pb2.GetRewardsResponse()

        if user.team:
            rewards = Reward.objects.filter(points__lte=user.team.score)
        else:
            return impulse_svc_pb2.GetRewardsResponse(
                rewards=[]
            )

        return impulse_svc_pb2.GetRewardsResponse(
            rewards=[
                impulse_svc_pb2.GetRewardsResponse.Reward(
                    id=str(reward.id),
                    title=reward.title,
                    description=reward.description,
                    points=reward.points,
                ) for reward in rewards
            ]
        )

    def TrackChallenge(self, request, context):
        # current date 
        current_date = datetime.now(tz)

        try:
            # create the UserChallenge object
            user_challenge = UserChallenge.objects.create(
                user_id=request.user_id,
                challenge_id=request.challenge_id,
                score=request.score,
                done_datetime=current_date
            )
        except (exceptions.ValidationError, exceptions.ObjectDoesNotExist, IntegrityError, AttributeError) as e:
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            return impulse_svc_pb2.TrackChallengeResponse()

        return impulse_svc_pb2.TrackChallengeResponse(challenge_id=str(user_challenge.id))

    def GetActiveChallenges(self, request, context):
        current_date = datetime.now(tz)
        challenges = Challenge.objects.filter(
            # if the start date is lower than current date and the end date is higher than current date
            (Q(start_datetime__lte=current_date) & Q(end_datetime__gte=current_date)) | 
            # # or the start and end dates ar`e null
            (Q(end_datetime__isnull=True) & Q(start_datetime__isnull=True))
            # the challenge is active
        )

        return impulse_svc_pb2.GetActiveChallengesResponse(
            challenges=[
                impulse_svc_pb2.GetActiveChallengesResponse.Challenge(
                    challenge_id=str(challenge.id),
                    title=challenge.title,
                    description=challenge.description,
                    category=challenge.category,
                    type=challenge.type,
                    start_datetime=challenge.start_datetime,
                    end_datetime=challenge.end_datetime,
                    points=challenge.points,
                    unit=challenge.unit,
                ) for challenge in challenges
            ]
        )

    def GetAllRewards(self, request, context):
        rewards = Reward.objects.all()
        return impulse_svc_pb2.GetAllRewardsResponse(
            rewards=[
                impulse_svc_pb2.GetAllRewardsResponse.Reward(
                    reward_id=str(reward.id),
                    title=reward.title,
                    description=reward.description,
                    points=reward.points
                ) for reward in rewards
            ]
        )
        
    def StatsForTeamByUser(self, request, context):
        user = User.objects.get(id=request.user_id)
        team = user.team
        
        return impulse_svc_pb2.StatsForTeamByUserResponse(
            team_id=str(team.id),
            score=team.score,
            gender_count=[
                    impulse_svc_pb2.StatsForTeamByUserResponse.GenderCount(
                        gender=User.Gender.MALE,
                        count=team.male_count
                    ),
                    impulse_svc_pb2.StatsForTeamByUserResponse.GenderCount(
                        gender=User.Gender.FEMALE,
                        count=team.female_count,
                    ),
                    impulse_svc_pb2.StatsForTeamByUserResponse.GenderCount(
                        gender=User.Gender.DIVERSE,
                        count=team.diverse_count,
                    )
                ],
            average_age=team.avg_age,
            user_count=team.user_count,
        )



def grpc_hook(server):
    impulse_svc_pb2_grpc.add_ImpulseServiceServicer_to_server(Servicer(), server)
