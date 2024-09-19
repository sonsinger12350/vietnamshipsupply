<!-- BEGIN: main -->
<div class="row">
	<!-- BEGIN: loop -->
	<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
		<div class="item_group_product">
			<a href="{link}" title="{title}"><img src="{src_img}" alt="{title}" width="{WIDTH}"/></a>

			<div class="title_group_product">
				<a href="{link}" title="{title}">{title}</a>

				<!-- BEGIN: price -->
				<span class="price">
					<!-- BEGIN: discounts -->
					<span class="money show">Giá đã giảm: {PRICE.sale_format} {PRICE.unit}</span>
					<span class="discounts_money show">Giá gốc: {PRICE.price_format} {PRICE.unit}</span>

					<div class="sale-flash">
						{PRICE.discount_percent}{PRICE.discount_unit}
					</div>
					<!-- END: discounts -->

					<!-- BEGIN: no_discounts -->
					<span class="money show">Giá :{PRICE.price_format} {PRICE.unit}</span>
					<!-- END: no_discounts -->
				</span>
				<!-- END: price -->
				<!-- BEGIN: contact -->
				<span class="money show">Giá: {LANG.price_contact}</span>
				<!-- END: contact -->

			</div>
			
			<div class="add_product">
				<a href="javascript:void(0)" id="{id}" title="{title}" onclick="cartorder(this, 0, '{link}','san-pham')">{LANG.add_cart}</a>
			</div>
		</div>

	</div>
	<!-- END: loop -->
</div>
<!-- END: main -->