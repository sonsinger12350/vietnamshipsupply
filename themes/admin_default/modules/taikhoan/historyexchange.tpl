<!-- BEGIN: main -->
<link type="text/css" href="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery-ui/jquery-ui.min.css" rel="stylesheet" />

<div class="well">
	<form action="{NV_BASE_ADMINURL}index.php?{NV_NAME_VARIABLE}={MODULE_NAME}&{NV_OP_VARIABLE}={OP}" method="post">
		<input type="hidden" name="search" value="1" />

		<div class="row">
			<div class="col-xs-12 col-md-4">
				<div class="form-group">
					<div class="input-group">
						<input class="form-control datepicker" value="{SEARCH.to}" type="text" name="to" readonly="readonly" placeholder="{LANG.viewhistoryexchange}" /> <span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<em class="fa fa-calendar fa-fix">&nbsp;</em>
							</button>
						</span>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-md-4">
				<div class="form-group">
					<input class="btn btn-primary" type="submit" value="{LANG.search}" name="submit" />
				</div>
			</div>
		</div>
	</form>
</div>

<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				<th class="w50 text-center">{LANG.stt}</th>
				<th><strong>{LANG.exchangeinfo}</strong></th>
				<th>{LANG.date1}</th>
				<th>{LANG.date2}</th>
			</tr>
		</thead>
		<tbody>
			<!-- BEGIN: loop -->
			<tr>
				<td class="text-center">{stt}</td>
				<td>1 {CONTENT.msystem_info_1.symbol_inter} = {CONTENT.exchange} {CONTENT.msystem_info_2.symbol_inter}</td>
				<td>{CONTENT.time_begin}</td>
				<td>{CONTENT.time_end}</td>
			</tr>
			<!-- END: loop -->
		</tbody>
	</table>
</div>

<!-- BEGIN: page -->
<div class="text-center">{PAGE}</div>
<!-- END: page -->

<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery-ui/jquery-ui.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/language/jquery.ui.datepicker-{NV_LANG_INTERFACE}.js"></script>
<script type="text/javascript">
	$(".datepicker").datepicker({
		dateFormat : "dd/mm/yy",
		changeMonth : !0,
		changeYear : !0,
		showOtherMonths : !0,
		showOn : "focus",
		yearRange : "-90:+0"
	});
</script>
<!-- END: main -->