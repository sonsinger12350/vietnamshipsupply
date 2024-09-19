<!-- BEGIN: main -->
<div class="panel panel-default">
	<div class="panel-heading">
		{LANG.moneyinfo}
	</div>
	<table class="table table-striped table-bordered table-hover">
		<tbody>
			<tr>
				<td width="50%">{LANG.datecreate}</td>
				<td>{ROW.created_time}</td>
			</tr>
			<tr>
				<td>{LANG.totalmoney}</td>
				<td><strong>{ROW.money}</strong> {ROW.money_unit}</td>
			</tr>
			<tr>
				<td>{LANG.totalmoneyin}</td>
				<td><strong>{ROW.money_in} </strong>{ROW.money_unit}</td>
			</tr>
			<tr>
				<td>{LANG.totalmoneyout}</td>
				<td><strong>{ROW.money_out} </strong>{ROW.money_unit}</td>
			</tr>
		</tbody>
	</table>
</div>
<!-- END: main -->