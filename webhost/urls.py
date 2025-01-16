
from django.urls import path
from django.conf.urls.static import static
from django.conf import settings
from .import views

urlpatterns = [
    path('',views.Home, name='homepage'),
    # path('nav/',views.navbar_view, name='navpage'),
    # path('footer/',views.footer, name='footerpage'),
    # path('aboutme/',views.about_me, name='aboutpage'),
    # path('experience/',views.experience_view, name='experiencepage'),
    # path('skill/',views.skill, name='skillpage'),
    # path('education/',views.education_view, name='educationpage'),
    # path('contact/',views.contact_view, name='contactpage'),
    # path('project/',views.project_view, name='projectpage'),
    # path('certification/',views.certifications_view, name='certificationpage'),
   
  
]
urlpatterns += static(settings.MEDIA_URL,document_root = settings.MEDIA_ROOT)
