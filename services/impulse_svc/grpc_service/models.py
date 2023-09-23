from __future__ import annotations
import uuid

from datetime import datetime

from django.db import models
from django.db.models.aggregates import Sum, Count, Avg
from django.utils.translation import gettext_lazy as _
from dateutil.relativedelta import relativedelta
from django.utils import timezone

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

    def get_gender_count(self, gender: User.Gender):
        return self.user_set.filter(gender=gender).count()

    @property
    def score(self):
        return (self.user_set.all().values("userchallenge__score").aggregate(Sum("userchallenge__score")).
                get("userchallenge__score__sum", 0))

    @property
    def user_count(self):
        return self.user_set.all().count()

    @property
    def male_count(self):
        return self.get_gender_count(User.Gender.MALE)

    @property
    def female_count(self):
        return self.get_gender_count(User.Gender.FEMALE)

    @property
    def diverse_count(self):
        return self.get_gender_count(User.Gender.DIVERSE)

    @property
    def avg_age(self):
        return sum(u.age for u in self.user_set.all()) / self.user_set.all().count()


class User(models.Model):
    class Gender(models.TextChoices):
        MALE = 1, _('Männlich')
        FEMALE = 2, _('Weiblich')
        DIVERSE = 3, _('Divers')

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

    @property
    def age(self):
        return relativedelta(timezone.now(), self.birthday).years
