<!-- BEGIN: main -->
<div class="block_hotdeal-list owl-carousel owl-theme">
	<!-- BEGIN: loop -->
	<div class="block_hotdeal-item hover_scale_img">
		<div class="block_hotdeal-img ratio_4-3">
			<a href="{link}" title="{title}"><img class="owl-lazy" data-src="{src_img}" alt="{title}"/></a>
		</div>	
		<div class="block_hotdeal-content">
			<div class="block_hotdeal-title">
				<a href="{link}" title="{title}">{title}</a>
			</div>
			<div class="block_hotdeal-price">
				<!-- BEGIN: price -->
					<!-- BEGIN: discounts -->
					<span class="money">{PRICE.sale_format} {PRICE.unit}</span>
					<span class="discounts_money">{PRICE.price_format} {PRICE.unit}</span>

					<div class="sale-flash hidden">
						{PRICE.discount_percent}{PRICE.discount_unit}
					</div>
					<!-- END: discounts -->

					<!-- BEGIN: no_discounts -->
					<span class="money">{PRICE.price_format} {PRICE.unit}</span>
					<!-- END: no_discounts -->
				<!-- END: price -->
				<!-- BEGIN: contact -->
				<span class="money">{LANG.price_contact}</span>
				<!-- END: contact -->
			</div>
			<div class="block_hotdeal-date">
				<i class="icofont-sand-clock"></i><span class="countdown" data-end_time="{end_time}"></span>
			</div>
			<div class="block_hotdeal-remain">
				{LANG.remain} {remain} {LANG.title_products}
			</div>
			
			<div class="add_product hidden">
				<a href="javascript:void(0)" id="{id}" title="{title}" onclick="cartorder(this, 0, '{link}','san-pham')">{LANG.add_cart}</a>
			</div>
		</div>
	</div>
	<!-- END: loop -->
</div>
<script type="text/javascript">
$(document).ready(function() {
    var owl = $('.block_hotdeal-list');
    owl.owlCarousel({
        items: 5,
        nav: true,
        dots: false,
        loop: false,
        lazyLoad: true,
        autoplay: true,
		margin:10,
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
                items: 5
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