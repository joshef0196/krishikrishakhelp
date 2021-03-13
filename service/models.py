import os
from django.db import models
from django.utils.safestring import mark_safe
from ckeditor.fields import RichTextField

class CompanyInfo(models.Model):
    com_name           = models.CharField(max_length=100, blank=True)
    company_logo       = models.ImageField(upload_to='company_logo', blank=True)
    staring_year       = models.IntegerField(default=2020)
    email1             = models.CharField(max_length=100, blank=True)
    email2             = models.CharField(max_length=100, blank=True)
    website            = models.CharField(max_length=200, blank=True)
    mobile1            = models.CharField(max_length=15,  blank=True)
    mobile2            = models.CharField(max_length=15,  blank=True)
    address            = models.TextField(max_length=200, blank=True)
    facebook           = models.CharField(max_length=200, blank=True)
    twitter            = models.CharField(max_length=200, blank=True)
    pinterest          = models.CharField(max_length=200, blank=True)
    skype              = models.CharField(max_length=200, blank=True)
    youtube            = models.CharField(max_length=200, blank=True)
    short_descri       = RichTextField(name="Short Description",blank=True)
    com_story          = RichTextField(blank=True)
    story_video_link   = models.TextField(blank=True)
    glg_map            = models.TextField(blank=True)
    news               = models.TextField(blank=True)
    status             = models.BooleanField(default=True)

    def __str__(self):
        return self.com_name

    class Meta:
        verbose_name = 'Company Info'
        verbose_name_plural = 'Company Information'

class SubscriberNewslatter(models.Model):
    subscriber_email = models.EmailField()
    subscirbe_date   = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.subscriber_email

    class Meta:
        verbose_name = 'News Letter'
        verbose_name_plural = 'Subscriber News Letters'

class SliderInfo(models.Model):
    slider_name   = models.CharField(max_length=100, blank=True)
    title         = models.CharField(max_length = 200)
    description   = RichTextField(blank=True)
    slider_images = models.ImageField(upload_to='images/slider')
    upload_date   = models.DateTimeField(auto_now_add=True)
    slider_order  = models.IntegerField()
    status        = models.BooleanField(default=True)

    class Meta:
        verbose_name = 'Slider Image'
        verbose_name_plural = 'Slider Images'

    def url(self):
        return os.path.join('/static/service/media/images/slider', os.path.basename(str(self.slider_images)))

    def photo(self):
        return mark_safe('<img src = "{}" width="80"/>'.format(self.url()))

    def __str__(self):
        return self.slider_name

class AgriculturalAdvice(models.Model):
    title     = models.CharField(max_length = 200)
    detail    = RichTextField(blank = True)
    image     = models.ImageField(upload_to="image/", blank=True)
    icon_img  = models.ImageField(upload_to="icon_img/", blank=True)
    ordering  = models.IntegerField(default=0)
    status    = models.BooleanField(default=True)

    def url(self):
        return os.path.join('/static/service/media/image/', os.path.basename(str(self.image)))

    def photo(self):
        return mark_safe('<img src = "{}" width="50"/>'.format(self.url()))

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Agricultural Advice'
        verbose_name_plural = 'Agricultural Advices'

class Category(models.Model):
    category_name    = models.CharField(max_length=70)
    ordering         = models.IntegerField(default=0)
    status           = models.BooleanField(default=True)

    def __str__(self):
        return self.category_name

    class Meta:
        verbose_name = 'Category'
        verbose_name_plural = 'Categories' 

class SubCategory(models.Model):
    category               = models.ForeignKey(Category, on_delete=models.CASCADE)
    sub_category_name      = models.CharField(max_length=70)
    ordering               = models.IntegerField(default=0)
    status                 = models.BooleanField(default=True)

    def __str__(self):
        return self.sub_category_name

    class Meta:
        verbose_name = 'Sub Category'
        verbose_name_plural = 'Sub Categories' 

