
from django.http import JsonResponse

def home(request):
    dt = {"name":"birendra"}
    return JsonResponse(dt)
