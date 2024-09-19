<!-- BEGIN: main -->
<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
		<caption>{LANG.history_exchange}</caption>
		<thead>
			<tr class="text-center">
				<th width="20px">{LANG.stt}</th>
				<th width="50px">{LANG.codetransaction}</th>
				<th width="100px">{LANG.datetransaction}</th>
				<th>{LANG.infotransaction}</th>
				<th width="100px">{LANG.moneytransaction}</th>
				<th width="120px">{LANG.status}</th>
			</tr>
		</thead>
		<tbody>
			<!-- BEGIN: loop -->
			<tr>
				<td>{stt}</td>
				<td>{ROW.code}</td>
				<td>{ROW.created_time}</td>
				<td>{ROW.transaction_info}</td>
				<td align="right">{ROW.transaction_type}&nbsp;{ROW.money_total}</td>
				<td align="right">{ROW.status}</td>
			</tr>
			<!-- END: loop -->
		</tbody>
	</table>
</div>
<div align="right">{PAGE}</div>
<!-- END: main -->