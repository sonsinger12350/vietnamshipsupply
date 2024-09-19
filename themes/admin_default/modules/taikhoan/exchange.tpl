<!-- BEGIN: main -->

<!-- BEGIN: data -->
<div class="text-right m-bottom">
	{LANG.rate1}<strong> {DEFAULT.symbol_inter}</strong>
</div>

<form class="form-inline" name="content">
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				<th class="w50 text-center">{LANG.stt}</th>
				<th>{LANG.exchangeinfo}</th>
				<th>{LANG.time_update}</th>
				<th>{LANG.rate1}</th>
			</tr>
		</thead>
		<tbody>
			<!-- BEGIN: row -->
			<tr>
				<td class="text-center">{ROW.number}</td>
				<td>1{ROW.msystem_info_1.symbol} ({ROW.msystem_info_1.symbol_inter}) = {ROW.exchange}{ROW.msystem_info_2.symbol} ({ROW.msystem_info_2.symbol_inter})</td>
				<td>{ROW.time_update}</td>
				<td>{DEFAULT.symbol_inter}</td>
			</tr>
			<!-- END: row -->
		</tbody>
	</table>
</form>
<!-- END: data -->

<!-- BEGIN: msystem -->
<form class="form-inline" action="{action}" method="post">
	<table class="table table-striped table-bordered table-hover">
		<caption>{LANG.addnewmoney}</caption>
		<tbody>
			<!-- BEGIN: loop -->
			<tr>
				<td><strong>1 {MSYSTEM.symbol_inter} = </strong><input class="form-control" name="currency[{MSYSTEM.id}]" type="text" value="" maxlength="255" /> <strong>{DEFAULT.symbol_inter}</strong></td>
			</tr>
			<!-- END: loop -->
		</tbody>
	</table>
	<div>
		<input class="btn btn-primary" name="submit" type="submit" value="{LANG.save}" />
	</div>
</form>
<!-- END: msystem -->

<!-- BEGIN: no_more_msystem -->
<div class="alert alert-warning">{LANG.no_more_msystem}</div>
<!-- END: no_more_msystem -->

<!-- END: main -->