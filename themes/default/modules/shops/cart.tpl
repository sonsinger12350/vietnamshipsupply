<!-- BEGIN: main -->
<div class="step_bar alert alert-success clearfix hidden">
	<a class="step step_current" title="{LANG.cart_check_cart}" href="#"><span>1</span>{LANG.cart_check_cart}</a>
	<a class="step step_disable" title="{LANG.cart_order}" href="{link_order_all}" id="cart_next"><span>2</span>{LANG.cart_order}</a>
</div>
<div class="cart_title">
	Giỏ hàng của bạn
</div>
<!-- BEGIN: errortitle -->
<ul class="alert alert-danger text-center">
	<!-- BEGIN: errorloop -->
	<li class="clearfix">
		{ERROR_NUMBER_PRODUCT}
	</li>
	<!-- END: errorloop -->
</ul>
<!-- END: errortitle -->

<!-- BEGIN: point_note -->
<div class="alert alert-info">
	{point_note}
</div>
<!-- END: point_note -->

<!-- BEGIN: edit_order -->
<div class="alert alert-warning">
{EDIT_ORDER}
</div>
<!-- END: edit_order -->

<form action="{LINK_CART}" method="post" id="fpro">
	<input type="hidden" value="1" name="save"/>
	<!-- BEGIN: price6 -->
	<span class="text-right help-block hidden"><strong>{LANG.product_unit_price}:</strong> {unit_config}</span>
	<!-- END: price6 -->
	<div class="table-responsive table_cart">
		<table class="table-cart table">
			<thead>
				<tr>
					<th class="hidden">{LANG.order_no_products}</th>
					<th class="table-title">{LANG.cart_products}</th>

					<!-- BEGIN: main_group -->
					<th>{MAIN_GROUP.title}</th>
					<!-- END: main_group -->

					<!-- BEGIN: price1 -->
					<th class="text-right">
						{LANG.cart_price}
						<span class="info_icon hidden" data-toggle="tooltip" title="" data-original-title="{LANG.cart_price_note}">&nbsp;</span>
					</th>
					<!-- END: price1 -->
					<th width="160px">{LANG.cart_numbers}</th>
					<th class="hidden">{LANG.cart_unit}</th>
					<!-- BEGIN: price4 -->
					<th class="text-right" width="140px">{LANG.cart_price_total}</th>
					<!-- END: price4 -->
					<th>&nbsp;</th>
				</tr>
			</thead>
			<tbody>
				<!-- BEGIN: rows -->
				<tr id="{id}_{list_group_id}">
					<td class="hidden" align="center">{stt}</td>
					<td class="table-title">
						<div class="cart_img">
							<a href="{link_pro}">
								<img src="{img_pro}" title="{title_pro}"> 
							</a>
						</div>
						<a title="{title_pro}" href="{link_pro}">{title_pro}</a>
						<!-- BEGIN: display_group -->
						<p>
							<!-- BEGIN: group -->
							<span class="show"><span class="text-muted">{group.parent_title}: <strong>{group.title}</strong></span></span>
							<!-- END: group -->
						</p>
						<!-- END: display_group -->
					</td>

					<!-- BEGIN: sub_group -->
	    			<td>
	    				<!-- BEGIN: loop -->
	    				<a href="{SUB_GROUP.link}" title="{SUB_GROUP.title}">{SUB_GROUP.title}</a>
	    				<!-- END: loop -->
	    			</td>
	    			<!-- END: sub_group -->

					<!-- BEGIN: price2 -->
					<td class="money table-money text-right">
						<strong>{PRICE.sale_format} {unit_config}</strong>
						<!-- BEGIN: setting_price -->
						<div class="setting_price_cart">({setting_price.title} {dau} {setting_price.price})</div>
						<!-- END: setting_price -->
					</td>
					<!-- END: price2 -->
					<td align="center">
						<div class="row">
							<div class="number_order">
								<div class="col-md-6 col-xs-6 muiten-left">
									<a class="iconminus decrease{id}_{id_setting_price}" data-idpro={id} data-setting="{id_setting_price}"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
								</div>
								<div class="col-md-12 col-xs-12 so">
									<input data-idpro={id} data-setting="{id_setting_price}" type="text" name="listproid[{id}_{list_group}_{id_setting_price}]" value="{pro_num}" min="1" id="pnum" class="form-control pnum htop{id}_{id_setting_price}">
								</div>
								<div class="col-md-6 col-xs-6 muiten-right">
									<a class="iconplus increase{id}_{id_setting_price}" data-idpro="{id}" data-setting="{id_setting_price}"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<script>
							$(document).ready( function() {
								var elm = $('.htop{id}_{id_setting_price}');
								function spin( vl ) {
									if ((parseInt( elm.val(), 10 )==1) && vl<0){
										elm.val(1);
									}
									else{
										elm.val( parseInt( elm.val(), 10 ) + vl );
									}
								}
								$('.increase{id}_{id_setting_price}').click( function() { 
									spin( 1 );  
								});
								$('.decrease{id}_{id_setting_price}').click( function() { 
									spin( -1 ); 
								});

							});
						</script>
						<!-- <input type="number" size="1" value="{pro_num}" name="listproid[{id}_{list_group}_{id_setting_price}]" id="{id}" class="form-control"/> -->
					</td>
					<td class="hidden">{product_unit}</td>
					<!-- BEGIN: price5 -->
					<td id="sale_format_{id}_{id_setting_price}" class="money table-money text-right">{PRICE_TOTAL.sale_format} {unit_config}</td>
					<!-- END: price5 -->
					<td align="center"><a class="remove_cart" title="{LANG.cart_remove_pro}" href="{link_remove}"><em style="color: red" class="fa fa-times-circle">&nbsp;</em></a></td>
				</tr>
				<!-- END: rows -->
			</tbody>
		</table>
	</div>

	<!-- BEGIN: coupons_code -->
	<div class="panel panel-primary">
		<div class="panel-heading">
			{LANG.coupons}
		</div>
		<div class="panel-body">
			<div class="input-group">
				<input type="text" name="coupons_code" value="{C_CODE}" id="coupons_code" placeholder="{LANG.coupons_fill}" class="form-control">
				<span class="input-group-btn">
					<input type="button" value="{LANG.coupons_check}" id="coupons_check" class="btn btn-primary">
				</span>
			</div>
			<div id="coupons_info">
				&nbsp;
			</div>
		</div>
	</div>
	<!-- END: coupons_code -->

	<div>
		<!-- BEGIN: price3 -->
		<div class="clearfix">
			<div class="pull-right">
				{LANG.cart_total}: <span id="total"></span> {unit_config}
			</div>
			<div class="clear"></div>
		</div>
		<!-- END: price3 -->

		<div class="row">
			<div class="col-xs-24">
				<div class="text-right">
					<a title="{LANG.cart_back} {LANG.cart_page_product}" href="{LINK_PRODUCTS}"><em class="fa fa-arrow-circle-left">&nbsp;</em>{LANG.cart_back} <span>{LANG.cart_page_product}</span></a>
				</div>
				<div class="text-right">
					<input type="submit" name="cart_order" title="{LANG.cart_order}" value="{LANG.cart_order}" class="btn btn-primary btn-sm">
				</div>
			</div>
		</div>
	</div>
