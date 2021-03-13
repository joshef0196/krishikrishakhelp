from django.shortcuts import render,redirect,HttpResponse
from . import models
from django.contrib import messages
from django.db.models import Sum
from django.db.models import F,Q
from django.contrib.auth.decorators import login_required
from django.http import JsonResponse
from django.conf import settings
from django.core.files.storage import default_storage
from django.core.files.base import ContentFile
import datetime, hashlib, socket, string, os, re
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
import uuid, socket, random
from django.views.decorators.csrf import csrf_exempt
from django.contrib import messages
from django.utils.dateparse import parse_date, parse_datetime
# for email
from django.core.mail import send_mail, BadHeaderError
from django.template.loader import render_to_string


def get_client_ip(request):
    x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
    if x_forwarded_for:
        ip = x_forwarded_for.split(',')[0]
    else:
        ip = request.META.get('REMOTE_ADDR')
    return ip

def index(request):
    slider_info        = models.SliderInfo.objects.filter(status = True).order_by("slider_order")
    farm_advice        = models.AgriculturalAdvice.objects.filter(status = True).order_by("ordering")
    solv_problem       = models.CustomerProblem.objects.filter(slove = True).order_by("ordering")
    context = {
        'slider_info' :slider_info,
        'farm_advice' :farm_advice,
        'solv_problem':solv_problem
    }
    return render(request,'service/index.html', context)

def news(request):
    blog          = models.Blogs.objects.filter(status = True).order_by("ordering")
    blog_cat      = models.BlogCategory.objects.filter(status = True).order_by("ordering")
    recent_post   = models.Blogs.objects.filter(status = True).order_by("-id")

    page = request.GET.get('page', 1)

    paginator = Paginator(blog, 3)
    try:
        blog = paginator.page(page)
    except PageNotAnInteger:
        blog = paginator.page(1)
    except EmptyPage:
        blog = paginator.page(paginator.num_pages)

    context = {
        'blog':blog,
        'blog_cat':blog_cat,
        'recent_post':recent_post,
    }
    return render(request,'service/news.html', context)

def single_news(request, id):
    single_news    = models.Blogs.objects.filter(status = True, id = id).first()

    models.Blogs.objects.filter(status = True, id = id).update( views = F('views')+1 )
    context ={
        'single_news':single_news
    }
    return render(request,'service/news_details.html', context)

def cat_news(request, id):
    blog          = models.Blogs.objects.filter(status = True).order_by("ordering")
    blog_cat      = models.BlogCategory.objects.filter(status = True).order_by("ordering")
    recent_post   = models.Blogs.objects.filter(status = True).order_by("-id")

    blog_list      = models.Blogs.objects.filter(status = True, blog_category_id = id)
    context ={
        'blog_list':blog_list,
        'blog':blog,
        'blog_cat':blog_cat,
        'recent_post':recent_post,
    }
    return render(request,'service/cat_news.html', context)

def contact_us(request):
    imprt_link       = models.ImportantLink.objects.filter(status = True).order_by('district', 'title')
    context ={
        'imprt_link' : imprt_link,
    }
    return render(request,'service/contact.html', context)

def about_us(request):

    return render(request,'service/about.html')

def single_about(request, id):
    single_history   = models.CompanyInfo.objects.filter(status = True, id = id).first()
    context ={
        'single_history' : single_history,
    }
    return render(request,'service/single_about.html', context)

def faq(request):
    faq         = models.Faqs.objects.filter(status = True).order_by("ordering")
    context ={
        'faq' : faq,
    }
    return render(request,'service/faq.html', context)

def quick_solve(request):
    question         = models.QuickSolve.objects.filter(status = True).order_by("ordering")
    context ={
        'question' : question,
    }
    return render(request,'service/quick_solve.html', context)

def single_quick_solve(request, title):
    tlt             = title.replace('-', ' ')
    solve_details   = models.QuickSolve.objects.filter(status = True, question = tlt).first()
    context ={
        'solve_details' : solve_details,
    }
    return render(request,'service/single_quick_solve.html', context)

