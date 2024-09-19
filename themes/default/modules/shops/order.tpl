<!-- BEGIN: main -->
<script type="text/javascript" data-show="after" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/select2/select2.min.js"></script>
<link href="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/select2/select2.min.css" type="text/css" rel="stylesheet" />
<div class="block clearfix">
    <div class="step_bar alert alert-success clearfix hidden">
        <a class="step step_disable" title="{LANG.cart_check_cart}" href="{LINK_CART}"><span>1</span>{LANG.cart_check_cart}</a>
        <a class="step step_current" title="{LANG.cart_order}" href="#"><span>2</span>{LANG.cart_order}</a>
    </div>
    
    <!-- BEGIN: edit_order -->
    <div class="alert alert-warning">
        {EDIT_ORDER}
    </div>
    <!-- END: edit_order -->
    <form action="" method="post" name="fpost" id="fpost" class="form-horizontal">
        <div class="row">
            <div class="col-xs-24 col-sm-24 col-md-12 order_form">
            	<div class="cart_title">
					THÔNG TIN KHÁCH HÀNG
				</div>
            	<p class="alert alert-info">
			        {LANG.order_info}
			    </p>
                <input type="hidden" value="1" name="postorder">
                <div class="">
                    <div class="">
                        <div class="form-group">
                            <label class="col-sm-7 control-label">{LANG.order_name} <span class="error">(*)</span></label>
                            <div class="col-sm-17">
                            	<input name="order_name" class="form-control" value="{DATA.order_name}" />
                                <span class="error">{ERROR.order_name}</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-7 control-label">{LANG.order_email} <span class="error">(*)</span></label>
                            <div class="col-sm-17">
                            	<input type="email" name="order_email" value="{DATA.order_email}" class="form-control" />
                                <span class="error">{ERROR.order_email}</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-7 control-label">{LANG.order_phone} <span class="error">(*)</span></label>
                            <div class="col-sm-17">
                            	<input name="order_phone" class="form-control" value="{DATA.order_phone}" />
                                <span class="error">{ERROR.order_phone}</span>
                            </div>
                        </div>
                        <!-- BEGIN: order_address -->
                        <div class="form-group">
                            <label class="col-sm-7 control-label">{LANG.order_address} </label>
                            <div class="col-sm-17">
                            	<input name="order_address" class="form-control" value="{DATA.order_address}" />
                                <span class="error">{ERROR.order_address}</span>
                            </div>
                        </div>
                        <!-- END: order_address -->
                        <div class="form-group">
                            <label class="col-sm-7 control-label">Tỉnh/thành </label>
                            <div class="col-sm-17">
                                <select class="form-control tinhthanh" name="tinhthanh">
                                    <option value="0">-- Chọn tỉnh/thành --</option>
                                    <!-- BEGIN: tinh -->
                                    <option {l.selected} value="{l.provinceid}">-- {l.type} {l.title} --</option>
                                    <!-- END: tinh -->
                                </select>
                                <span class="error">{ERROR.order_address}</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-7 control-label">Quận/huyện </label>
                            <div class="col-sm-17">
                                <select class="form-control quanhuyen" name="quanhuyen">
                                    <option value="0">-- Chọn quận/huyện --</option>
                                    <!-- BEGIN: quan -->
                                    <option {l.selected} value="{l.districtid}">-- {l.type} {l.title} --</option>
                                    <!-- END: quan -->
                                </select>
                                <span class="error">{ERROR.order_address}</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-7 control-label">Phường/xã </label>
                            <div class="col-sm-17">
                                <select class="form-control xaphuong" name="xaphuong">
                                    <option value="0">-- Chọn phường/xã --</option>
                                    <!-- BEGIN: xa -->
                                    <option {l.selected} value="{l.wardid}">-- {l.type} {l.title} --</option>
                                    <!-- END: xa -->
                                </select>
                                <span class="error">{ERROR.order_address}</span>
                            </div>
                        </div>
                        <!-- BEGIN: shipping_chose -->
                        <div class="form-group">
                            <label class="col-sm-7 control-label">{LANG.oder_shipping}</label>
                            <div class="col-sm-17">
                                <!-- BEGIN: shipping_loop -->
                                <p class="form-control-static"><label><input type="radio" name="order_shipping" value="{IS_SHIPPING.key}" {IS_SHIPPING.checked} />{IS_SHIPPING.value}</label></p>
                                <!-- END: shipping_loop -->
                            </div>
                        </div>
                        <!-- END: shipping_chose -->
                        <div class="form-group">
                            <label class="col-sm-7 control-label">{LANG.order_note}</label>
                            <div class="col-sm-17">                                
                        		<textarea class="form-control" name="order_note">{DATA.order_note}</textarea>
                            </div>
                        </div>
                        <div class="form-group hidden">
                            <label class="col-sm-7 control-label">Hình thức thanh toán</label>
                            <div class="col-sm-17">
                                <div class="radio_order">
                                    <input id="httt_nhanhang" type="radio" name="httt" value="Thanh toán khi nhận hàng" checked="">
                                    <label for="httt_nhanhang">Thanh toán khi nhận hàng</label>
                                </div>
                                <div class="radio_order">
                                    <input id="httt_chuyenkhoan" type="radio" name="httt" value="Thanh toán qua chuyển khoản">
                                    <label for="httt_chuyenkhoan">Thanh toán qua chuyển khoản</label>
                                </div>
                            </div>
                        </div>
                        <!-- BEGIN: point -->
                        <div class="form-group">
                            <label class="col-sm-7 control-label">Sử dụng điểm</label>
                            <div class="col-sm-17 check_usepoint">
                                <input id="usepoint" type="checkbox" name="usepoint" data-point="{point_num}" data-money="{point_money}" data-ratio="{ratio_money}" value="1">
                                <label for="usepoint">Tổng điểm: {point_num} - tương ứng cho: {point_money}đ</label>
                            </div>
                        </div>
                        <!-- END: point -->
                    </div>
                </div>
            </div>
            <div class="col-xs-24 col-sm-24 col-md-12 order_products">
            	<div class="cart_title">
					THÔNG TIN GIỎ hàng
				</div>
                <!-- BEGIN: pprice6 -->
                <span class="text-right help-block"><strong>{LANG.product_unit_price}:</strong> {unit_config}</span>
                <!-- END: pprice6 -->
                <!-- BEGIN: rows -->
                <div class="list_order_products">
                	<div class="row">
                		<div class="col-xs-18">
                			<img class="anhsp_order" src="{img_pro}"/> 
	    					<a title="{title_pro}" href="{link_pro}">{title_pro}</a>
                		</div>
                		<div class="col-xs-6">
                			<!-- BEGIN: price2 -->
							<div class="text-right order_price-product">{PRICE.sale_format} {unit_config} </div> 
							<!-- END: price2 -->
							<div class="text-right order_price-number">x{pro_num}</div>
							<!-- BEGIN: price5 -->
							<div class="price_total text-right order_price-tolal">{PRICE_TOTAL.sale_format} {unit_config}</div>
							<!-- END: price5 -->
                		</div>
                	</div>
                </div>
                <!-- END: rows -->
                
                <!-- BEGIN: price3 -->
                <!-- BEGIN: total_coupons -->
                <p class="pull-right">{LANG.coupon}: <strong>{price_coupons}</strong> {unit_config}</p>
                <div class="clear"></div>
                <!-- END: total_coupons -->
                <p class="pull-right">{LANG.cart_total}: <strong id="total" data-total="{price_total}">{price_total}</strong> {unit_config}</p>
                <strong style="display:none" id="total_tam">{price_total}</strong>
                <!-- END: price3 -->
                <div class="text-center col-xs-24">
					<input type="checkbox" name="check" value="1" id="check" />
					<span id="idselect">{LANG.order_true_info}</span>
					<span class="error">{ERROR.order_check}</span>
					<br /><br />
					<a class="btn btn-primary" title="{LANG.order_submit_send}" href="#" id="submit_send"><span>{LANG.order_submit_send}</span></a>
				</div>
            </div>
            <div class="col-xs-24">
                <!-- BEGIN: shipping -->
                <div class="panel panel-primary" id="shipping_form">
                    <div class="panel-heading">
                        {LANG.shipping_services}
                    </div>
                    <div class="panel-body">
                        <p><strong>{LANG.order_address} (<a href="javascript:void(0)" title="{LANG.shipping_copy}" onclick="nv_get_customer_info()">{LANG.shipping_copy}</a>)</strong></p>
                        <div class="row">
                            <div class="col-xs-10">
                                <input type="text" name="ship_name" value="{DATA.shipping.ship_name}" class="form-control" placeholder="{LANG.shipping_name}" />
                                <span class="error">{ERROR.order_shipping_name}</span>
                            </div>
                            <div class="col-xs-14">
                                <input type="text" name="ship_phone" value="{DATA.shipping.ship_phone}" class="form-control" placeholder="{LANG.shipping_phone}" />
                                <span class="error">{ERROR.order_shipping_phone}</span>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-xs-10">
                                <select id="location" name="ship_location" class="form-control">
                                    <!-- BEGIN: location_loop -->
                                    <option value="{LOCATION.id}" {LOCATION.selected}>{LOCATION.title}</option>
                                    <!-- END: location_loop -->
                                </select>
                            </div>
                            <div class="col-xs-14">
                                <input type="text" name="ship_address_extend" value="{DATA.shipping.ship_address_extend}" class="form-control" placeholder="{LANG.shipping_address_extend}" />
                                <span class="error">{ERROR.order_shipping_address_extend}</span>
                            </div>
                        </div>
                        <em class="help-block">{LANG.shipping_address_note}</em>
                        <div class="panel panel-danger">
                            <div class="panel-body">
                                <p><strong>{LANG.shipping_services}</strong></p>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <p><em>{LANG.shipping_shops_chose}</em></p>
                                        <!-- BEGIN: shops_loop -->
                                        <label class="show">
                                            <input type="radio" name="shops" value="{SHOPS.id}" {SHOPS.checked} title="{SHOPS.name}" />{SHOPS.name}
                                        </label>
                                        <span class="help-block">{SHOPS.location_string}</span>
                                        <!-- END: shops_loop -->
                                    </div>
                                    <div class="col-xs-12">
                                        <p>
                                            <em>{LANG.shipping_carrier_chose}</em>
                                            <span class="error show">{ERROR.order_shipping_carrier_id}</span>
                                        </p>
                                        <div id="carrier">
                                            <!-- BEGIN: carrier_loop -->
                                            <label class="show"><input type="radio" name="carrier" value="{CARRIER.id}" {CARRIER.checked} title="{CARRIER.name}" />{CARRIER.name}</label>
                                            <!-- END: carrier_loop -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-danger">
                            <div class="panel-body">
                                <p><strong>{LANG.shipping_info}</strong></p>
                                <ul class="order_shipping_info">
                                    <li><em class="fa fa-circle-o">&nbsp;</em><strong>{LANG.shipping_info_weight}:</strong> {DATA.weight_total}{weight_unit}</li>
                                    <li><em class="fa fa-circle-o">&nbsp;</em><strong>{LANG.shipping_shops}:</strong> <span id="shipping_shops">&nbsp;</span></li>
                                    <li><em class="fa fa-circle-o">&nbsp;</em><strong>{LANG.shipping_services}:</strong> <span id="shipping_services">&nbsp;</span></li>
                                    <li><em class="fa fa-circle-o">&nbsp;</em><strong>{LANG.shipping_price}:</strong> <span id="shipping_price">&nbsp;</span></li>
                                    <li><em class="fa fa-circle-o">&nbsp;</em><strong>{LANG.order_address}:</strong>
                                        <ul>
                                            <li><strong>{LANG.shipping_name}:</strong> <span id="order_ship_name">N/A</span><span id="order_ship_phone">&nbsp;</span></li>
                                            <li><strong>{LANG.shipping_address}:</strong> <span id="order_address_extend">&nbsp;</span><span id="order_address">&nbsp;</span></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END: shipping -->
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">
$(document).ready(function() {
    $("select").select2();
});
$('select.tinhthanh').change(function() {
    var tinhthanh = $(this).val();
    if (tinhthanh > 0) {
        $.post(script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=order&id_tinhthanh=' + tinhthanh, function(res) {
            $('.quanhuyen').html(res);
        });
    }
});

