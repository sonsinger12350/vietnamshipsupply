<!-- BEGIN: main -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>print</title>
		<meta http-equiv="Content-Language" content="vi" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	</head>
	<body>
		{CONTENT}
	</body>
</html>
<!-- END: main -->

<!-- BEGIN: data_product -->
<table class="rows" style="width:100%;border:1px solid #F5F5F5;">
	<tr class="bgtop" style="background:#CCCCCC;line-height:22px;">
		<td align="center" width="30px" style="padding:5px"> {LANG.order_no_products} </td>
		<td class="prd" style="padding:5px"> {LANG.cart_products} </td>
		<!-- BEGIN: price1 -->
		<td class="price" align="right" style="padding:5px"> {LANG.cart_price} ({unit}) </td>
		<!-- END: price1 -->
		<td class="amount" align="center" width="60px" style="padding:5px"> {LANG.cart_numbers} </td>
		<td class="unit" width="40" style="padding:5px"> {LANG.cart_unit} </td>
	</tr>
	<tbody>
	<!-- BEGIN: loop -->
	<tr {bg}>
		<td align="center" style="padding:5px"> {pro_no} </td>
		<td class="prd" style="padding:5px"> 
			{product_name} 
			<!-- BEGIN: display_group -->
						<p>
							<!-- BEGIN: group -->
							<div class="show"><span class="text-muted">{group.parent_title}: <strong>{group.title}</strong></span></div>
							<!-- END: group -->
						</p>
			<!-- END: display_group -->
		</td>
		<!-- BEGIN: price2 -->
		<td class="money" align="right" style="padding:5px">
			<strong>{product_price}</strong>
			<!-- BEGIN: setting_price -->
						<div class="setting_price_cart">({setting_price.title} {dau} {setting_price.price})</div>
						<!-- END: setting_price -->
		</td>
		<!-- END: price2 -->
		<td class="amount" align="center" style="padding:5px"> {product_number} </td>
		<td class="unit" style="padding:5px"> {product_unit} </td>
	</tr>
	<!-- END: loop -->
	</tbody>
</table>

<!-- BEGIN: data_shipping -->
    <div style="margin-top:20px;" class="table-responsive">
        <table style="width:100%;border:1px solid #F5F5F5;" class="table table-striped table-bordered table-hover">
            <caption>{LANG.shipping_info}</caption>
            <thead>
                <tr style="background:#CCCCCC;line-height:22px;">
                    <th style="padding:5px">{LANG.shipping_name}</th>
                    <th style="padding:5px">{LANG.order_address}</th>
                    <th style="padding:5px">{LANG.carrier}</th>
                    <th style="padding:5px">{LANG.weights}</th>
                    <th style="padding:5px">{LANG.carrier_price}</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td align="center">{DATA_SHIPPING.ship_name} - {DATA_SHIPPING.ship_phone}</td>
                    <td align="center">
                        {DATA_SHIPPING.ship_location_title}
                        <span class="help-block">{DATA_SHIPPING.ship_address_extend}</span>
                    </td>
                    <td align="center">{DATA_SHIPPING.ship_shops_title}</td>
                    <td align="center">{DATA_SHIPPING.weight}{DATA_SHIPPING.weight_unit}</td>
                    <td align="center">{DATA_SHIPPING.ship_price} {DATA_SHIPPING.ship_price_unit}</td>
                </tr>
            </tbody>
        </table>
    </div>
    <!-- END: data_shipping -->
	
<table class="rows" style="margin-top:2px;width:100%;border:1px solid #F5F5F5;">
	<tr>
		<!-- BEGIN: order_note -->
		<td valign="top" style="padding:5px"><span style="font-style:italic;"> {LANG.cart_note} : {DATA.order_note} </span></td>
		<!-- END: order_note -->
		<!-- BEGIN: price3 -->
		<td align="right" valign="top" style="padding:5px">
			<!-- BEGIN: total_coupons -->
			<p>{LANG.coupon}: <strong>{coupons}</strong> {unit_coupons}</p>
			<div class="clear"></div>
			<!-- END: total_coupons -->
			
		{LANG.cart_total_print}: <strong id="total">{order_total}</strong> {unit} </td>
		<!-- END: price3 -->
	</tr>
</table>
<!-- END: data_product -->