import sys
from datetime import datetime
from uuid import UUID

import django.core.exceptions as exceptions
from django.utils.timezone import make_aware
from django.db.models import Q
from django.conf import settings

import grpc

sys.path.append(settings.PROTO_PATH)

from proto.services.impulse_svc.v1 import impulse_svc_pb2_grpc
from proto.services.impulse_svc.v1 import impulse_svc_pb2

from impulse.models import Challenge, UserChallenge, User, Reward, Team


def get_uuid(uuid_input: str, version=4) -> UUID | None:
    try:
        return UUID(uuid_input, version=version)
    except ValueError:
        return None


def get_iso_datetime(datetime_input: str) -> datetime | None:
    try:
        return datetime.fromisoformat(datetime_input)
    except ValueError:
        return None


def parse_datetime(datetime_input: str) -> datetime:
    return make_aware(datetime.fromisoformat(datetime_input))


def is_valid_pal(pal: float) -> bool:
    return 0 <= pal <= 2.4


class Servicer(impulse_svc_pb2_grpc.ImpulseService):
    async def CreateUser(self, request: impulse_svc_pb2.CreateUserRequest, context):
        if not is_valid_pal(request.pal):
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            context.set_details("Pal value can not be negativ")
            return impulse_svc_pb2.CreateUserResponse()

        if request.length < 0:
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            context.set_details("Length value can not be negativ")
            return impulse_svc_pb2.CreateUserResponse()

        if request.weight < 0:
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            context.set_details("Weight value can not be negativ")
            return impulse_svc_pb2.CreateUserResponse()

        birthday: datetime | None = get_iso_datetime(request.birthday)

        if birthday is None:
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            context.set_details("Birthday is not a valid datetime")
            return impulse_svc_pb2.CreateUserResponse()

        try:
            user = await User.objects.acreate(
                username=request.username,
                gender=request.gender,
                pal=request.pal,
                birthday=birthday,
                weight=request.weight,
                length=request.length,
            )
        except (exceptions.ValidationError, ValueError, AttributeError) as e:
            if isinstance(e, exceptions.ValidationError) or isinstance(e, ValueError) or isinstance(e, AttributeError):
                print(e)
                context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
                context.set_details("Check your arguments")
            else:
                context.set_code(grpc.StatusCode.INTERNAL)
                context.set_details("Internal error. Please contact us on github.")
            return impulse_svc_pb2.CreateUserResponse()

        return impulse_svc_pb2.CreateUserResponse(user_id=str(user.id))

    async def UpdateUser(self, request, context):
        user_id: UUID | None = get_uuid(request.user_id)
        birthday: datetime | None = get_iso_datetime(request.birthday)
        team_id: UUID | None = get_uuid(request.team_id)

        if user_id is None:
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            context.set_details("userId is not a valid uuid")
            return impulse_svc_pb2.UpdateUserResponse()

        try:
            user: User = await User.objects.aget(id=user_id)
        except User.DoesNotExist as e:
            context.set_code(grpc.StatusCode.NOT_FOUND)
            context.set_details("user does not exist")
            return impulse_svc_pb2.UpdateUserResponse()

        if request.birthday != "" and birthday is None:
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            context.set_details("birthday is not a valid datetime")
            return impulse_svc_pb2.UpdateUserResponse()
        elif request.birthday != "":
            user.birthday = birthday

        if request.team_id == "":
            pass
        elif team_id is None:
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            context.set_details("teamId is not a valid datetime")
            return impulse_svc_pb2.UpdateUserResponse()
        elif await Team.objects.afilter(id=team_id).count() == 0:
            context.set_code(grpc.StatusCode.NOT_FOUND)
            context.set_details("team does not exist")
            return impulse_svc_pb2.UpdateUserResponse()
        else:
            user.team = await Team.objects.aget(id=team_id)

        if request.gender != "":
            user.gender = request.gender

        if is_valid_pal(request.pal):
            user.pal = request.pal

        if request.length > 0:
            user.length = request.length

        if request.weight > 0:
            user.weight = request.weight

        await user.asave()

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
    
    async def GetAllTeams(self, request, context):
        teams = await Team.objects.all()
        return impulse_svc_pb2.GetAllTeamsResponse(
            teams=[
                impulse_svc_pb2.GetAllTeamsResponse.Team(
                    team_id=str(team.id),
                    name=team.name,
                    description=team.description,
                ) for team in teams
            ]
        )
    
    async def GetScore(self, request, context):
        user_id: UUID | None = get_uuid(request.user_id)

        if user_id is None:
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            context.set_details("userId is not a valid uuid")
            return impulse_svc_pb2.UpdateUserResponse()

        try:
            user: User = await User.objects.aget(id=user_id)
        except User.DoesNotExist as e:
            context.set_code(grpc.StatusCode.NOT_FOUND)
            context.set_details("user does not exist")
            return impulse_svc_pb2.UpdateUserResponse()

        return impulse_svc_pb2.GetScoreResponse(score=user.score)
    
    async def GetRewards(self, request, context):
        user_id: UUID | None = get_uuid(request.user_id)

        if user_id is None:
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            context.set_details("userId is not a valid uuid")
            return impulse_svc_pb2.UpdateUserResponse()

        try:
            user: User = await User.objects.aget(id=user_id)
        except User.DoesNotExist as e:
            context.set_code(grpc.StatusCode.NOT_FOUND)
            context.set_details("user does not exist")
            return impulse_svc_pb2.UpdateUserResponse()

        rewards = await Reward.objects.afilter(points__lte=user.score)

        return impulse_svc_pb2.GetRewardsResponse(
            rewards=[
                impulse_svc_pb2.GetRewardsResponse.Reward(
                    reward_id=str(reward.id),
                    title=reward.title,
                    description=reward.description,
                    points=reward.points,
                ) for reward in rewards
            ]
        )

    async def TrackChallenge(self, request, context):
        user_id: UUID | None = get_uuid(request.user_id)

        if user_id is None:
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            context.set_details("userId is not a valid uuid")
            return impulse_svc_pb2.UpdateUserResponse()

        if await User.objects.afilter(id=user_id).count() == 0:
            context.set_code(grpc.StatusCode.NOT_FOUND)
            context.set_details("user does not exist")
            return impulse_svc_pb2.UpdateUserResponse()

        if await UserChallenge.objects.afilter(challenge_id=request.challenge_id).count() == 0:
            context.set_code(grpc.StatusCode.NOT_FOUND)
            context.set_details("challenge does not exist")
            return impulse_svc_pb2.UpdateUserResponse()

        # current date
        current_date = make_aware(datetime.now())

        if request.score < 0:
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            context.set_details("Negativ scores are not valid")
            return impulse_svc_pb2.UpdateUserResponse()

        # create the UserChallenge object
        user_challenge = await UserChallenge.objects.acreate(
            user_id=user_id,
            challenge_id=request.challenge_id,
            score=request.score,
            done_datetime=current_date
        )

        return impulse_svc_pb2.TrackChallengeResponse(challenge_id=str(user_challenge.id))

    async def GetActiveChallenges(self, request, context):
        current_date = make_aware(datetime.now())

        challenges = await Challenge.objects.afilter(
            # if the start date is lower than current date and the end date is higher than current date
            (Q(start_datetime__lte=current_date) & Q(end_datetime__gte=current_date)) | 
            # # or the start and end dates ar`e null
            (Q(end_datetime__isnull=True) & Q(start_datetime__isnull=True))
            # the challenge is active
        )

        def _get_date_str(dt: None | datetime) -> str | None:
            if dt is None:
                return None
            return dt.isoformat()

        return impulse_svc_pb2.GetActiveChallengesResponse(
            challenges=[
                impulse_svc_pb2.GetActiveChallengesResponse.Challenge(
                    challenge_id=str(challenge.id),
                    title=challenge.title,
                    description=challenge.description,
                    category=challenge.category,
                    type=challenge.type,
                    start_at=_get_date_str(challenge.start_datetime),
                    end_at=_get_date_str(challenge.end_datetime),
                    points=challenge.points,
                    unit=challenge.unit,
                ) for challenge in challenges
            ]
        )

    async def GetAllRewards(self, request, context):
        rewards = await Reward.objects.all()
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

    async def StatsForTeamByUser(self, request, context):
        user_id: UUID | None = get_uuid(request.user_id)

        if user_id is None:
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            context.set_details("userId is not a valid uuid")
            return impulse_svc_pb2.UpdateUserResponse()

        try:
            user: User = await User.objects.aget(id=user_id)
        except User.DoesNotExist as e:
            context.set_code(grpc.StatusCode.NOT_FOUND)
            context.set_details("user does not exist")
            return impulse_svc_pb2.UpdateUserResponse()

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
        
    async def Verification(self, request, context):
        challenge_id: UUID | None = get_uuid(request.challenge_id)

        if challenge_id is None:
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            context.set_details("challengeId is not a valid uuid")
            return impulse_svc_pb2.UpdateUserResponse()

        try:
            challenge = await Challenge.objects.aget(id=challenge_id)
        except Challenge.DoesNotExist as e:
            context.set_code(grpc.StatusCode.NOT_FOUND)
            context.set_details("challenge does not exist")
            return impulse_svc_pb2.UpdateUserResponse()

        string_verifications = await challenge.verificationstr_set.all()
        integer_verifications = await challenge.verificationint_set.all()
        
        return impulse_svc_pb2.VerificationResponse(
            string_verifications=[
                impulse_svc_pb2.VerificationResponse.StringVerification(
                    order=string_verification.order,
                    type=string_verification.type,
                    value=string_verification.value,
                ) for string_verification in string_verifications
            ],
            integer_verifications=[
                impulse_svc_pb2.VerificationResponse.IntegerVerification(
                    order=integer_verification.order,
                    type=integer_verification.type,
                    value=integer_verification.value,
                ) for integer_verification in integer_verifications
            ]
        )


def grpc_hook(server):
    impulse_svc_pb2_grpc.add_ImpulseServiceServicer_to_server(Servicer(), server)
