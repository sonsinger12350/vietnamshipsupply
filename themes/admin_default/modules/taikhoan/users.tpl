<!-- BEGIN: main -->
<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				<th>{LANG.stt}</th>
				<th width="50px">{LANG.code}</th>
				<th>{LANG.datetransaction}</th>
				<th>{LANG.usertransaction}</th>
				<th align="right">{LANG.moneytransaction}</th>
				<th align="right">{LANG.sotienconlai}</th>
				<th>{LANG.typemoney}</th>
				<th>{LANG.action}</th>
			</tr>
		</thead>
		<tbody>
			<!-- BEGIN: loop -->
			<tr>
				<td>{stt}</td>
				<td>{CONTENT.code}</td>
				<td>{CONTENT.created_time}</td>
				<td>{CONTENT.userid}</td>
				<td align="right">{CONTENT.status}&nbsp;{CONTENT.money_total}</td>
				<td align="right">{CONTENT.sotienconlai}</td>
				<td>{CONTENT.money_unit}</td>
				<td><a href="javascript:void(0);" onclick="nv_view_transaction('{CONTENT.id}');">{LANG.viewdetail}</a></td>
			</tr>
			<!-- END: loop -->
		</tbody>
	</table>
</div>
<div class="text-center">{PAGE}</div>
<!-- END: main -->