def product(request):
    product_list    = models.Product.objects.filter(status = True).order_by("id")
    cart_list       = models.AddToCart.objects.filter(ip_address__contains = get_client_ip(request)).order_by("id")
    
    # paginator    = Paginator(product_list, 1) # Show 25 contacts per page.
    # page_number  = request.GET.get('page')
    # product_list = paginator.get_page(page_number)

    page = request.GET.get('page', 1)

    paginator = Paginator(product_list, 6)
    try:
        product_list = paginator.page(page)
    except PageNotAnInteger:
        product_list = paginator.page(1)
    except EmptyPage:
        product_list = paginator.page(paginator.num_pages)

    qt_total = 0
    for data in models.AddToCart.objects.filter(ip_address__contains = get_client_ip(request)):
        qt_total += data.total_price
    context ={
        'product_list' : product_list,
        'cart_list'    : cart_list,
        'qt_total'     : qt_total,
    }
    return render(request,'service/product.html', context)


def single_product(request,far_name, pro):
    farmer_name    = far_name.replace('-', ' ')
    product        = pro.replace('-', ' ')
    product_details   = models.Product.objects.filter(status = True, title = product, farmer_id__name = farmer_name).first()
    context ={
        'product_details' : product_details,
    }
    return render(request,'service/single_product.html', context)


def problem_send(request):
    problem_cat = models.ProblemCategory.objects.filter(status = True).order_by('ordering')
    if request.method=="POST":
        name         = request.POST['name']
        email        = request.POST['email']
        address      = request.POST['address']
        title        = request.POST['title']
        problem_cat  = request.POST['problem_cat']
        editor1      = request.POST['editor1']
        
        order_file = ""
        if bool(request.FILES.get('problem_file', False)) == True:
            file = request.FILES['problem_file']
            order_file = "problem_file/"+file.name
            if not os.path.exists(settings.MEDIA_ROOT+"problem_file/"):
                os.mkdir(settings.MEDIA_ROOT+"problem_file/")
            default_storage.save(settings.MEDIA_ROOT+"problem_file/"+file.name, ContentFile(file.read()))

        # check_user = models.CustomerProblem.objects.filter(email = email).first()

        if models.CustomerProblem.objects.create(name = name, category_id = problem_cat, email = email, address =  address, title = title, problem = editor1, problem_file = order_file):
            
            name= request.POST['name']
            subject = 'welcome to KrishiKhishakhelp'
            message = f'Hi {name}, thank you for registering in Krishi Khishak help.'
            email_from = settings.EMAIL_HOST_USER 
             
            try:
                send_mail( subject, message, email_from, [email] ) 
                # send_mail(
                #     subject,
                #     message,
                #     settings.EMAIL_HOST_USER,
                #     ['joshefhossainbappy019@gmail.com'],
                #     fail_silently=False,
                # )
                messages.success(request,"ধন্যবাদ! আপনার মেসেজটি প্রেরণ হয়েছে।") 
                # return render("/problem/send")
            except BadHeaderError:
                return HttpResponse('Invalid header found.')

        else :
            messages.warning(request,'দুঃখিত! আপনার মেসেজটি প্রেরণ হয়নি.আবার চেষ্টা করুন।')

    context={
        'problem_cat' : problem_cat
    }
    return render(request,'service/problem_form.html', context)

def single_problem(request, id):
    single_problem        = models.CustomerProblem.objects.filter(id = id).first()

    context={
        'single_problem':single_problem,
    }
    return render(request,'service/single_problem.html', context)

def ekrishi(request, sldname):
    sldname             = sldname.replace('-', ' ')
    sld_details         = models.SliderInfo.objects.filter(status = True, slider_name = sldname).first()
    context ={
        'sld_details' : sld_details,
    }
    return render(request,'service/ekrishi.html', context)

def single_service(request, pro_name):
    pro            = pro_name.replace('-', ' ')
    service        = models.OurService.objects.filter(category__sub_category_name = pro).first()

    context={
        'service':service,
    }
    return render(request,'service/single_service.html', context)

def fram_advice(request, advice):
    advice            = advice.replace('-', ' ')
    fram_advice        = models.AgriculturalAdvice.objects.filter(title = advice).first()

    context={
        'fram_advice':fram_advice,
    }
    return render(request,'service/fram_advice.html', context)

