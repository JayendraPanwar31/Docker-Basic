from django.shortcuts import render

# Create your views here.
def index(request):
    sum_result = None
    if request.method == "POST":
        num1 = int(request.POST["num1"])
        num2 = int(request.POST["num2"])
        sum_result = num1 + num2
    return render(request, 'calculator/index.html', {'sum_result': sum_result})

