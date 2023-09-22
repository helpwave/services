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

    start_datetime: datetime = models.DateTimeField()
    end_datetime: datetime = models.DateTimeField()

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

    def __str__(self):
        return self.title


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

    challenges: list = models.ManyToManyField(Challenge, through=UserChallenge)
    rewards: list = models.ManyToManyField(Reward)

    def __str__(self):
        return self.username

    @property
    def score(self):
        return self.userchallenge_set.all().values("score").aggregate(Sum("score")).get("score__sum", 0)
