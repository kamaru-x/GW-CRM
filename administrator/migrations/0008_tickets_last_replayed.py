# Generated by Django 4.1.4 on 2022-12-29 03:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('administrator', '0007_domain_addedby_domain_date_domain_ip_domain_status_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='tickets',
            name='Last_replayed',
            field=models.IntegerField(blank=True, null=True),
        ),
    ]