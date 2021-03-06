# Generated by Django 2.2.13 on 2020-11-26 11:22

import datetime
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import djrichtextfield.models


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('scrum', '0010_auto_20201101_2248'),
    ]

    operations = [
        migrations.CreateModel(
            name='SpecFeedback',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('data', models.DateField(default=datetime.datetime.now)),
                ('hores', models.FloatField(blank=True, null=True)),
                ('desc', djrichtextfield.models.RichTextField(blank=True, null=True)),
                ('spec', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='scrum.Spec')),
                ('usuari', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
