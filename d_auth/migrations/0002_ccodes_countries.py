# Generated by Django 4.1.4 on 2022-12-23 17:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('d_auth', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='CCodes',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Code', models.CharField(max_length=5)),
            ],
        ),
        migrations.CreateModel(
            name='Countries',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Name', models.CharField(max_length=50)),
            ],
        ),
    ]
