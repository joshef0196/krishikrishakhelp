from rest_framework import serializers
from .models import Blogs,ImportantLink

class POSTBlog(serializers.ModelSerializer):
    class Meta:
        model  = Blogs
        fields = ('blog_category','blog_title','blog_image','blog_details','posted_By','ordering','views','status')

class POST_ImportantLink(serializers.ModelSerializer):
    class Meta:
        model  = ImportantLink
        fields = ('district','title','urls','ordering','status') 