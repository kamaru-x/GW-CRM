# Generated by Django 4.1.4 on 2023-01-04 12:25

from django.db import migrations, models
import uuid


class Migration(migrations.Migration):

    dependencies = [
        ('d_auth', '0005_user_name_alter_user_email'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='username',
            field=models.CharField(default=uuid.uuid4, max_length=50),
        ),
    ]
