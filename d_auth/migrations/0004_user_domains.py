# Generated by Django 4.1.4 on 2022-12-27 05:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('d_auth', '0003_alter_user_ccode_alter_user_country'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='Domains',
            field=models.IntegerField(default=0),
        ),
    ]
