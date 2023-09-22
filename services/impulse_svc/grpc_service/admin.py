from django.contrib import admin

from .models import User, Challenge, UserChallenge


class UserChallengeInline(admin.TabularInline):
    model = UserChallenge


@admin.register(User)
class User(admin.ModelAdmin):
    inlines = [
        UserChallengeInline
    ]
    readonly_fields = [
        "score"
    ]


admin.site.register(Challenge)
