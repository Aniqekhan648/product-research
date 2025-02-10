"""
URL configuration for product_search project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from search import views  # Import the home view from the search app
from auth_app.views import login_views, logout_views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('search/', include('search.urls')),  # Redirects to the search app
    path('', views.home, name='home'),  # Add this line to set the home page at the main URL
    path('login/', login_views, name='login'),
    path('logout/', logout_views, name='logout'),
]
