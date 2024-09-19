<!-- BEGIN: main -->
<link type="text/css" href="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
<link rel="stylesheet" href="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/select2/select2.min.css" />
<link rel="stylesheet" href="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/select2/select2-bootstrap.min.css" />

<!-- BEGIN: error -->
<div class="alert alert-danger">{ERROR}</div>
<!-- END: error -->

<form class="form-horizontal" action="{NV_BASE_ADMINURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&amp;{NV_NAME_VARIABLE}={MODULE_NAME}&amp;{NV_OP_VARIABLE}={OP}" onsubmit="nv_check_form_add();return false;" method="post">
	<div class="panel panel-default">
		<div class="panel-body">
			<div class="form-group">
				<label class="col-sm-5 col-md-3 control-label"><strong>{LANG.username}</strong> <span class="red">(*)</span></label>
				<div class="col-sm-19 col-md-21">
					<select name="userid" id="userid" class="form-control">
						<!-- BEGIN: user_info -->
						<option value="{USER_INFO.userid}" selected="selected">{USER_INFO.username}</option>
						<!-- END: user_info -->
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-5 col-md-3 control-label"><strong>{LANG.save_money}</strong> <span class="red">(*)</span></label>
				<div class="col-sm-19 col-md-21">
					<div class="row">
						<div class="col-xs-4">
							<select class="form-control" title="{LANG.loaigiaodich}" name="typeadd">
								<option value="+">{LANG.addmoney}</option>
								<option value="-">{LANG.submoney}</option>
							</select>
						</div>
						<div class="col-xs-4">
							<select class="form-control" title="Tài khoản" name="typeuser">
								<option value="1">Tài khoản chính</option>
								<option value="2">Tài khoản khuyến mãi</option>
							</select>
						</div>
						<div class="col-xs-12">
							<input class="form-control money" type="text" name="money" value="{EDIT.money_total}" />
						</div>
						<div class="col-xs-4">
							<select class="form-control" title="Tài khoản" name="typedv">
								<option value="1">vnđ</option>
								<option value="2">%</option>
							</select>
						</div>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-5 col-md-3 control-label"><strong>{LANG.notice}</strong></label>
				<div class="col-sm-19 col-md-21">
					<textarea name="notice" id="notice" class="form-control">{EDIT.notice}</textarea>
				</div>
			</div>
		</div>
	</div>
	<div style="text-align: center">
		<input class="btn btn-primary" name="submit" type="submit" value="{LANG.save}" /> <input type="hidden" name="rowid" value="{ROW.id}" /> <input type="hidden" name="exchange" value="{ROW.exchange}" />
	</div>
</form>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/select2/select2.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/select2/i18n/{NV_LANG_INTERFACE}.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery-ui/jquery-ui.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}themes/default/js/taikhoan_autoNumeric-1.9.41.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	$("#userid").select2({
		language: "vi",
		theme: "bootstrap",
		ajax: {
	    url: script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=addacount&get_user_json=1',
	    	dataType: 'json',
	    	delay: 250,
	    	data: function (params) {
	      		return {
	      			q: params.term, // search term
	      			page: params.page
	      		};
	      	},
	    	processResults: function (data, params) {
	    		params.page = params.page || 1;
	    		return {
	    			results: data,
	    			pagination: {
	    				more: (params.page * 30) < data.total_count
	    			}
	    		};
	    	},
		cache: true
		},
		escapeMarkup: function (markup) { return markup; }, // let our custom formatter work
		minimumInputLength: 3,
		templateResult: formatRepo, // omitted for brevity, see the source of this page
		templateSelection: formatRepoSelection // omitted for brevity, see the source of this page
	});
	
	var Options = {
		aSep : '{DES_POINT}',
		aDec : '{THOUSANDS_SEP}',
		vMin : '0',
		vMax : '999999999999999999'
	};
	$('.money').autoNumeric('init', Options);
	$('.money').bind('blur focusout keypress keyup', function() {
		$(this).autoNumeric('get', Options);
	});
	
});

function formatRepo (repo) {
	if (repo.loading) return repo.text;
	var markup = '<div class="clearfix">' +
	'<div class="col-sm-19">' + repo.username + '</div>' +
    '<div clas="col-sm-5"><span class="show text-right">' + repo.fullname + '</span></div>' +
    '</div>';
	markup += '</div></div>';
	return markup;
}

function formatRepoSelection (repo) {
	$('#username').val( repo.username );
	return repo.username || repo.text;
}

var LANG = [];
LANG['error_required_userid'] = '{LANG.error_required_userid}';
LANG['error_required_money'] = '{LANG.error_required_money}';

</script>
<!-- END: main -->