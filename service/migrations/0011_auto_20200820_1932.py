# Generated by Django 2.0.1 on 2020-08-20 13:32

import ckeditor.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('service', '0010_remove_sliderinfo_details'),
    ]

    operations = [
        migrations.AlterField(
            model_name='sliderinfo',
            name='title',
            field=ckeditor.fields.RichTextField(blank=True),
        ),
    ]