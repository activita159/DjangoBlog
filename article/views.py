from django.shortcuts import render
from article.models import Post


def index(request):
    posts = Post.objects.all()[:6]
    return render(request, 'index.html', {'posts': posts})
