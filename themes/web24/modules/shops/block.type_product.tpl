<!-- BEGIN: main -->
<div class="content_type_product">
	<!-- BEGIN: loopcatid -->
	<div class="item_cat_type_product row">
		<!-- BEGIN: loop -->
		<div class="col-xs-12 col-sm-12 col-md-8">
			<div class="type_product_items ">
				<div class="type_product_img">				
					<a href="{link}" title="{title}"><img class="lazy-img" data-src="{src_img}" alt="{title}"/></a>
					<div class="type_product_btn btn-radius-more">
						<a href="javascript:void(0)" id="{id}" title="{title}" onclick="cartorder(this, 0, '{link}','{module_name}')">{LANG.add_cart}</a>
					</div>
				</div>				
				<div class="type_product_title">
					<a href="{link}" title="{title}">{title}</a>
				</div>
				
				<div class="type_product_price">
					<!-- BEGIN: price -->
					<span class="price">
						<!-- BEGIN: discounts -->
						<span class="money show">{PRICE.sale_format} đ{PRICE.unit}</span>
						<span class="discounts_money show">{PRICE.price_format} đ{PRICE.unit}</span>

						<div class="sale-flash">
							{PRICE.discount_percent}{PRICE.discount_unit}
						</div>

						<!-- END: discounts -->

						<!-- BEGIN: no_discounts -->
						<span class="money show">{PRICE.price_format} đ{PRICE.unit}</span>
						<!-- END: no_discounts -->
					</span>
					<!-- END: price -->
					<!-- BEGIN: contact -->
					<span class="money show">{LANG.price_contact}</span>
					<!-- END: contact -->
				</div>
			</div>
		</div>
		<!-- END: loop -->
	</div>
	<!-- END: loopcatid -->
</div>

<script>
	
</script>

<!-- END: main -->