def insert_newsletter(request):
    if request.is_ajax():
        data = 'Something went wrong!'
        match = re.match('^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$', request.GET['email'])
        if match == None:
            data = 'Please input valid email address'
        else:
            if models.SubscriberNewslatter.objects.filter(subscriber_email=request.GET['email']).exists():
                data = 'Your have already subscribed'
            else:
                models.SubscriberNewslatter.objects.create(subscriber_email=request.GET['email'])
                data = 'Subscription Successful'
        return JsonResponse(data,safe=False)

def agricultural_experience(request):
    if request.is_ajax():
        data ='Something went wrong!'
        if models.Contact.objects.create(name = request.GET['name'], email = request.GET['email'], subject = request.GET['subject'],
            message = request.GET['message'] ):
            data = 'প্রেরিত হয়েছে'
        return JsonResponse(data,safe=False)

def single_agricultural_experience(request, id):
    experience    = models.Contact.objects.filter(id = id).first()
    context={
        'experience':experience,
    }
    return render(request,'service/single_agricultural_experience.html', context)

def my_product(request):
    if not request.session['userid']:
        return redirect('/farmer/login/')

    if request.method == 'POST':
        title               = request.POST['title']
        product_price       = request.POST['product_price']
        quantity            = request.POST['quantity']
        quantity_type       = request.POST['quantity_type'] 
        description         = request.POST['description']

        order_file = ""
        if bool(request.FILES.get('thumb_image', False)) == True:
            file = request.FILES['thumb_image']
            order_file = "thumb_image/"+file.name
            if not os.path.exists(settings.MEDIA_ROOT+"thumb_image/"):
                os.mkdir(settings.MEDIA_ROOT+"thumb_image/")
            default_storage.save(settings.MEDIA_ROOT+"thumb_image/"+file.name, ContentFile(file.read()))
    
        order_file1 = ""
        if bool(request.FILES.get('product_image1', False)) == True:
            file = request.FILES['product_image1']
            order_file1 = "product_image1/"+file.name
            if not os.path.exists(settings.MEDIA_ROOT+"product_image1/"):
                os.mkdir(settings.MEDIA_ROOT+"product_image1/")
            default_storage.save(settings.MEDIA_ROOT+"product_image1/"+file.name, ContentFile(file.read()))
    
        order_file2 = ""
        if bool(request.FILES.get('product_image2', False)) == True:
            file = request.FILES['product_image2']
            order_file2 = "product_image2/"+file.name
            if not os.path.exists(settings.MEDIA_ROOT+"product_image2/"):
                os.mkdir(settings.MEDIA_ROOT+"product_image2/")
            default_storage.save(settings.MEDIA_ROOT+"product_image2/"+file.name, ContentFile(file.read()))
    
        order_file3 = ""
        if bool(request.FILES.get('product_image3', False)) == True:
            file = request.FILES['product_image3']
            order_file3 = "product_image3/"+file.name
            if not os.path.exists(settings.MEDIA_ROOT+"product_image3/"):
                os.mkdir(settings.MEDIA_ROOT+"product_image3/")
            default_storage.save(settings.MEDIA_ROOT+"product_image3/"+file.name, ContentFile(file.read()))
    
        if models.Product.objects.create(
            farmer_id = int(request.session['userid']), title = title, product_image1 = order_file1, product_image2 = order_file2, quantity_for = quantity_type,
            product_image3 = order_file3, thumb_image = order_file, product_price = product_price, quantity = quantity, description = description
            ):
            messages.success(request,"Product successfully added.")
            return redirect('/my/product/list/')
        else:
            messages.warning(request,"please input valid value.")

    return render(request,'service/farmer_panel/my_product.html')

def my_product_list(request):
    product_list = models.Product.objects.filter(farmer_id = int(request.session['userid'])).order_by('-id')
    context={
        'product_list': product_list,
    }
    return render(request,'service/farmer_panel/product_list.html', context)

def farmer_reg(request):
    if request.method == 'POST':
        name        = request.POST['name']
        mobile      = request.POST['mobile']
        email       = request.POST['email']
        password    = request.POST['password']
        address     = request.POST['address']

        chk_user = models.FarmerAccount.objects.filter(mobile = mobile)
        if not chk_user:
            new_md5_obj     = hashlib.md5(password.encode())
            new_enc_pass    = new_md5_obj.hexdigest()

            models.FarmerAccount.objects.create(
                name = name, mobile = mobile,email = email, password = new_enc_pass,address = address,
                reg_date = datetime.datetime.strftime(datetime.datetime.now().date(),"%Y-%m-%d"))

            return redirect('/farmer/login/')
        else:
            messages.warning(request,"Mobile number is already exits!")

    return render(request,'service/farmer_reg.html')

