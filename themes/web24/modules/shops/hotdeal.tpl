<!-- BEGIN: main -->
<link href="{NV_BASE_SITEURL}themes/{TEMPLATE}/css/slider/owl.carousel.min.css" type="text/css" media="all" rel="stylesheet" />
<link href="{NV_BASE_SITEURL}themes/{TEMPLATE}/css/slider/owl.theme.default.min.css" type="text/css" media="all" rel="stylesheet" />
<script src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/slider/owl.carousel.js"></script>



<div class="hotdeal">
	<div class="hotdeal-title">
		{LANG.hotdeal_now}
	</div>
	<div class="hotdeal-now owl-carousel owl-theme">
		<!-- BEGIN: new -->
		<div class="list_product-item hover_scale_img">
			<div class="list_product-img ratio_4-3 ">
				<a href="{ROW.link_pro}" title="{ROW.title}"><img data-original="{ROW.homeimgthumb}" alt="{ROW.title}" class="lazy-img" ></a>
			</div>
			<div class="list_product-content">
				<div class="list_product-title">
					<h3>
						<a href="{ROW.link_pro}" title="{ROW.title}">{ROW.title}</a>
					</h3>
				</div>
				<div class="list_product-price">
					<!-- BEGIN: price -->
						<!-- BEGIN: discounts -->
						<span class="money">{PRICE.sale_format} {PRICE.unit}</span> <span class="discounts_money">{PRICE.price_format} {PRICE.unit}</span>
						<!-- END: discounts -->
						<!-- BEGIN: no_discounts -->
						<span class="money">{PRICE.price_format} {PRICE.unit}</span>
						<!-- END: no_discounts -->
					<!-- END: price -->
					<!-- BEGIN: contact -->
					<span class="money">{LANG.price_contact}</span>
					<!-- END: contact -->
				</div>
				<!-- BEGIN: rating -->
				<div class="list_product-rating">
					<!-- BEGIN: star -->
					<div class="star-icon">&nbsp;</div>
					<!-- END: star -->
					<span class="rate_text">({ROW.count_rate} {LANG.rate})</span>
				</div>
				<!-- END: rating -->
				<div class="list_product-date">
					<i class="icofont-sand-clock"></i><span class="countdown" data-end_time="{ROW.end_time}"></span>
				</div>
				<div class="list_product-remain">
					{LANG.remain} {ROW.product_number} {LANG.title_products} 
				</div>
				<div class="list_product-btn">
					<a href="{ROW.link_pro}" title="{ROW.title}">{GLANG.viewmore}</a>
				</div>
				<!-- BEGIN: adminlink -->
				<p>{ADMINLINK}</p>
				<!-- END: adminlink -->
			</div>
		</div>
		<!-- END: new -->
	</div>
</div>
<div class="hotdeal">
	<div class="hotdeal-title">
		{LANG.hotdeal_coming}
	</div>
	<div class="hotdeal-coming owl-carousel owl-theme">
		<!-- BEGIN: coming -->
		<div class="list_product-item hover_scale_img">
			<div class="list_product-img ratio_4-3 ">
				<a href="{ROW.link_pro}" title="{ROW.title}"><img data-original="{ROW.homeimgthumb}" alt="{ROW.title}" class="lazy-img" ></a>
			</div>
			<div class="list_product-content">
				<div class="list_product-title">
					<h3>
						<a href="{ROW.link_pro}" title="{ROW.title}">{ROW.title}</a>
					</h3>
				</div>
				<div class="list_product-price">
					<!-- BEGIN: price -->
						<!-- BEGIN: discounts -->
						<span class="money">{PRICE.sale_format} {PRICE.unit}</span> <span class="discounts_money">{PRICE.price_format} {PRICE.unit}</span>
						<!-- END: discounts -->
						<!-- BEGIN: no_discounts -->
						<span class="money">{PRICE.price_format} {PRICE.unit}</span>
						<!-- END: no_discounts -->
					<!-- END: price -->
					<!-- BEGIN: contact -->
					<span class="money">{LANG.price_contact}</span>
					<!-- END: contact -->
				</div>
				<!-- BEGIN: rating -->
				<div class="list_product-rating">
					<!-- BEGIN: star -->
					<div class="star-icon">&nbsp;</div>
					<!-- END: star -->
					<span class="rate_text">({ROW.count_rate} {LANG.rate})</span>
				</div>
				<!-- END: rating -->
				<div class="list_product-date">
					<i class="icofont-sand-clock"></i><span class="countdown" data-end_time="{ROW.begin_time}"></span>
				</div>
				<div class="list_product-btn">
					<a href="{ROW.link_pro}" title="{ROW.title}">{GLANG.viewmore}</a>
				</div>
				<!-- BEGIN: adminlink -->
				<p>{ADMINLINK}</p>
				<!-- END: adminlink -->
			</div>
		</div>
		<!-- END: coming -->
	</div>
</div>
	
<script type="text/javascript">
$(document).ready(function() {
    var owl = $('.hotdeal-now, .hotdeal-coming');
    owl.owlCarousel({
        items: 4,
        nav: true,
        dots: false,
        loop: false,
		margin: 20,
        lazyLoad: true,
        autoplay: true,
        animateOut: 'fadeOut',
        autoHeight: true,
        navText: ['<i class="icofont-thin-left"></i>', '<i class="icofont-thin-right"></i>'],
        responsive: {
            0: {
                items: 2
            },
            600: {
                items: 3
            },
            1000: {
                items: 4
            }
        }
    });
	
	var elemDateEnd = $('.countdown');
	setInterval(function(){
		elemDateEnd.each(function(){
			var timeNow = Date.now() / 1000;
			var timeEnd = $(this).data('end_time');
			var countDown = timeEnd - timeNow;
			
			var days = Math.floor(countDown / (60 * 60 * 24));
			var hours = Math.floor((countDown % (60 * 60 * 24)) / (60 * 60));
			var minutes = Math.floor((countDown % (60 * 60)) / (60));
			var seconds = Math.floor((countDown % (60)));
			if(seconds < 0 && minutes < 0 && hours < 0 && days < 0){
				seconds = minutes = hours = days = 0;
			}
			$(this).text( days + ' {LANG.day_text} ' + hours + ':' + minutes + ':' + seconds);
		});
	},1000);
})
</script>
<!-- END: main -->