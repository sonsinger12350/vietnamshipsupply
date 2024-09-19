<!-- BEGIN: main -->
<style type="text/css">
.hide {
	display: none
}

.borderBottom {
	border-bottom: 1px dashed #ccc
}

#myrss {
	margin-bottom: 20px;
	margin-top: 10px
}

#myrss .readme {
	font: normal 13px/17px Arial;
	margin-bottom: 10px
}

#myrss .readme a {
	text-decoration: underline
}

#myrss .channelsAdd {
	float: left;
	padding: 5px 10px;
	font: bold 13px Arial;
	margin-right: 10px;
	margin-bottom: 10px;
	background: #008EDB;
	color: #FFF
}

#myrss .channelsAdd a {
	color: #FFF;
	text-decoration: none
}

#myrss .rsslogo {
	background: transparent url(http://kysuviet.vn/epay.jpg) no-repeat;
	float: right;
	height: 130px;
	width: 130px
}

#myrss h3 {
	display: block;
	font: bold 14px/27px Arial;
	margin-bottom: 10px;
	border-bottom: 1px solid #dadada;
}
</style>
<div id="myrss">
	<h3 class="borderBottom">{LANG.RSSbuilder}</h3>

	<div class="rsslogo">
		<em class="hide">.</em>
	</div>

	<div class="readme">{LANG.WhatIsRSSbuilder}</div>
	<div class="text-center" class="readme">
		<h3 class="borderBottom"></h3>
		<div class="text-center" style="font-size: 16px; font-weight: bold; padding-bottom: 10px;">Nạp qua thẻ cào:</div>
		<form class="form-inline" action="" method="post">
			<table class="tab2">
				<tbody>
					<tr>
						<td>Loại thẻ:</td>
						<td><select class="form-control" name="card_type" id="card_type">
								<option value="vinaphone">Thẻ Vinaphone</option>
								<option value="mobifone">Thẻ Mobifone</option>
						</select></td>
					</tr>
					<tr>
						<td>Mã thẻ:</td>
						<td><input class="form-control" style="height: 25px;" type="text" name="card_code" id="card_code" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><input type="button" onclick="checknap();" name="card_submit" id="card_submit" value="Nạp ngay" /></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</div>
<!-- END: main -->