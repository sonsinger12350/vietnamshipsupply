<!-- BEGIN: main -->
<div>
	<!-- BEGIN: enable -->
	<a class="block_cart-link" title="{LANG.cart_check_out}" href="{LINK_VIEW}" id="">
		<i class="icofont-ui-cart"></i>
		<span class="block_cart-num">{NUM}</span>
	</a>
	
	<!-- BEGIN: pprice -->
	<p class="hidden">
		<strong>{LANG.cart_title} :</strong>
		<span></span>
		{LANG.cart_product_title}
	</p>
	<p>
		<strong>{LANG.cart_product_total} : </strong>
		<span class="money">{TOTAL}</span> {MONEY_UNIT}
	</p>
	<p class="clearfix">
		<a title="{LANG.cart_check_out}" href="{LINK_VIEW}" id="submit_send">{LANG.cart_check_out}</a>
	</p>
	<!-- END: pprice -->
	<!-- END: enable -->

	<!-- BEGIN: point -->
	<p class="clearfix">
		<a title="{LANG.point_cart_text}" href="{POINT_URL}">{LANG.point_cart_text}</a> ({POINT})
	</p>
	<!-- END: point -->

	<!-- BEGIN: wishlist -->
	<p class="clearfix">
		<a title="{LANG.wishlist_product}" href="{WISHLIST}">{LANG.wishlist_product}</a> (<span id="wishlist_num_id">{NUM_ID}</span>)
	</p>
	<!-- END: wishlist -->

	<!--  BEGIN: history -->
	<p>
		<a href="{LINK_HIS}"><span>{LANG.history_title}</span></a>
	</p>
	<!--  END: history -->

	<!-- BEGIN: disable -->
	<p>
		{LANG.active_order_dis}
	</p>
	<!-- END: disable -->
</div>
<!-- END: main -->