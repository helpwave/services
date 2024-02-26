import  strawberry

from strawberry_django.optimizer import DjangoOptimizerExtension

from .types import (
    User,
    UserChallenge,
    Challenge,
    VerificationInt,
    VerificationStr,
    Reward,
    Team,
)

@strawberry.type
class Query:
    user: User = strawberry.django.field()
    users: list[User] = strawberry.django.field()

    user_challenge: UserChallenge = strawberry.django.field()
    user_challenges: list[UserChallenge] = strawberry.django.field()

    challenge: Challenge = strawberry.django.field()
    challenges: list[Challenge] = strawberry.django.field()

    verification_int: VerificationInt = strawberry.django.field()
    verification_ints: list[VerificationInt] = strawberry.django.field()

    verification_str: VerificationStr = strawberry.django.field()
    verification_strs: list[VerificationStr] = strawberry.django.field()

    reward: Reward = strawberry.django.field()
    rewards: list[Reward] = strawberry.django.field()

    team: Team = strawberry.django.field()
    teams: list[Team] = strawberry.django.field()


schema = strawberry.Schema(
    query=Query,
    extensions=[
        DjangoOptimizerExtension,
    ]
)