class OurService(models.Model):
    category        = models.ForeignKey(SubCategory, on_delete=models.CASCADE)
    service_title   = models.CharField(max_length = 200)
    service_detail  = RichTextField(blank = True)
    service_image   = models.ImageField(upload_to="service/", blank=True)
    ordering        = models.IntegerField(default=0)
    status          = models.BooleanField(default=True)

    def url(self):
        return os.path.join('/static/service/media/service/', os.path.basename(str(self.service_image)))

    def photo(self):
        return mark_safe('<img src = "{}" width="50"/>'.format(self.url()))

    def __str__(self):
        return self.service_title

    class Meta:
        verbose_name = 'Service'
        verbose_name_plural = 'Services'

class ProblemCategory(models.Model):
    category_name      = models.CharField(max_length=70)
    ordering           = models.IntegerField(default=0)
    status             = models.BooleanField(default=True)

    def __str__(self):
        return self.category_name

    class Meta:
        verbose_name = 'Problem Category'
        verbose_name_plural = 'Problem Categories' 

class CustomerProblem(models.Model):
    category        = models.ForeignKey(ProblemCategory, on_delete=models.CASCADE, blank = True, null = True)
    name            = models.CharField(max_length = 200)
    email           = models.CharField(max_length=100, blank=True)
    address         = models.TextField(max_length=200, blank=True)
    title           = models.TextField(max_length=200)
    problem         = RichTextField()
    problem_file    = models.FileField(upload_to = 'problem_file/', blank = True)
    ordering        = models.IntegerField(default=0)
    post_date       = models.DateTimeField(auto_now_add=True)
    solve_message   = RichTextField(blank = True)
    slove           = models.BooleanField(default=False)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Customer Problem'
        verbose_name_plural = 'Customer Problems'


class Contact(models.Model):
    name             = models.CharField(max_length = 100)
    email            = models.EmailField(max_length = 100,blank = True)
    subject          = models.CharField(max_length = 150)
    message          = RichTextField()
    message_date     = models.DateTimeField(auto_now_add=True)
    status           = models.BooleanField(default = False)

    def __str__(self):
        return self.name   

    class Meta:
        verbose_name = 'Agricultural experience'
        verbose_name_plural = 'Agricultural experiences' 

class BlogCategory(models.Model):
    name             = models.CharField(max_length = 70)
    ordering         = models.IntegerField(default = 0)
    status           = models.BooleanField(default = True)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'News Category'
        verbose_name_plural = 'News Categories'
    
class Blogs(models.Model):
    blog_category       = models.ForeignKey(BlogCategory, on_delete=models.CASCADE)
    blog_title          = models.CharField(max_length = 200)
    thumbnail_image     = models.ImageField(upload_to = "thumbnailimage/", blank = True)
    blog_image          = models.ImageField(upload_to = "blog/", blank = True)
    blog_details        = RichTextField(blank = True)
    posted_By           = models.CharField(max_length = 200, blank = True)
    ordering            = models.IntegerField(default = 0)
    views               = models.IntegerField(default = 0)
    post_date           = models.DateField(auto_now_add = True)
    status              = models.BooleanField(default = True)

    def __str__(self):
        return self.blog_title

    def url(self):
        return os.path.join('/static/service/media/blog/', os.path.basename(str(self.blog_image)))

    def photo(self):
        return mark_safe('<img src = "{}" width="50"/>'.format(self.url()))
    
    def url1(self):
        return os.path.join('/static/service/media/thumbnailimage/', os.path.basename(str(self.thumbnail_image)))

    def thumbnailimg(self):
        return mark_safe('<img src = "{}" width="60"/>'.format(self.url1()))
    
    class Meta:
        verbose_name = 'News'
        verbose_name_plural = 'News'

