# Generated by Django 2.0.1 on 2020-04-29 15:11

import ckeditor.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('service', '0002_contact_message_date'),
    ]

    operations = [
        migrations.CreateModel(
            name='Reviews',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('person_name', models.CharField(blank=True, max_length=100)),
                ('person_designation', models.CharField(blank=True, max_length=100)),
                ('person_img', models.ImageField(blank=True, upload_to='reviews_img/')),
                ('review_detail', ckeditor.fields.RichTextField(blank=True)),
                ('ordering', models.IntegerField(default=0)),
                ('review_date', models.DateField(blank=True)),
                ('status', models.BooleanField(default=0)),
            ],
            options={
                'verbose_name': 'Review',
                'verbose_name_plural': 'Reviews',
            },
        ),
    ]
