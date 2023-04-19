from django.shortcuts import render

# Create your views here.

def appdemo(request):
    return render(request, 'appdemo/appdemo.html')