class BlogComment(models.Model):
    blog             = models.ForeignKey(Blogs, on_delete=models.CASCADE)
    user_name        = models.CharField(max_length = 200, blank = True)
    email            = models.CharField(max_length = 200, blank = True)
    comment          = RichTextField(blank = True) 
    comment_date     = models.DateTimeField(auto_now_add = True)
    status           = models.BooleanField(default = True)

    def __str__(self):
        return self.user_name

    class Meta:
        verbose_name = 'Blog Comment'
        verbose_name_plural = 'Blog Comments'

class Reviews(models.Model):
    person_name           = models.CharField(max_length=100, blank=True)
    person_designation    = models.CharField(max_length=100, blank=True)
    person_img            = models.ImageField(upload_to="reviews_img/", blank=True)
    review_detail         = RichTextField(blank=True)
    ordering              = models.IntegerField(default=0)
    review_date           = models.DateField(auto_now_add=False,blank=True)
    status                = models.BooleanField(default=0)

    def __str__(self):
        return self.person_name

    def url(self):
        return os.path.join('/static/service/media/reviews_img/', os.path.basename(str(self.person_img)))

    def photo(self):
        return mark_safe('<img src = "{}" width="50"/>'.format(self.url()))        

    class Meta:
        verbose_name = 'Review'
        verbose_name_plural = 'Reviews'         

class OurTeamMember(models.Model):
    member_name          = models.CharField(max_length=50)
    member_designation   = models.CharField(max_length=80)
    images               = models.ImageField(upload_to="team_member/", blank=True)
    member_mobile        = models.CharField(max_length=15, blank=True)
    member_email         = models.CharField(max_length=60, blank=True)
    facebook             = models.CharField(max_length=150, blank=True)
    twitter              = models.CharField(max_length=150, blank=True)
    linkedin             = models.CharField(max_length=150, blank=True)
    join_date            = models.DateField(auto_now_add=True)
    member_address       = models.TextField(max_length=200, blank=True)
    ordering             = models.IntegerField(default=1)
    status               = models.BooleanField(default=True)
    
    def __str__(self):
        return self.member_name

    def url(self):
        return os.path.join('/static/service/media/team_member/', os.path.basename(str(self.images)))

    def photo(self):
        return mark_safe('<img src = "{}" width="80"/>'.format(self.url()))

    class Meta:
        verbose_name = 'Our Team Member'
        verbose_name_plural = 'Our Team Members'

class Faqs(models.Model):
    title            = models.CharField(max_length = 100)
    details          = RichTextField()
    ordering         = models.IntegerField(default = 0)
    status           = models.BooleanField(default = 1)

    def __str__(self):
        return self.title                       

    class Meta:
        verbose_name = 'FAQ'
        verbose_name_plural = 'FAQs'

class QuickSolve(models.Model):
    question         = models.CharField(max_length = 100)
    answer           = RichTextField()
    ordering         = models.IntegerField(default = 0)
    status           = models.BooleanField(default = 1)

    def __str__(self):
        return self.question                       

    class Meta:
        verbose_name = 'Quick Solve'
        verbose_name_plural = 'Quick Solves'

class FarmerAccount(models.Model):
    name          = models.CharField(max_length=30)
    mobile        = models.CharField(max_length=15, unique=True)
    email         = models.CharField(max_length=170,blank=True,unique=True)
    password      = models.CharField(max_length=100)
    reg_date      = models.DateTimeField(auto_now_add=True)
    address       = models.TextField(blank=True)
    status        = models.BooleanField(default=1)

    def __str__(self):
        return self.name
    class Meta:
        verbose_name = 'Farmer Account'
        verbose_name_plural = 'Farmer Account'

