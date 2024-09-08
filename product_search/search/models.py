from django.db import models

class Keyword(models.Model):
    keyword = models.CharField(max_length=255, unique=True)
    class Meta:
            db_table = 'keywords'  # Replace with your desired table name
    def __str__(self):
        return self.keyword
    
class JungleScoutProduct(models.Model):
    ASIN = models.CharField(max_length=20, primary_key=True)
    product_name = models.CharField(max_length=255)
    brand = models.CharField(max_length=100)
    category = models.CharField(max_length=100)
    est_monthly_revenue = models.CharField(max_length=50)
    est_monthly_sales = models.CharField(max_length=50)
    price = models.CharField(max_length=20)
    fees = models.CharField(max_length=20)
    net = models.CharField(max_length=20)
    rank = models.IntegerField()
    reviews = models.IntegerField()
    LQS = models.IntegerField()
    sellers = models.IntegerField()
    date_first_available = models.DateField(null=True, blank=True)
    buy_box_owner = models.CharField(max_length=100)
    rating = models.CharField(max_length=10)
    dimensions = models.CharField(max_length=50)
    product_tier = models.CharField(max_length=50)
    weight = models.CharField(max_length=20)

    class Meta:
        db_table = 'jungle_scout_product'


class EbayProduct(models.Model):
    class Meta:
        db_table = 'ebay_product'

    id = models.CharField(max_length=20, primary_key=True)  # Use ID from JSON as primary key
    product_name = models.CharField(max_length=255)
    avg_sold_price = models.CharField(max_length=20)
    avg_shipping_cost = models.CharField(max_length=20)
    total_sold_count = models.IntegerField()
    total_sales_value = models.CharField(max_length=20)
    date_last_sold = models.DateField(null=True)  # Allow null if no date is present
    condition = models.CharField(max_length=50)
    review = models.CharField(max_length=50)
    type = models.CharField(max_length=50)  # Rename `type` to avoid conflict with Python's reserved keyword
    seller = models.CharField(max_length=100)
    brand = models.CharField(max_length=100)

    def __str__(self):
        return self.product_name