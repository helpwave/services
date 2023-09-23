from django.contrib import admin

from .models import User, Challenge, UserChallenge, Reward, Team, VerificationInt, VerificationStr


class UserChallengeInline(admin.TabularInline):
    model = UserChallenge


class VerificationIntInlineAdmin(admin.TabularInline):
    model = VerificationInt


class VerificationStrInlineAdmin(admin.TabularInline):
    model = VerificationStr


@admin.register(User)
class User(admin.ModelAdmin):
    inlines = [
        UserChallengeInline
    ]
    readonly_fields = [
        "score"
    ]


@admin.register(Team)
class User(admin.ModelAdmin):
    readonly_fields = [
        "score"
    ]


@admin.register(Challenge)
class ChallengeAdmin(admin.ModelAdmin):
    inlines = [
        VerificationIntInlineAdmin,
        VerificationStrInlineAdmin
    ]


admin.site.register(Reward)