class Product(models.Model):
    farmer         = models.ForeignKey(FarmerAccount, on_delete=models.CASCADE)
    title          = models.CharField(max_length=250)
    thumb_image    = models.ImageField(upload_to='thumb_image/')
    product_image1 = models.ImageField(upload_to='product_image1/')
    product_image2 = models.ImageField(upload_to='product_image2/',blank = True)
    product_image3 = models.ImageField(upload_to='product_image3/',blank = True)
    quantity_type = (
        ('1',  'KG'),
        ('2',  'Number'),
    )
    quantity_for   = models.CharField(max_length=3, choices = quantity_type)
    product_price  = models.IntegerField(default=0)
    quantity       = models.IntegerField(default=1)
    total_sale     = models.IntegerField(default=0, blank = True)
    date           = models.DateField(auto_now_add=True)
    description    = RichTextField(blank = True)
    approve_date   = models.DateTimeField(auto_now_add = False, null=True, blank=True)
    status         = models.BooleanField(default=0)
    new            = models.BooleanField(default=0,blank = True)

    def url(self):
        return os.path.join('/static/service/media/thumb_image', os.path.basename(str(self.thumb_image)))

    def photo(self):
        return mark_safe('<img src = "{}" width="60" height = "60"/>'.format(self.url()))

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Product'
        verbose_name_plural = 'Products'


class CustomarAccount(models.Model):
    customer_name = models.CharField(max_length=30)
    mobile        = models.CharField(max_length=15)
    email         = models.CharField(max_length=170,blank=True,unique=True)
    user_name     = models.CharField(max_length=100,unique=True)
    password      = models.CharField(max_length=100)
    reg_date      = models.DateTimeField(auto_now_add=True)
    address       = models.TextField(blank=True)
    status        = models.BooleanField(default=1)

    def __str__(self):
        return self.customer_name
    class Meta:
        verbose_name = 'Customar Account'
        verbose_name_plural = 'Customar Account'

class CustomarOrderList(models.Model):
    farmer          = models.ForeignKey(FarmerAccount, on_delete=models.CASCADE,blank = True, null = True)
    customer_name   = models.CharField(max_length=150)
    address         = models.CharField(max_length=100)
    product_name    = models.ForeignKey(Product, on_delete=models.CASCADE)
    price           = models.IntegerField(default=0)
    quantity        = models.IntegerField(default=1)
    order_date      = models.DateField(auto_now_add = True)
    delivery_date   = models.DateField(auto_now_add = False, blank = True, null = True)
    payment_type_choose = (
        ('b', 'Bkash'),
        ('d', 'Rocket'),
    )
    payment_type    = models.CharField(max_length=1, choices=payment_type_choose)
    payment_number  = models.CharField(max_length=150)
    payment_txt_id  = models.CharField(max_length=150)
    ip_address      = models.CharField(max_length=50,blank = True, null = True)
    status          = models.BooleanField(default=0)

    def __str__(self):
        return self.customer_name

    class Meta:
        verbose_name = 'Order List'
        verbose_name_plural = 'Order Lists'

class AddToCart(models.Model):
    product_name  = models.ForeignKey(Product, on_delete=models.CASCADE)
    ip_address    = models.CharField(max_length=50)
    qt_price      = models.IntegerField(default = 0)
    quantity      = models.IntegerField(default = 1)
    total_price   = models.IntegerField(default = 0)
    add_date      = models.DateTimeField(auto_now_add = True)
    status        = models.BooleanField(default=1)
    def __str__(self):
        return str(self.product_name)
    
    class Meta:
        verbose_name = 'Add To Cart'
        verbose_name_plural = 'Add To Carts'


class DistrictCat(models.Model):
    district       = models.CharField(max_length = 100)
    status         = models.BooleanField(default = True)

    def __str__(self):
        return self.district

    class Meta:
        verbose_name = 'District'
        verbose_name_plural = 'Districts'

class ImportantLink(models.Model):
    district       = models.ForeignKey(DistrictCat, on_delete=models.CASCADE)
    title          = models.CharField(max_length = 300)
    urls           = models.TextField(blank=True)
    ordering       = models.IntegerField(default = 0)
    status         = models.BooleanField(default = True)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Important Link'
        verbose_name_plural = 'Important Links'