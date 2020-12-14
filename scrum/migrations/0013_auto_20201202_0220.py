# Generated by Django 2.2.13 on 2020-12-02 01:20

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('scrum', '0012_auto_20201126_1356'),
    ]

    operations = [
        migrations.AlterField(
            model_name='equip',
            name='membres',
            field=models.ManyToManyField(related_name='equips', to=settings.AUTH_USER_MODEL),
        ),
        migrations.AlterField(
            model_name='specfeedback',
            name='data',
            field=models.DateTimeField(default=django.utils.timezone.now),
        ),
        migrations.AlterField(
            model_name='specfeedback',
            name='usuari',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='feedbacks', to=settings.AUTH_USER_MODEL),
        ),
    ]