$('select.quanhuyen').change(function() {
    var id_quanhuyen = $(this).val();
    var chon = $(this).attr('chon');
    if (id_quanhuyen > 0) {
        $.post(script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=order&id_quanhuyen=' + id_quanhuyen, function(res) {
            $('.xaphuong').html(res);

        });
    }
});
</script>
<script type="text/javascript" data-show="after">
var url_load = nv_base_siteurl + 'index.php?' + nv_lang_variable + '=' + nv_lang_data + '&' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=shippingajax';
var urloadcart = nv_base_siteurl + 'index.php?' + nv_lang_variable + '=' + nv_lang_data + '&' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=loadcart';
var order_shipping = '{DATA.order_shipping}';

$('#usepoint').change(function() {
    if ($(this).is(':checked')) {
        var point = parseInt($(this).data('point'));
        var money = parseInt($(this).data('money'));
        var ratio = parseInt($(this).data('ratio'));
        var totalOld = parseInt($('#total').data('total').split('.').join(""));
        var totalNew, newMoney;
        for (var i = point; i >= 0; i--) {
            newMoney = i * ratio;
            if (totalOld >= newMoney) {
                totalOld -= newMoney;
                break;
            } else if (totalOld < newMoney) {
                continue;
            }
        }
        $('#total').text(totalOld.toLocaleString('vi-VN'));
    } else {
        $('#total').text($('#total').data('total'));
    }
});

