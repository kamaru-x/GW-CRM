# Generated by Django 4.1.4 on 2023-01-02 07:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('administrator', '0014_tickets_closed_date_tickets_closed_user'),
    ]

    operations = [
        migrations.AlterField(
            model_name='attachment',
            name='Name',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
    ]