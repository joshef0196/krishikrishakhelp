# Generated by Django 2.0.1 on 2020-08-24 05:33

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('service', '0018_auto_20200824_0110'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='subcategory',
            options={'verbose_name': 'Sub Category', 'verbose_name_plural': 'Sub Categories'},
        ),
        migrations.RemoveField(
            model_name='ourservice',
            name='icon_image',
        ),
    ]