# Generated by Django 2.1.10 on 2019-08-13 22:28

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('borsApp', '0008_auto_20190813_1621'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='notificacio',
            name='email',
        ),
    ]
