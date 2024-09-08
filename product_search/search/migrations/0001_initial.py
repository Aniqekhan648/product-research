# Generated by Django 5.0 on 2024-09-08 18:08

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='EbayProduct',
            fields=[
                ('id', models.CharField(max_length=20, primary_key=True, serialize=False)),
                ('product_name', models.CharField(max_length=255)),
                ('avg_sold_price', models.CharField(max_length=20)),
                ('avg_shipping_cost', models.CharField(max_length=20)),
                ('total_sold_count', models.IntegerField()),
                ('total_sales_value', models.CharField(max_length=20)),
                ('date_last_sold', models.DateField(null=True)),
                ('condition', models.CharField(max_length=50)),
                ('review', models.CharField(max_length=50)),
                ('type', models.CharField(max_length=50)),
                ('seller', models.CharField(max_length=100)),
                ('brand', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'ebay_product',
            },
        ),
        migrations.CreateModel(
            name='JungleScoutProduct',
            fields=[
                ('ASIN', models.CharField(max_length=20, primary_key=True, serialize=False)),
                ('product_name', models.CharField(max_length=255)),
                ('brand', models.CharField(max_length=100)),
                ('category', models.CharField(max_length=100)),
                ('est_monthly_revenue', models.CharField(max_length=50)),
                ('est_monthly_sales', models.CharField(max_length=50)),
                ('price', models.CharField(max_length=20)),
                ('fees', models.CharField(max_length=20)),
                ('net', models.CharField(max_length=20)),
                ('rank', models.IntegerField()),
                ('reviews', models.IntegerField()),
                ('LQS', models.IntegerField()),
                ('sellers', models.IntegerField()),
                ('date_first_available', models.DateField(blank=True, null=True)),
                ('buy_box_owner', models.CharField(max_length=100)),
                ('rating', models.CharField(max_length=10)),
                ('dimensions', models.CharField(max_length=50)),
                ('product_tier', models.CharField(max_length=50)),
                ('weight', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'jungle_scout_product',
            },
        ),
        migrations.CreateModel(
            name='Keyword',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('keyword', models.CharField(max_length=255, unique=True)),
            ],
            options={
                'db_table': 'keywords',
            },
        ),
    ]
