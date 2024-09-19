<!-- BEGIN: main -->
<div class="viewtransaction">
	<table class="table table-striped table-bordered table-hover">
		<caption>{LANG.detailtransaction}</caption>
		<tr>
			<th>{LANG.usertransaction}</th>
			<td>{CONTENT.userid}</td>
			<th>{LANG.customer_name}</th>
			<td>{CONTENT.customer_name}</td>
		</tr>
		<tr>
			<th>{LANG.customer_email}</th>
			<td>{CONTENT.customer_email}</td>
			<th>{LANG.customer_phone}</th>
			<td>{CONTENT.customer_phone}</td>
		</tr>
		<tr>
			<th>{LANG.customer_address}</th>
			<td>{CONTENT.customer_address}</td>
			<th>{LANG.moneytransaction}</th>
			<td>{CONTENT.status}&nbsp;{CONTENT.money_total}</td>
		</tr>
		<tr>
			<th>{LANG.money_fee}</th>
			<td>{CONTENT.money_fee}</td>
			<th>{LANG.money_net}</th>
			<td>{CONTENT.money_net}</td>
		</tr>
		<tr>
			<th>{LANG.datetransaction}</th>
			<td>{CONTENT.created_time}</td>
			<th>{LANG.detailtransaction}</th>
			<td>{CONTENT.transaction_info}</td>
		</tr>
	</table>
</div>
<!-- END: main -->