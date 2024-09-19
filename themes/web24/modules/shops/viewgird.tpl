<!-- BEGIN: main -->
<div class="viewgrid list_product-list">
    <div class="row mg15">
        <!-- BEGIN: loop -->
        <div class="col-xs-12 col-sm-8 col-md-{NUM}">
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
					<div class="list_product-btn">
						<a href="{ROW.link_pro}" title="{ROW.title}">{GLANG.viewmore}</a>
					</div>
					<!-- BEGIN: adminlink -->
					<p>{ADMINLINK}</p>
					<!-- END: adminlink -->
                </div>
            </div>
        </div>
        <!-- END: loop -->
    </div>
    <!-- BEGIN: page -->
    <div class="text-center">{PAGE}</div>
    <!-- END: page -->
</div>
<!-- END: main -->