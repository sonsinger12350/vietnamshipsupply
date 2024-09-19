<!-- BEGIN: main -->

<!-- BEGIN: view -->
<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				<th class="w100">{LANG.weight}</th>
				<th>{LANG.mcountry}</th>
				<th>{LANG.symbol_inter}</th>
				<th>{LANG.symbol}</th>
				<th>{LANG.status}</th>
				<th class="w150">&nbsp;</th>
			</tr>
		</thead>
		<tbody>
			<!-- BEGIN: loop -->
			<tr>
				<td><select class="form-control" id="id_weight_{VIEW.id}" onchange="nv_change_weight('{VIEW.id}');">
						<!-- BEGIN: weight_loop -->
						<option value="{WEIGHT.key}"{WEIGHT.selected}>{WEIGHT.title}</option>
						<!-- END: weight_loop -->
				</select></td>
				<td>{VIEW.mcountry}</td>
				<td>{VIEW.symbol_inter}</td>
				<td>{VIEW.symbol}</td>
				<td>{VIEW.status}</td>
				<td class="text-center"><i class="fa fa-edit fa-lg">&nbsp;</i> <a href="{VIEW.link_edit}">{LANG.edit}</a> - <em class="fa fa-trash-o fa-lg">&nbsp;</em> <a href="{VIEW.link_delete}" onclick="return confirm(nv_is_del_confirm[0]);">{LANG.del}</a></td>
			</tr>
			<!-- END: loop -->
		</tbody>
	</table>
</div>
<!-- END: view -->

<!-- BEGIN: error -->
<div class="alert alert-warning">{ERROR}</div>
<!-- END: error -->

<form class="form-horizontal" action="{NV_BASE_ADMINURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&amp;{NV_NAME_VARIABLE}={MODULE_NAME}&amp;{NV_OP_VARIABLE}={OP}" method="post">
	<input type="hidden" name="id" value="{ROW.id}" />

	<div class="panel panel-default">
		<div class="panel-body">
			<div class="form-group">
				<label class="col-sm-5 col-md-3 control-label"><strong>{LANG.mcountry}</strong></label>
				<div class="col-sm-19 col-md-21">
					<input class="form-control required" type="text" name="mcountry" value="{ROW.mcountry}" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-5 col-md-3 control-label"><strong>{LANG.symbol_inter}</strong></label>
				<div class="col-sm-19 col-md-21">
					<input class="form-control required" type="text" name="symbol_inter" value="{ROW.symbol_inter}" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-5 col-md-3 control-label"><strong>{LANG.symbol}</strong></label>
				<div class="col-sm-19 col-md-21">
					<input class="form-control required" type="text" name="symbol" value="{ROW.symbol}" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-5 col-md-3 control-label"><strong>{LANG.status}</strong></label>
				<div class="col-sm-19 col-md-21">
					<select class="form-control" name="status">
						<!-- BEGIN: select_status -->
						<option value="{OPTION.key}"{OPTION.selected}>{OPTION.title}</option>
						<!-- END: select_status -->
					</select>
				</div>
			</div>
		</div>
	</div>

	<div class="text-center">
		<input class="btn btn-primary" name="submit" type="submit" value="{LANG.save}" />
	</div>
</form>

<script type="text/javascript">
	//<![CDATA[
	function nv_change_weight(id) {
		var nv_timer = nv_settimeout_disable('id_weight_' + id, 5000);
		var new_vid = $('#id_weight_' + id).val();
		$.post(script_name + '?' + nv_name_variable + '=' + nv_module_name
				+ '&' + nv_fc_variable + '={OP}&nocache='
				+ new Date().getTime(), 'ajax_action=1&id=' + id + '&new_vid='
				+ new_vid, function(res) {
			var r_split = res.split('_');
			if (r_split[0] != 'OK') {
				alert(nv_is_change_act_confirm[2]);
			}
			clearTimeout(nv_timer);
			window.location.href = script_name + '?' + nv_name_variable + '='
					+ nv_module_name + '&' + nv_fc_variable + '={OP}';
			return;
		});
		return;
	}

	//]]>
</script>
<!-- END: main -->