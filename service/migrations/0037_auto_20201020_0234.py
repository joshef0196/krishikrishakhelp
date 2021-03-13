# Generated by Django 2.0.3 on 2020-10-19 20:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('service', '0036_companyinfo_news'),
    ]

    operations = [
        migrations.RenameField(
            model_name='product',
            old_name='product_image',
            new_name='product_image1',
        ),
        migrations.AddField(
            model_name='product',
            name='product_image2',
            field=models.ImageField(default=1, upload_to='product_image/'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='product',
            name='product_image3',
            field=models.ImageField(default=1, upload_to='product_image/'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='product',
            name='thumb_image',
            field=models.ImageField(default=1, upload_to='thumb_image/'),
            preserve_default=False,
        ),
    ]