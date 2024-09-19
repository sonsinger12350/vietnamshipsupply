<!-- BEGIN: main -->
<link href="{NV_BASE_SITEURL}themes/{TEMPALTE}/css/slider/owl.carousel.min.css" type="text/css" media="all" rel="stylesheet" />
<link href="{NV_BASE_SITEURL}themes/{TEMPALTE}/css/slider/owl.theme.default.min.css" type="text/css" media="all" rel="stylesheet" />
<script src="{NV_BASE_SITEURL}themes/{TEMPALTE}/js/slider/owl.carousel.js"></script>
<div class="list_product owl-theme owl-carousel">
    <!-- BEGIN: loop -->
    <div class="list_product-item list_product-slide text-center">
        <div class="list_product-img ratio_4-3 hover_scale_img">
            <a href="{ROW.link_pro}" title="{ROW.title}"><img data-original="{ROW.homeimgthumb}" alt="{ROW.title}" class="lazy-img" ></a>
        </div>
        <div class="list_product-title">
            <h3>
                <a href="{ROW.link_pro}" title="{ROW.title}">{ROW.title}</a>
            </h3>
        </div>
        <div class="list_product-price">
            <!-- BEGIN: price -->
            <p class="price">
                <!-- BEGIN: discounts -->
                <span class="money">{PRICE.sale_format} {PRICE.unit}</span> <span class="discounts_money">{PRICE.price_format} {PRICE.unit}</span>
                <!-- END: discounts -->
                <!-- BEGIN: no_discounts -->
                <span class="money">{PRICE.price_format} {PRICE.unit}</span>
                <!-- END: no_discounts -->
            </p>
            <!-- END: price -->
            <!-- BEGIN: contact -->
            <p class="price">
                {LANG.detail_pro_price}: <span class="money">{LANG.price_contact}</span>
            </p>
            <!-- END: contact -->
        </div>
            <!-- BEGIN: adminlink -->
            <p>{ADMINLINK}</p>
            <!-- END: adminlink -->
        <div class="list_product-btn btn_cus -bg_yellow -black">
            <a href="{ROW.link_pro}" title="{ROW.title}">Xem thêm</a>
        </div>
    </div>
    <!-- END: loop -->
</div>
    
<!-- BEGIN: page -->
<div class="text-center">{PAGE}</div>
<!-- END: page -->
<script type="text/javascript" defer>
    var list_pro = $('.list_product');
    list_pro.owlCarousel({
        items: 4,
        nav: false,
        dots: false,
        loop: true,
        margin:1,
        lazyLoad: true,
        autoplay: true,
        animateOut: 'fadeOut',
        autoHeight: true,
        navText: ['<i class="icofont-thin-left"></i>', '<i class="icofont-thin-right"></i>'],
        responsive: {
            0: {
                items: 2,
				nav: false,
				margin: 10,
            },
            600: {
                items: 2,
				nav: false,
				margin: 10,
            },
            1000: {
                items: 4
            }
        }
    });
</script>
<!-- END: main -->