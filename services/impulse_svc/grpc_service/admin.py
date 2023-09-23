from django.contrib import admin

from .models import User, Challenge, UserChallenge, Reward, Team, VerificationInt, VerificationStr


class UserChallengeInlineAdmin(admin.TabularInline):
    model = UserChallenge


class VerificationIntInlineAdmin(admin.TabularInline):
    model = VerificationInt


class VerificationStrInlineAdmin(admin.TabularInline):
    model = VerificationStr


@admin.register(User)
class UserAdmin(admin.ModelAdmin):
    inlines = [
        UserChallengeInlineAdmin
    ]
    readonly_fields = [
        "id",
        "score"
    ]


@admin.register(Team)
class TeamAdmin(admin.ModelAdmin):
    readonly_fields = [
        "id",
        "score",
        "user_count",
        "male_count",
        "female_count",
        "diverse_count",
        "avg_age",
    ]


@admin.register(Challenge)
class ChallengeAdmin(admin.ModelAdmin):
    inlines = [
        VerificationIntInlineAdmin,
        VerificationStrInlineAdmin
    ]
    readonly_fields = [
        "id",
    ]


@admin.register(Reward)
class RewardAdmin(admin.ModelAdmin):
    readonly_fields = [
        "id",
    ]