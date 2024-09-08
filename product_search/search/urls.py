from django.urls import path
from . import views

urlpatterns = [
    path('', views.search_keywords, name='search_keywords'),
    # path('products', views.product_list, name='product_list'),
]