$(document).ready(function() {

    $("#location").select2({
        language: "en"
    });
});

$("#submit_send").click(function() {
    $("#fpost").submit();
    return false;
});
$("#idselect").click(function() {
    if ($("#check").attr("checked")) {
        $("#check").removeAttr("checked");
    } else {
        $("#check").attr("checked", "checked");
    }
    return false;
});
</script>
<!-- BEGIN: shipping_javascript -->
<script type="text/javascript" data-show="after">
$(document).ready(function() {
    var shops_id = $('input[name="shops"]:checked');
    var carrier_id = $('input[name="carrier"]:checked');
    var location_id = $('#location option:selected').val();

    $('#carrier').load(url_load + '&get_carrier=1&carrier_id={CARRIER.id}&shops_id=' + shops_id.val());
    $('#shipping_shops').text(shops_id.attr("title"));
    $('#shipping_services').text(carrier_id.attr("title"));
    nv_get_price();

    $('input[name="shops"]').change(function() {
        var shops_id = $('input[name="shops"]:checked');

        $('#carrier').load(url_load + '&get_carrier=1&carrier_id=' + carrier_id.val() + '&shops_id=' + shops_id.val());
        $('#shipping_shops').text(shops_id.attr("title"));
        nv_get_price();
    });

    if (order_shipping == '0') {
        $('#shipping_form').hide();
    } else {
        $('#shipping_form').show();
    }
});

