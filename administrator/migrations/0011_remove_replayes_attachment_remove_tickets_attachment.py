# Generated by Django 4.1.4 on 2022-12-29 09:42

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('administrator', '0010_tickets_title'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='replayes',
            name='Attachment',
        ),
        migrations.RemoveField(
            model_name='tickets',
            name='Attachment',
        ),
    ]
