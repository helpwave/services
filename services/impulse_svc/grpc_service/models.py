from __future__ import annotations
import uuid

from datetime import datetime

from django.db import models
from django.db.models.aggregates import Sum
from django.utils.translation import gettext_lazy as _


class Challenge(models.Model):
    class ChallengeTypes(models.TextChoices):
        DAILY = 'daily', _('Täglich')
        QUEST = 'quest', _('Mission')

    class ChallengeCategories(models.TextChoices):
        FOOD = 'food', _('Ernährung')
        FITNESS = 'fitness', _('Fitness')
        MENTAL = 'mental', _('Mentale Gesundheit')

    id: str = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    title: str = models.CharField(max_length=50)
    description: str = models.TextField()

    start_datetime: datetime = models.DateTimeField(null=True, blank=True)
    end_datetime: datetime = models.DateTimeField(null=True, blank=True)

    type: str = models.CharField(max_length=10, choices=ChallengeTypes.choices)
    category: str = models.CharField(max_length=10, choices=ChallengeCategories.choices)

    points: int = models.IntegerField()
    unit: str = models.CharField(max_length=50)

    def __str__(self):
        return self.title


class UserChallenge(models.Model):
    user: str = models.ForeignKey('User', on_delete=models.CASCADE)
    challenge: str = models.ForeignKey('Challenge', on_delete=models.CASCADE)
    score: int = models.IntegerField()
    done_datetime: datetime = models.DateTimeField()


class Reward(models.Model):
    id: str = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    title: str = models.CharField(max_length=50)
    description: str = models.TextField()
    points: int = models.IntegerField()
    image: str = models.CharField(max_length=100)

    def __str__(self):
        return self.title


class Team(models.Model):
    id: str = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    name: str = models.CharField(max_length=50)
    image: str = models.CharField(max_length=100)
    description: str = models.TextField()

    def __str__(self):
        return self.name

    @property
    def score(self):
        return (self.user_set.all().values("userchallenge__score").aggregate(Sum("userchallenge__score")).
                get("userchallenge__score__sum", 0))


class User(models.Model):
    class Gender(models.TextChoices):
        MALE = 'male', _('Männlich')
        FEMALE = 'female', _('Weiblich')
        DIVERSE = 'diverse', _('Divers')

    id: str = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    username: str = models.CharField(max_length=50)
    gender: str = models.CharField(max_length=10, choices=Gender.choices)
    birthday: datetime = models.DateTimeField()
    pal: float = models.FloatField()
    image: str = models.CharField(max_length=100)

    challenges: list = models.ManyToManyField(Challenge, through=UserChallenge)
    rewards: list = models.ManyToManyField(Reward, blank=True)
    team: Team = models.ForeignKey(Team, on_delete=models.CASCADE, null=True, blank=True)

    def __str__(self):
        return self.username

    @property
    def score(self):
        return self.userchallenge_set.all().values("score").aggregate(Sum("score")).get("score__sum", 0)
