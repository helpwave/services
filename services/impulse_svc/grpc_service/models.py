from django.db import models
from django.utils.translation import gettext_lazy as _


class Challenge(models.Model):
	class ChallengeTypes(models.TextChoices):
		DAILY = 'daily', _('Täglich')
		QUEST = 'quest', _('Mission')

	class ChallengeCategories(models.TextChoices):
		FOOD = 'food', _('Ernährung')
		FITNESS = 'fitness', _('Fitness')
		MENTAL = 'mental', _('Mentale Gesundheit')

	id: str = models.UUIDField(primary_key=True)
	title: str = models.CharField(max_length=50)
	description: str = models.CharField(max_length=200)

	start_datetime: str = models.DateTimeField()
	end_datetime: str = models.DateTimeField()

	type: str = models.CharField(max_length=10, choices=ChallengeTypes.choices)
	category: str = models.CharField(max_length=10, choices=ChallengeCategories.choices)

	points: int = models.IntegerField()


class UserChallenge(models.Model):
	score: int = models.IntegerField()
	done: bool = models.BooleanField()


class User(models.Model):
	id: str = models.UUIDField(primary_key=True)
	username: str = models.CharField(max_length=50)
	sex: str = models.CharField(max_length=1)
	age: int = models.IntegerField()
	pal: float = models.FloatField()

	challenges: list = models.ManyToManyField(Challenge, through=UserChallenge)
