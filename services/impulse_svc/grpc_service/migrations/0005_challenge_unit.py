# Generated by Django 4.2.5 on 2023-09-22 16:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('grpc_service', '0004_userchallenge_done'),
    ]

    operations = [
        migrations.AddField(
            model_name='challenge',
            name='unit',
            field=models.CharField(default='', max_length=50),
            preserve_default=False,
        ),
    ]