$('input[name="order_shipping"]').change(function() {
    if ($('input[name="order_shipping"]:checked').val() == '1') {
        nv_get_price();
        $('#shipping_form').slideDown();
    } else {
        $('#shipping_form').slideUp();
    }
});

$("#location").on("change", function(e) {
    var location_id = $('#location option:selected').val();
    $.post(url_load + '&nocache=' + new Date().getTime(), 'get_location=1&location_id=' + location_id, function(res) {
        $('#order_address').text(res);
    });
    nv_get_price();
});

$('input[name="address_extend"]').on("keyup", function() {
    var text = ', ';
    if ($(this).val().length > 0) text = $(this).val() + text;
    else text = '';
    $('#order_address_extend').html(text);
});

$('input[name="ship_name"]').on("keyup", function() {
    $('#order_ship_name').html($(this).val());
});

$('input[name="ship_phone"]').on("keyup", function() {
    var text = ' - ';
    if ($(this).val().length > 0) text = text + $(this).val();
    else text = '';
    $('#order_ship_phone').html(text);
});

function nv_get_price() {
    if ($('input[name="order_shipping"]:checked').val() == '1') {
        var total = $('#total_tam').html();
        var carrier_id = $('input[name="carrier"]:checked');
        var shops_id = $('input[name="shops"]:checked').val();
        var location_id = $('#location option:selected').val();
        $('#shipping_services').text(carrier_id.attr("title"));
        $('#shipping_price').load(url_load + '&get_shipping_price=1&weight={DATA.weight_total}&weight_unit={weight_unit}&location_id=' + location_id + '&shops_id=' + shops_id + '&total=' + total + '&carrier_id=' + carrier_id.val());
        $('#order_address').load(url_load + '&get_location=1&location_id=' + location_id);
        $("#cart_" + nv_module_name).load(urloadcart + '&coupons_check=1&coupons_code={COUPONS_CODE}&get_shipping_price=1&weight={DATA.weight_total}&weight_unit={weight_unit}&location_id=' + location_id + '&shops_id=' + shops_id + '&carrier_id=' + carrier_id.val());
        $("#total").load(urloadcart + '&coupons_check=1&coupons_code={COUPONS_CODE}&get_shipping_price=1&weight={DATA.weight_total}&weight_unit={weight_unit}&location_id=' + location_id + '&shops_id=' + shops_id + '&total=' + total + '&carrier_id=' + carrier_id.val() + '&t=2');
    }
}

function nv_carrier_change() {
    var carrier_id = $('input[name="carrier"]:checked');
    $('#shipping_services').text(carrier_id.attr("title"));
    nv_get_price();
}

function nv_get_customer_info() {
    $('input[name="ship_name"]').val($('input[name="order_name"]').val());
    $('input[name="ship_phone"]').val($('input[name="order_phone"]').val());
    $('#order_ship_name').html($('input[name="order_name"]').val());
    var text = ' - ';
    if ($('input[name="order_phone"]').val().length > 0) text = text + $('input[name="order_phone"]').val();
    else text = '';
    $('#order_ship_phone').html(text);
}
</script>
<!-- END: shipping_javascript -->
<!-- END: main -->