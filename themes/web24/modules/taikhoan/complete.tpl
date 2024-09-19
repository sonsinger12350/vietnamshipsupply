<!-- BEGIN: main -->
<div class="div_pay">
	<!-- BEGIN: error -->
	<div class="alert alert-danger">{ERROR}</div>
	<!-- END: error -->
	<!-- BEGIN: datashow -->
	<div class="alert alert-success">{LANG.note_pay_complete}</div>
	<div class="div_pay_form">
		<form id="fpayment" method="post" action="">
			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"> <em class="fa fa-user fa-fix fa-lg fa-horizon"> </em>
					</span> <input maxlength="100" value="{DATA.customer_name}" disabled="disabled" name="customer_name" class="form-control required" placeholder="{LANG.customer_fullname}" type="text" />
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"> <em class="fa fa-envelope fa-fix fa-lg fa-horizon"> </em>
					</span> <input maxlength="100" value="{DATA.customer_email}" name="customer_email" disabled="disabled" class="form-control required" placeholder="{LANG.customer_email}" type="text" />
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"> <em class="fa fa-phone fa-fix fa-lg fa-horizon"> </em>
					</span> <input maxlength="100" value="{DATA.customer_phone}" name="customer_phone" disabled="disabled" class="form-control" placeholder="{LANG.customer_phone}" type="text" />
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"> <em class="fa fa-map-marker fa-fix fa-lg fa-horizon"> </em>
					</span> <input maxlength="100" value="{DATA.customer_address}" name="customer_address" disabled="disabled" class="form-control" placeholder="{LANG.customer_address}" type="text" />
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"> <em class="fa fa-usd fa-fix fa-lg fa-horizon"> </em>
					</span> <input value="{DATA.money_total}" name="customer_money" class="form-control required" disabled="disabled" placeholder="{LANG.customer_money}" type="text" />
				</div>
			</div>
			<div class="form-group">
				<div>
					<textarea cols="8" disabled="disabled" name="transaction_info" class="form-control" maxlength="1000" placeholder="{LANG.customer_content}">{DATA.transaction_info}</textarea>
				</div>
			</div>
			<!-- BEGIN: nganluong -->
			<div class="form-group">
				<div class="middle text-center clearfix">
					<a href="" id="btn_payment"><img src="{PAYMENT.images_button}" alt="{LANG.customer_submit}" /></a>
				</div>
			</div>
			<script language="javascript" src="{NV_BASE_SITEURL}modules/{module_file}/payment/{DATA.payment}.apps.js"></script>
			<script language="javascript">
            var mc_flow = new NGANLUONG.apps.MCFlow({trigger:'btn_payment',url:'{WS.link}'});
            </script>
			<!-- END: nganluong -->
			<!-- BEGIN: baokim -->
			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"> <em class="fa fa-user fa-fix fa-lg fa-horizon"> </em>
					</span> <input maxlength="100" value="{DATA.customer_name}" disabled="disabled" name="customer_name" class="form-control required" placeholder="{LANG.customer_fullname}" type="text" />
				</div>
			</div>
			<!-- END: baokim -->
		</form>
	</div>
	<!-- END: datashow -->
	<!-- BEGIN: payment_complete -->
	<div class="alert alert-success text-center">
		<strong>{MESSAGE}</strong><br /> <a href="{GO_TO_WALLET}">[{LANG.go_to_wallet}]</a><br /> <img src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/images/load_bar.gif" />
	</div>
	<script type="text/javascript">
        setTimeout(function(){location.href="{GO_TO_WALLET}"} , 3000);   
    </script>
	<!-- END: payment_complete -->
</div>
<!-- END: main -->