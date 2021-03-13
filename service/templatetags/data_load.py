from django import template
from django.shortcuts import render, redirect
from django.db.models import Sum, Count, Q
from service import models
import uuid, socket 

register = template.Library()

@register.filter(name='product_menu')
def category_menu(request):
    product = models.SubCategory.objects.filter(status = True).order_by('category_id__ordering','category_id__category_name','ordering','sub_category_name')
    return product

@register.filter(name='company')
def company_details(request):
    company = models.CompanyInfo.objects.filter(status=True)
    return company

@register.filter(name='member')
def team_member(request):
    member = models.OurTeamMember.objects.filter(status=True)
    return member

@register.filter(name='reviews')
def product_review(request):
    data = models.Reviews.objects.filter(status=True)
    return data

@register.filter(name='news')
def news_list(request):
    data = models.Blogs.objects.filter(status=True).order_by("-id")
    return data

@register.filter(name='agri_expre')
def agricultural_experience(request):
    data = models.Contact.objects.filter(status = True ).order_by("-id")
    return data

# @register.filter(name='product_menu')
# def category_menu(request):
#     product = models.Products.objects.filter(status = True).order_by('cat_name','cat_name__cat_name','sub_cat_name', 'brand_name')
#     return product

@register.filter(name='str2url')
def string_to_url_convert(data):
    #use in view: category = cat.replace('-', ' ')
    # use in html: text|str2url
    data = str(data)    
    return data.replace(' ', '-') 

@register.filter(name='replace')
def replace_load(obj):
    rep = obj.replace("%20"," ")
    return rep
