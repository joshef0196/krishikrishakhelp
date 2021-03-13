# Generated by Django 2.0.1 on 2020-08-26 06:27

import ckeditor.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('service', '0024_auto_20200824_2139'),
    ]

    operations = [
        migrations.CreateModel(
            name='QuickSolve',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('question', models.CharField(max_length=100)),
                ('answer', ckeditor.fields.RichTextField()),
                ('ordering', models.IntegerField(default=0)),
                ('status', models.BooleanField(default=1)),
            ],
            options={
                'verbose_name': 'Quick Solve',
                'verbose_name_plural': 'Quick Solves',
            },
        ),
    ]