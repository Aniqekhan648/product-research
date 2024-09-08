# search/views.py
from django.shortcuts import render, redirect
from .models import Keyword, JungleScoutProduct, EbayProduct
from django.contrib import messages
import re

def search_keywords(request):
    if request.method == 'POST':
        keyword = request.POST.get('keyword')
        if keyword:
            # Define regex pattern for valid keywords (alphanumeric and spaces only)
            pattern = re.compile(r'^[\w\s]+$')
            
            # Check if keyword matches the pattern
            if pattern.match(keyword):
                # Add keyword to the database if it doesn't already exist
                if not Keyword.objects.filter(keyword=keyword).exists():
                    Keyword.objects.create(keyword=keyword)

                # Fetch JungleScout products that match the keyword
                jungle_scout_products = JungleScoutProduct.objects.filter(
                    product_name__icontains=keyword
                ) | JungleScoutProduct.objects.filter(
                    category__icontains=keyword
                ) | JungleScoutProduct.objects.filter(
                    brand__icontains=keyword
                )

                # Fetch eBay products that match the keyword
                ebay_products = EbayProduct.objects.filter(
                    product_name__icontains=keyword
                )

                if jungle_scout_products.exists() or ebay_products.exists():
                    for product in ebay_products:
                        print(product)
                    print(1)
                    for product in jungle_scout_products:
                        print(product)
                    # If products are found, render the product_list page
                    return render(request, 'product_list.html', {
                        'jungle_scout_products': jungle_scout_products,
                        'ebay_products': ebay_products
                    })
                else:
                    # If no products are found, show a message to the user
                    messages.info(request, f'The keyword "{keyword}" has been added to the queue. Please check back later for results.')
            else:
                # Invalid keyword, show error message
                messages.error(request, 'Invalid keyword. Please enter a proper word (letters, numbers, and spaces only).')
        else:
            messages.info(request, 'Please enter a keyword to search.')

    # Render add_keyword page with the message if no products are found
    return render(request, 'add_keyword.html')

# def product_list(request):
#     products = EbayProduct.objects.all()  # Fetch all products from the table
#     return render(request, 'test.html', {'products': products})

def home(request):
    return render(request, 'home.html')