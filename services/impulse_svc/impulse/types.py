from __future__ import annotations

import strawberry

from . import models


@strawberry.django.type(models.VerificationStr, fields="__all__")
class VerificationStr:
    challenge: Challenge


@strawberry.django.type(models.VerificationInt, fields="__all__")
class VerificationInt:
    challenge: Challenge


@strawberry.django.type(models.Challenge, fields="__all__")
class Challenge:
    user_challenges: list[UserChallenge]


@strawberry.django.type(models.Reward, fields="__all__")
class Reward:
    users: list[User]


@strawberry.django.type(models.Team, fields="__all__")
class Team:
    users: list[User]


@strawberry.django.type(models.User, fields="__all__")
class User:
    team: Team
    rewards: list[Reward]
    user_challenges: list[UserChallenge]


@strawberry.django.type(models.UserChallenge, fields="__all__")
class UserChallenge:
    user: User
    challenge: Challenge
