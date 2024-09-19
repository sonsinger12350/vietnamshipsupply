<!-- BEGIN: main -->
<link href="{NV_BASE_SITEURL}themes/{TEMPLATE}/css/slider/owl.carousel.min.css" type="text/css" media="all" rel="stylesheet" />
<link href="{NV_BASE_SITEURL}themes/{TEMPLATE}/css/slider/owl.theme.default.min.css" type="text/css" media="all" rel="stylesheet" />
<script src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/slider/owl.carousel.js"></script>
<div class="owl-carousel owl-theme slider">
    <!-- BEGIN: loop -->
    <div class="slider_item">
        <a href="{DATA.link}" title="{DATA.title}">
            <img class="owl-lazyy" src="{DATA.image}" alt="{DATA.title}" width="100%" />
        </a>
        <div class="slider_item-layout">
        </div>
        <div class="slider_item-content font-urwdin">
			<div class="slider_item-title hidden">
				{DATA.title}
            </div>
            <!-- BEGIN: des -->
            <div class="slider_item-title">
                <span class="slider_item-des-num"></span> {des}
            </div>
            <!-- END: des -->
            <!-- BEGIN: des2 -->
            <div class="slider_item-des">
                <span class="slider_item-des-num"></span> {des2}
            </div>
            <!-- END: des2 -->
            <!-- BEGIN: des3 -->
            <div class="slider_item-des">
                <span class="slider_item-des-num"></span> {des3}
            </div>
            <!-- END: des3 -->
            <!-- BEGIN: des4 -->
            <div class="slider_item-des">
                <span class="slider_item-des-num"></span> {des4}
            </div>
            <!-- END: des4 -->
            <!-- BEGIN: des5 -->
            <div class="slider_item-des">
                <span class="slider_item-des-num"></span> {des5}
            </div>
            <!-- END: des5 -->
            <!-- BEGIN: hidden -->
            <div class="slider_item-btn">
                <a class="btn_cus -white" href="{DATA.link}" title="{DATA.title}">Xem thêm</a>
            </div>
            <!-- END: hidden -->
        </div>
    </div>
    <!-- END: loop -->
</div>
<script type="text/javascript">
$(document).ready(function() {
    var owl = $('.slider');
    owl.owlCarousel({
        items: 1,
        nav: true,
        dots: false,
        loop: true,
		margin: 10,
        lazyLoad: false,
        autoplay: true,
        animateOut: 'fadeOut',
        autoHeight: true,
        navText: ['<i class="icofont-block-left"></i>', '<i class="icofont-block-right"></i>'],
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 1
            },
            1000: {
                items: 1
            }
        }
    });
})
</script>
<!-- END: main -->