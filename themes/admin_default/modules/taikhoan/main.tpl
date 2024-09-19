<!-- BEGIN: main -->
<div id="users">

	<!-- BEGIN: is_forum -->
	<div class="alert alert-warning">{LANG.modforum}</div>
	<!-- END: is_forum -->

	<div class="well">
		<form action="{FORM_ACTION}" method="get">
			<input name="{NV_NAME_VARIABLE}" type="hidden" value="{MODULE_NAME}" />
			<div class="row">
				<div class="col-xs-12 col-md-4">
					<div class="form-group">
						<input class="form-control" type="text" name="value" value="{SEARCH_VALUE}" id="f_value" placeholder="{LANG.search_key}" />
					</div>
				</div>
				<div class="col-xs-12 col-md-4">
					<div class="form-group">
						<select class="form-control" name="method" id="f_method">
							<option value="">---{LANG.search_type}---</option>
							<!-- BEGIN: method -->
							<option value="{METHODS.key}"{METHODS.selected}>{METHODS.value}</option>
							<!-- END: method -->
						</select>
					</div>
				</div>
				<div class="col-xs-12 col-md-4">
					<div class="form-group">
						<select class="form-control" name="usactive">
							<option value="-1">---{LANG.usactive}---</option>
							<option value="-2"{SELECTED_NEW_USERS}>{GLANG.level7}</option>
							<!-- BEGIN: usactive -->
							<option value="{USACTIVE.key}"{USACTIVE.selected}>{USACTIVE.value}</option>
							<!-- END: usactive -->
						</select>
					</div>
				</div>
				<div class="col-xs-12 col-md-4">
					<div class="form-group">
						<input class="btn btn-primary" name="search" type="submit" value="{LANG.submit}" /> <a class="btn btn-primary" href="{add_new_acount_money}">{LANG.add_new_acount_money}</a>
					</div>
				</div>
			</div>
		</form>
	</div>
	<!-- BEGIN: exportfile -->
	<input type="button" class="btn btn-primary" value="{LANG.export}" name="data_export" />
	<!-- END: exportfile -->
	<div class="table-responsive">
		<table class="table table-striped table-bordered table-hover">
			<caption>
				<em class="fa fa-file-text-o">&nbsp;</em>{TABLE_CAPTION}
			</caption>
			<thead>
				<tr>
					<!-- BEGIN: head_td -->
					<th><a href="{HEAD_TD.href}">{HEAD_TD.title}</a></th>
					<!-- END: head_td -->
					<th class="text-center">{LANG.active}</th>
					<th class="text-center">{LANG.funcs}</th>
				</tr>
			</thead>
			<!-- BEGIN: generate_page -->
			<tfoot>
				<tr>
					<td colspan="8">{GENERATE_PAGE}</td>
				</tr>
			</tfoot>
			<!-- END: generate_page -->
			<tbody>
				<!-- BEGIN: xusers -->
				<tr>
					<td>{CONTENT_TD.userid}</td>
					<td>
						<!-- BEGIN: is_admin --> <img style="vertical-align: middle;" alt="{CONTENT_TD.level}" src="{NV_BASE_SITEURL}themes/{NV_ADMIN_THEME}/images/{CONTENT_TD.img}.png" width="38" height="18" /> <!-- END: is_admin --> <a href="{CONTENT_TD.link}" target="_blank">{CONTENT_TD.username}</a>
					</td>
					<td>{CONTENT_TD.full_name}</td>
					<td><a href="mailto:{CONTENT_TD.email}">{CONTENT_TD.email}</a></td>
					<td>{CONTENT_TD.money_in}</td>
					<td>{CONTENT_TD.money_out}</td>
					<td>{CONTENT_TD.money}</td>
					<td>{CONTENT_TD.money_km}</td>
					<td>{CONTENT_TD.regdate}</td>
					<td class="text-center"><input type="checkbox" name="active" id="change_status_{CONTENT_TD.userid}" value="{CONTENT_TD.userid}" {CONTENT_TD.checked}{CONTENT_TD.disabled} /></td>
					<td class="text-center"><a data-toggle="tooltip" title="{LANG.memberlist_edit}" href="{CONTENT_TD.link_update}" class="btn btn-xs btn-warning"><em class="fa fa-edit"></em></a> <a data-toggle="tooltip" title="{LANG.delete}" href="javascript:void(0);" class="btn btn-xs btn-danger" onclick="nv_row_del({CONTENT_TD.userid});"><em class="fa fa-trash-o"></em></a></td>
				</tr>
				<!-- END: xusers -->
			</tbody>
		</table>
	</div>
</div>
<script type="text/javascript">
 var export_note = '{LANG.export_note}';
 var export_complete = '{LANG.export_complete}';
</script>
<!-- END: main -->