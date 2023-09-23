from django.contrib import admin

from .models import User, Challenge, UserChallenge, Reward, Team


class UserChallengeInlineAdmin(admin.TabularInline):
    model = UserChallenge


@admin.register(User)
class UserAdmin(admin.ModelAdmin):
    inlines = [
        UserChallengeInlineAdmin
    ]
    readonly_fields = [
        "score"
    ]


@admin.register(Team)
class TeamAdmin(admin.ModelAdmin):
    readonly_fields = [
        "score",
        "user_count",
        "male_count",
        "female_count",
        "diverse_count",
        "avg_age",
    ]


admin.site.register(Challenge)
admin.site.register(Reward)
