<!-- BEGIN: main -->

<!-- BEGIN: paymentedit -->
<form class="form-horizontal" action="" method="post">
	<input name="payment" value="{DATA.payment}" type="hidden">
	<div class="panel panel-default">
		<div class="panel-heading">{EDITPAYMENT}</div>
		<div class="panel-body">
			<div class="form-group">
				<label class="col-sm-5 col-md-5 control-label"><strong>{LANG.paymentname}</strong></label>
				<div class="col-sm-19 col-md-19">
					<input type="text" name="paymentname" value="{DATA.paymentname}" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-5 col-md-5 control-label"><strong>{LANG.domain}</strong></label>
				<div class="col-sm-19 col-md-19">
					<input type="url" name="domain" value="{DATA.domain}" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-5 col-md-5 text-right"><strong>{LANG.active}</strong></label>
				<div class="col-sm-19 col-md-19">
					<input type="checkbox" value="1" name="active" {DATA.active}/>
				</div>
			</div>
			<!-- BEGIN: config -->
			<div class="form-group">
				<label class="col-sm-5 col-md-5 control-label"><strong>{CONFIG_LANG}</strong></label>
				<div class="col-sm-19 col-md-19">
					<!-- BEGIN: text -->
					<input type="text" name="config[{CONFIG_NAME}]" value="{CONFIG_VALUE}" class="form-control">
					<!-- END: text -->
					<!-- BEGIN: textarea -->
					<textarea rows="10" name="config[{CONFIG_NAME}]" class="form-control">{CONFIG_VALUE}</textarea>
					<!-- END: textarea -->
				</div>
			</div>
			<!-- END: config -->
			<div class="form-group">
				<label class="col-sm-5 col-md-5 control-label"><strong>{LANG.images_button}</strong></label>
				<div class="col-sm-19 col-md-19">
					<div class="input-group">
						<input class="form-control" type="text" name="images_button" value="{DATA.images_button}" id="image" /> <span class="input-group-btn">
							<button class="btn btn-default selectfile" type="button">
								<em class="fa fa-folder-open-o fa-fix">&nbsp;</em>
							</button>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="text-center">
		<input class="btn btn-primary" type="submit" value="{LANG.save}" name="saveconfigpaymentedit">
	</div>
</form>
<!-- END: paymentedit -->

<!-- BEGIN: listpay -->
<script type="text/javascript">
	var url_back = '{url_back}';
	var url_change_weight = '{url_change}';
	var url_active = '{url_active}';
</script>
<table id="edit" class="table table-striped table-bordered table-hover">
	<caption>{LANG.paymentcaption}</caption>
	<thead>
		<tr>
			<td width="100" class="text-center"><strong>{LANG.weight}</strong></td>
			<td><strong>{LANG.paymentname}</strong></td>
			<td><strong>{LANG.domain}</strong></td>
			<td class="text-center w150"><strong>{LANG.active}</strong></td>
			<td class="text-center w150"><strong>{LANG.function}</strong></td>
		</tr>
	</thead>
	<tbody>
		<!-- BEGIN: paymentloop -->
		<tr>
			<td class="text-center">{DATA_PM.slect_weight}</td>
			<td>{DATA_PM.paymentname}</td>
			<td>{DATA_PM.domain}</td>
			<td class="text-center"><input type="checkbox" name="{DATA_PM.payment}" id="{DATA_PM.payment}" {DATA_PM.active} onclick="ChangeActive(this,url_active)" /></td>
			<td class="text-center"><em class="fa fa-edit fa-lg">&nbsp;</em><a href="{DATA_PM.link_edit}">{LANG.edit}</a></td>
		</tr>
		<!-- END: paymentloop -->
	</tbody>
</table>
<!-- END: listpay -->

<!-- BEGIN: olistpay -->
<table id="edit" class="table table-striped table-bordered table-hover">
	<caption>{LANG.paymentcaption_other}</caption>
	<thead>
		<tr>
			<td class="text-center" width="50"><strong>{LANG.setting_stt}</strong></td>
			<td><strong>{LANG.paymentname}</strong></td>
			<td><strong>{LANG.domain}</strong></td>
			<td class="text-center w150"><strong>{LANG.function}</strong></td>
		</tr>
	</thead>
	<tbody>
		<!-- BEGIN: opaymentloop -->
		<tr>
			<td class="text-center">{ODATA_PM.STT}</td>
			<td>{ODATA_PM.paymentname}</td>
			<td>{ODATA_PM.domain}</td>
			<td class="text-center"><em class="fa fa-cogs fa-lg">&nbsp;</em><a href="{ODATA_PM.link_edit}">{LANG.payment_integrat}</a></span></td>
		</tr>
		<!-- END: opaymentloop -->
	</tbody>
</table>
<!-- END: olistpay -->

<script type="text/javascript">
	$(".selectfile").click(function() {
		var area = "image";
		var path = "{NV_UPLOADS_DIR}/{MODULE_UPLOAD}";
		var currentpath = "{CURRENTPATH}";
		var type = "image";
		nv_open_browse(script_name + "?" + nv_name_variable + "=upload&popup=1&area=" + area + "&path=" + path + "&type=" + type + "&currentpath=" + currentpath, "NVImg", 850, 420, "resizable=no,scrollbars=no,toolbar=no,location=no,status=no");
		return false;
	});
</script>
<!-- END: main -->