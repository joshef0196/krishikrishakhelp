# Generated by Django 2.0.3 on 2020-10-07 09:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('service', '0034_customarorderlist_delivery_date'),
    ]

    operations = [
        migrations.AlterField(
            model_name='customarorderlist',
            name='delivery_date',
            field=models.DateField(blank=True, null=True),
        ),
    ]