def login(request):
    if request.method=="POST":
        mobile     = request.POST['mobile']
        password    = request.POST['password']

        new_md5_obj = hashlib.md5(password.encode())
        enc_pass    = new_md5_obj.hexdigest()
        user       = models.FarmerAccount.objects.filter(mobile = mobile, password = enc_pass, status = True)
        if user:
            request.session['name'] = user[0].name
            request.session['mobile'] = user[0].mobile
            request.session['userid'] = user[0].id
            return redirect("/my/dashboard/")
        else:
            messages.error(request,"Faild! Try again.")
            return redirect('/farmer/login/')

    return render(request,'service/login.html')

def logout(request):
    request.session['userid'] = False
    return redirect('/farmer/login/')

def dashboard(request):
    if not request.session['userid']:
        return redirect('/farmer/login/')
    
    product = models.CustomarOrderList.objects.filter( farmer_id = request.session['userid']).order_by("customer_name")
    context = {
        'product': product,
    }
    return render(request,'service/farmer_panel/dashboard.html', context)

def seeling_request(request):
    if not request.session['userid']:
        return redirect('/farmer/login/')
    
    pending_request = models.CustomarOrderList.objects.filter( farmer_id = request.session['userid'], status = False).order_by("customer_name")
    context = {
        'pending_request': pending_request,
    }
    return render(request,'service/farmer_panel/pending_list.html', context)

def profile(request):
    if not request.session['userid']:
        return redirect('/farmer/login/')
    context={
        'user_pro': models.FarmerAccount.objects.filter(id = request.session['userid']).first(),
    }
    return render(request,'service/farmer_panel/profile.html',context)

def change_password(request):
    if not request.session['userid']:
        return redirect('/farmer/login/')

    if request.method == "POST":
        current_pass = request.POST['current_pass']
        new_pass     = request.POST['new_pass']
        chk_user     = models.FarmerAccount.objects.filter(id = request.session['userid'], password= current_pass)
        if not chk_user:
            models.FarmerAccount.objects.filter(id = request.session['userid']).update(password = new_pass)
            messages.success(request,'Your password has been changed.')
        else:
            messages.warning(request,'Invalid current Password')
            
    return render(request,'service/farmer_panel/change_password.html')

def edit_profile(request, id):
    if not request.session['userid']:
        return redirect('/farmer/login/')

    context={
        'edit_user': models.FarmerAccount.objects.filter(id = id),
    }
    if request.method=="POST":
        name        = request.POST['name']
        models.FarmerAccount.objects.filter(id=id).update(name = name)
        request.session['name'] = name
        messages.success(request,'Successfully updated')
        return redirect('/my/profile')

    return render(request,'service/farmer_panel/edit_profile.html',context)

def cart(request):
    product_list = models.Product.objects.filter(status = True).order_by('id').reverse()
    qt_total = 0
    for d in models.AddToCart.objects.filter(ip_address__contains = get_client_ip(request)):
        qt_total += d.total_price
    count = models.AddToCart.objects.filter(ip_address__contains = data_tags.user_ip).count()
    context = {
        'product_list': product_list,
        'cart_products': models.AddToCart.objects.filter(ip_address__contains = get_client_ip(request)),
        'qt_total': qt_total,
        'sub_total': qt_total + 50,
        'count': count,
    }
    return render(request, 'sports/cart.html', context )

def add_to_cart(request, id):
    product     = models.Product.objects.get(id = id)
    cart = models.AddToCart.objects.filter(product_name_id = id, ip_address__contains = get_client_ip(request))
    if cart:
        models.AddToCart.objects.filter(id = cart[0].id).update(quantity = F('quantity') + 1 , total_price = F('total_price') + cart[0].qt_price)
    else:    
        models.AddToCart.objects.create(product_name_id = id, qt_price = product.product_price, total_price = product.product_price, ip_address = get_client_ip(request))

    return redirect("/buying/product/")   

