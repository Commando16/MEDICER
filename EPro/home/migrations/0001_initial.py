# Generated by Django 3.1 on 2021-12-15 14:27

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Users',
            fields=[
                ('userid', models.AutoField(db_column='userId', primary_key=True, serialize=False)),
                ('email', models.CharField(max_length=50)),
                ('password', models.CharField(max_length=50)),
                ('isapproved', models.IntegerField(db_column='isApproved')),
            ],
            options={
                'db_table': 'users',
                'managed': False,
            },
        ),
    ]