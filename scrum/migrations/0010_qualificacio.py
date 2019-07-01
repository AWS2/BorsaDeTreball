# Generated by Django 2.1.7 on 2019-07-01 08:19

from django.db import migrations, models
import django.db.models.deletion
import djrichtextfield.models


class Migration(migrations.Migration):

    dependencies = [
        ('scrum', '0009_auto_20190630_2247'),
    ]

    operations = [
        migrations.CreateModel(
            name='Qualificacio',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nota', models.FloatField(null=True)),
                ('comentaris', djrichtextfield.models.RichTextField(blank=True)),
                ('equip', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='scrum.Equip')),
                ('sprint', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='scrum.Sprint')),
            ],
        ),
    ]