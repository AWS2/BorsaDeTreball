# Generated by Django 2.1.7 on 2019-06-28 21:57

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('borsApp', '0018_auto_20190628_0000'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='oferta',
            options={'verbose_name_plural': 'Ofertes'},
        ),
        migrations.AlterModelOptions(
            name='subscripcio',
            options={'verbose_name_plural': 'Subscripcions'},
        ),
    ]
