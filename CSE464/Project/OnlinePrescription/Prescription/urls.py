"""OnlinePrescription URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
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
from Prescription import views
from django.conf import settings
from django.conf.urls.static import static

from django.conf import settings
urlpatterns = [
    path("",views.index, name="home"),
    path("plogin", views.plogin,name="plogin"),
    path("dlogin", views.dlogin,name="dlogin"),
    path("psignup", views.psignup,name="psignup"),
    path("dsignup", views.dsignup,name="dsignup"),
    path("prescription", views.prescription, name="prescription"),
    path("doctorPage", views.doctor, name="doctorPage"),
    path("reg", views.regPatient, name="regPatient"),
    path("uppres", views.uppres, name="uppres"),
    path("addMedicine", views.addMedicine, name="addMedicine"),
    path("addTest", views.addTest, name="addTest"),
    path("savePres", views.savePres, name="savePres"),
    path("delPres", views.delpres,name="delpres"),
    path("addOneMed", views.addOne, name='addOne'),
    path("delOneMed", views.delOne, name='delOne'),
    path("prehis", views.prehis, name="prehis"),
    path("addOneTest",views.addOneTest, name="addOneTest"),
    path("delOneTest", views.delTest, name="delTest"),
    path("update_p", views.update_p, name="update_p"),
    path("update_d", views.update_d, name="update_d")


          
          
]
