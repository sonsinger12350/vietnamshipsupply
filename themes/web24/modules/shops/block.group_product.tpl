<!-- BEGIN: main -->
<div class="group_product-list owl-carousel owl-theme">
		<!-- BEGIN: loop -->
			<div class="group_product-item hover_scale_img">
				<div class="group_product-img ratio_4-3">
					<a href="{link}" title="{title}"><img class="owl-lazy" data-src="{src_img}" alt="{title}"/></a>
				</div>
				<div class="group_product-content">
					<div class="group_product-title">
						<a href="{link}" title="{title}">{title}</a>
					</div>
					<div class="group_product-price">
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
					<!-- BEGIN: rating -->
					<div class="group_product-rating">
						<!-- BEGIN: star -->
						<div class="star-icon">&nbsp;</div>
						<!-- END: star -->
						<span class="rate_text">({count_rate} {LANG.rate})</span>
					</div>
					<!-- END: rating -->
					<div class="add_product hidden">
						<a href="javascript:void(0)" id="{id}" title="{title}" onclick="cartorder(this, 0, '{link}','san-pham')">{LANG.add_cart}</a>
					</div>
				</div>
			</div>
		<!-- END: loop -->
</div>
<script type="text/javascript">
$(document).ready(function() {
    var owl = $('.group_product-list');
    owl.owlCarousel({
        items: 5,
        nav: true,
        dots: false,
        loop: false,
		margin: 10,
        lazyLoad: true,
        autoplay: true,
        animateOut: 'fadeOut',
        autoHeight: true,
        navText: ['<i class="icofont-block-left"></i>', '<i class="icofont-block-right"></i>'],
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
})
</script>
<!-- END: main -->