</form>
<script type="text/javascript" data-show="after">
	$('.iconminus, .iconplus').click(function(){
		update($(this).data('idpro'), $(this).data('setting'));
	});
	$('.pnum').change(function(){
		update($(this).data('idpro'), $(this).data('setting'));
	});
	function update(proidupdate, settingupdate){
		setTimeout(function(){
			$.ajax({
				type : "POST",
				url: '{LINK_CART_UPDATE}',
				dataType: 'json',
				data : "proidupdate="+proidupdate+"&settingupdate="+settingupdate+"&ajaxinsdecs=1&" + $('form').serialize(),
				success : function(data) {
					$('#sale_format_' + proidupdate + "_" + settingupdate).text(data['sale_format'] + " {unit_config}");
					$('#coupons_uses').prop("checked", false);
					$("#total").load(urload + '&t=2');
				}
			});
		},100);
	}

	$(document).ready(function(){
		$('[data-toggle="tooltip"]').tooltip();
	});

	var urload = nv_base_siteurl + 'index.php?' + nv_lang_variable + '=' + nv_lang_data + '&' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=loadcart';
	$("#total").load(urload + '&t=2');

	$(function() {
		$("a.remove_cart").click(function() {
			var href = $(this).attr("href");
			$.ajax({
				type : "GET",
				url : href,
				data : '',
				success : function(data) {
					if (data != '') {
						$("#" + data).html('');
						$("#cart_" + nv_module_name).load(urload);
						$("#total").load(urload + '&t=2');
					}
				}
			});
			return false;
		});
	});
</script>

<!-- BEGIN: coupons_javascript -->
<script type="text/javascript" data-show="after">
	var coupons_code = $('input[name="coupons_code"]').val();
	if (coupons_code != '') {
		$.post(script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=cart&nocache=' + new Date().getTime(), 'coupons_check=1&coupons_code=' + coupons_code, function(res) {
			$('#coupons_info').html(res);
		});
	}

	$(function() {
		$("#coupons_check").click(function() {
			var coupons_code = $('input[name="coupons_code"]').val();
			nv_settimeout_disable('coupons_code', 1000);
			nv_settimeout_disable('coupons_check', 1000);
			$.post(script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=cart&nocache=' + new Date().getTime(), 'coupons_check=1&coupons_code=' + coupons_code, function(res) {
				$('#coupons_info').html(res);
			});
			return false;
		});
	});
</script>
<!-- END: coupons_javascript -->

<!-- END: main -->