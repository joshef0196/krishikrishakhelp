from django.contrib import admin
from django.urls import include, path
from django.conf import settings
from django.conf.urls.static import static

admin.site.site_header = "krishi krishak Seba Admin Panel"
admin.site.site_title = "krishi krishak Seba Super Admin"

urlpatterns = [
    path('admin/', admin.site.urls),
    path('',include('service.urls')),
    path('/',include('service.urls')),
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