def delete_to_cart(request, id):
    models.AddToCart.objects.filter(id = id).delete()
    return redirect("/buying/product/")   

def order_now(request):
    qt_total = 0
    for data in models.AddToCart.objects.filter(ip_address__contains = get_client_ip(request)):
        qt_total += data.total_price

    if request.is_ajax():
        models.CustomarOrderList.objects.create(
            farmer_id = request.GET.get('farmer'), customer_name = request.GET.get('customer_name'), product_name_id = int(request.GET.get('product_name')), 
            price = request.GET.get('price'), quantity = request.GET.get('quantity'), payment_type = request.GET.get('payment_type'),
            payment_number = request.GET.get('payment_number'), payment_txt_id = request.GET.get('payment_txt_id'),address = request.GET.get('address'),
            ip_address = get_client_ip(request)
        )
        carts = models.AddToCart.objects.filter(ip_address__contains = get_client_ip(request))
        carts.delete()
        models.Product.objects.filter(id = request.GET.get('product_name')).update( total_sale = F('total_sale') + 1, quantity = F('quantity') - request.GET.get('quantity') )
        return JsonResponse("Order Completed", safe = False)
   
    context = {
        'cart_list' : models.AddToCart.objects.filter(ip_address__contains = get_client_ip(request)),
        'qt_total'  : qt_total,
    }
    return render(request, 'service/order_now.html', context)

@login_required
def product_approve(request,id):
    try:
        product_check = models.Product.objects.filter(id=id,status = False)
        if product_check:
            models.Product.objects.filter(id = id).update(approve_date = datetime.datetime.strftime(datetime.datetime.now().date(),"%Y-%m-%d"), status = True)
            return redirect('/admin/service/product/')
        else:
            messages.warning(request,'This product already approved.')
            return redirect('/admin/service/product/')

    except ValueError:
        return redirect('/admin')

@login_required
def mail_custom(request, id):
    try:
        problem_check = models.CustomerProblem.objects.filter(id=id, slove = False).first()
        # Send Email
        if problem_check:
            name = problem_check.name
            subject = 'Problem Solve.'
            message = f'Hi {name}, Your problem has been solved.'
            email_from = settings.EMAIL_HOST_USER 
            try:
                send_mail(subject, message, email_from, [problem_check.email]) 
                models.CustomerProblem.objects.filter(id = id).update(slove = True)

            except BadHeaderError:
                return HttpResponse('Invalid header found.')

            return redirect('/admin/service/customerproblem/')
        else:
            messages.warning(request,'Mail already sent.')
            return redirect('/admin/service/customerproblem/')

    except ValueError:
        return redirect('/admin')
        

@login_required
def agri_experience_approve(request, id):
    try:
        check = models.Contact.objects.filter(id = id,status = False)
        if check:
            models.Contact.objects.filter(id = id).update( status = True)
            return redirect('/admin/service/contact/')
        else:
            messages.warning(request,'Already approved.')
            return redirect('/admin//service/contact/')

    except ValueError:
        return redirect('/admin')

def product_delivery(request,id):
    if not request.session['userid']:
        return redirect('/farmer/login/')

    try:
        product_check = models.CustomarOrderList.objects.filter(farmer_id = request.session['userid'], id=id,status = False)
        if product_check:
            models.CustomarOrderList.objects.filter(id = id).update(delivery_date = datetime.datetime.strftime(datetime.datetime.now().date(),"%Y-%m-%d"), status = True)
            messages.success(request,'Delivered.')
            return redirect('/seeling/request/')
            
        else:
            messages.warning(request,'This product already Delivered.')
            return redirect('/seeling/request/')

    except ValueError:
        return redirect('/')

def data_search(request):
    if request.is_ajax():
        src_data = request.GET['src_data']  
        
    if len(src_data) > 0:
        query_obj = models.QuickSolve.objects.values('question').filter(question__istartswith = src_data)
        
        if query_obj :
            print("query_obj",  query_obj)
            return JsonResponse(list(query_obj), safe = False, content_type='application/json; charset=utf8')

        return HttpResponse("", content_type ="application/json")

    return HttpResponse("", content_type ="application/json")
    
