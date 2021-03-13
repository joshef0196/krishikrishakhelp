from django.contrib import admin
from . import models
from django.utils.html import format_html

class CompanyInfoAdmin(admin.ModelAdmin):
    list_display    = ['com_name','status']
    search_fields   = ['com_name','status']
    list_filter     = ['status']

class SubscriberNewslatterAdmin(admin.ModelAdmin):
    list_display    = ['subscriber_email', 'subscirbe_date']
    search_fields   = ['subscriber_email']
    date_hierarchy = 'subscirbe_date'

class ContactAdmin(admin.ModelAdmin):
    list_display    = ['name', 'email','subject','message_date','status','approve']
    search_fields   = ['email']
    date_hierarchy = 'message_date'

    def approve(self, obj):
        return format_html('<a style="color:green;font-weight:bold;" href="/admin/{}/approve/">Approve</a>', obj.pk)
        action.short_description = 'Approve Link'
        action.allow_tags = True

class ReviewsAdmin(admin.ModelAdmin):
    list_display    = ['person_name', 'photo','ordering','review_date']
    search_fields   = ['person_name']

class BlogCategoryAdmin(admin.ModelAdmin):
    list_display    = ['name', 'ordering','status']
    search_fields   = ['name', 'ordering']

class BlogAdmin(admin.ModelAdmin):
    list_display    = ['blog_category','blog_title','thumbnailimg','views','ordering','post_date','status']
    search_fields   = ['blog_category__name', 'blog_title']
    list_filter     = ['post_date','status']

class OurTeamMemberAdmin(admin.ModelAdmin):
    list_display    = ['member_name','photo','join_date','status']
    search_fields   = ['member_name']
    list_filter     = ['status']

class FaqsAdmin(admin.ModelAdmin):
    list_display    = ['title','ordering','status']
    search_fields   = ['title','ordering','status']
    list_filter     = ['status']

class SliderInfoAdmin(admin.ModelAdmin):
    list_display    = ['title','photo','slider_order','status']
    search_fields   = ['title','slider_order','status']
    list_filter     = ['status']

class ProblemCategoryAdmin(admin.ModelAdmin):
    list_display    = ['category_name','ordering','status']
    search_fields   = ['category_name','status']
    list_filter     = ['status']

class CustomerProblemAdmin(admin.ModelAdmin):
    list_display    = ['category','name','email','title','problem_file','ordering','slove','send_mail']
    search_fields   = ['name','email','slove']
    list_filter     = ['slove']

    def send_mail(self, obj):
        return format_html('<a style="color:green;font-weight:bold;" href="/admin/{}/send-mail/">Send Mail</a>', obj.pk)
        action.short_description = 'Approve Link'
        action.allow_tags = True

class CategorymAdmin(admin.ModelAdmin):
    list_display    = ['category_name','ordering']
    search_fields   = ['category_name','ordering']
    list_filter     = ['ordering']

class SubCategoryAdmin(admin.ModelAdmin):
    list_display    = ['category','sub_category_name','ordering']
    search_fields   = ['ordering']
    list_filter     = ['ordering']

class OurServiceAdmin(admin.ModelAdmin):
    list_display    = ['category','service_title','photo','ordering','status']
    search_fields   = ['ordering','status']
    list_filter     = ['ordering','status']

class AgriculturalAdviceAdmin(admin.ModelAdmin):
    list_display    = ['title','photo','ordering','status']
    search_fields   = ['ordering','status']
    list_filter     = ['status']

class QuickSolveAdmin(admin.ModelAdmin):
    list_display    = ['question','answer','ordering','status']
    search_fields   = ['question','status']
    list_filter     = ['status']

class ProductAdmin(admin.ModelAdmin):
    list_display    = ('title','photo','product_price','quantity','date','status','product_approve')
    search_fields   = ('product_price','quantity','date','status')
    list_filter     = ('title','date','status')
    list_per_page = 15
    date_hierarchy = 'date'
    ordering = ('date',)
    
    def product_approve(self, obj):
        return format_html('<a style="color:green;font-weight:bold;" href="/admin/{}/product-approve/">Approve</a>', obj.pk)
        action.short_description = 'Approve Link'
        action.allow_tags = True

class FarmerAccountAdmin(admin.ModelAdmin):
    list_display  = ['name', 'mobile', 'email', 'reg_date', 'status']
    search_fields = ['name', 'mobile', 'email', 'reg_date', 'status']
    list_filter   = ['name', 'mobile', 'email', 'reg_date', 'status']


class CustomerAccountAdmin(admin.ModelAdmin):
    list_display  = ['customer_name','user_name', 'mobile', 'email', 'reg_date', 'status']
    search_fields = ['customer_name', 'mobile', 'email', 'reg_date', 'status']
    list_filter   = ['customer_name', 'mobile', 'email', 'reg_date', 'status']

class CustomarOrderList(admin.ModelAdmin):
    list_display  = ['farmer','customer_name','product_name','quantity','price','order_date','status']
    search_fields = ['farmer','product_name','price']
    list_filter   = ['price','order_date']


class AddToCartAdmin(admin.ModelAdmin):
    list_display  = ['product_name','qt_price','total_price','add_date','status']
    search_fields = ['product_name','qt_price','total_price']
    list_filter   = ['product_name','status']

class DistrictCatAdmin(admin.ModelAdmin):
    list_display    = ['district','status']
    search_fields   = ['status']
    list_filter     = ['status']

class ImportantLinkAdmin(admin.ModelAdmin):
    list_display    = ['district','title','urls','ordering','status']
    search_fields   = ['district_district','status']
    list_filter     = ['status']

admin.site.register(models.CompanyInfo, CompanyInfoAdmin)
admin.site.register(models.SubscriberNewslatter, SubscriberNewslatterAdmin)
admin.site.register(models.Contact, ContactAdmin)
admin.site.register(models.Reviews, ReviewsAdmin)
admin.site.register(models.BlogCategory, BlogCategoryAdmin)
admin.site.register(models.Blogs, BlogAdmin)
admin.site.register(models.OurTeamMember, OurTeamMemberAdmin)
admin.site.register(models.Faqs, FaqsAdmin)
admin.site.register(models.SliderInfo, SliderInfoAdmin)
admin.site.register(models.CustomerProblem, CustomerProblemAdmin)
admin.site.register(models.Category, CategorymAdmin)
admin.site.register(models.SubCategory, SubCategoryAdmin)
admin.site.register(models.OurService, OurServiceAdmin)
admin.site.register(models.AgriculturalAdvice, AgriculturalAdviceAdmin)
admin.site.register(models.QuickSolve, QuickSolveAdmin)
admin.site.register(models.Product,ProductAdmin)
admin.site.register(models.CustomarAccount,CustomerAccountAdmin)
admin.site.register(models.CustomarOrderList,CustomarOrderList)
admin.site.register(models.AddToCart,AddToCartAdmin)
admin.site.register(models.FarmerAccount,FarmerAccountAdmin)
admin.site.register(models.DistrictCat, DistrictCatAdmin)
admin.site.register(models.ImportantLink, ImportantLinkAdmin)
admin.site.register(models.ProblemCategory, ProblemCategoryAdmin)