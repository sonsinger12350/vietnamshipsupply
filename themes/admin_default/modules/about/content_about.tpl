<!-- BEGIN: main -->
<!-- BEGIN: error -->
<div class="alert alert-danger">
	{ERROR}
</div>
<!-- END: error -->
<link type="text/css" href="{NV_BASE_SITEURL}themes/admin_default/css/news.css" rel="stylesheet" />

<form action="{FORM_ACTION}" method="post" class="confirm-reload">
	<input name="save" type="hidden" value="1" />
	<input type="hidden" value="{ISCOPY}" name="copy" />
	<div class="row">
		<div class="col-sm-24 col-md-18">
			<div class="table-responsive">
				<table class="table table-striped table-bordered table-hover">
					<caption>Section 1:</caption>
					<colgroup>
						<col class="w200" />
						<col />
					</colgroup>
					<tbody>
						<tr>
							<td class="text-right"> {LANG.titletab}<sup class="required">(*)</sup> </td>
							<td>
								<input class="w300 form-control pull-left" type="text" value="{DATA.tab_1_titletab}" name="tab_1_titletab" id="" maxlength="250" placeholder="{LANG.titletab}" style="margin-right:5px;width: 200px;" onchange="get_alias(this, '{ID}');"/>
								<input class="w300 form-control pull-left" type="text" value="{DATA.tab_1_alias}" name="tab_1_alias" id="" maxlength="250" placeholder="{LANG.alias}" />
							</td>
						</tr>
						<tr>
							<td class="text-right"> {LANG.icon}</td>
							<td><input class="w300 form-control pull-left" type="text" value="{DATA.tab_1_icon}" name="tab_1_icon" maxlength="250" /></td>
						</tr>
						<tr>
							<td class="text-right">{LANG.description} </td>
							<td ><textarea class="form-control" id="" name="tab_1_description" cols="100" rows="5">{DATA.tab_1_description}</textarea></td>
						</tr>
						
					</tbody>
				</table>
			</div>
			<div class="table-responsive">
				<table class="table table-striped table-bordered table-hover">
					<caption>Section 2:</caption>
					<colgroup>
						<col class="w200" />
						<col />
					</colgroup>
					<tbody>
						<tr>
							<td class="text-right"> {LANG.titletab}<sup class="required">(*)</sup> </td>
							<td>
								<input class="w300 form-control pull-left" type="text" value="{DATA.tab_2_titletab}" name="tab_2_titletab" id="" maxlength="250" placeholder="{LANG.titletab}" style="margin-right:5px;width: 200px;" onchange="get_alias(this, '{ID}');"/>
								<input class="w300 form-control pull-left" type="text" value="{DATA.tab_2_alias}" name="tab_2_alias" id="" maxlength="250" placeholder="{LANG.alias}" />
							</td>
						</tr>
						
						<tr>
							<td class="text-right"> {LANG.icon}</td>
							<td><input class="w300 form-control pull-left" type="text" value="{DATA.tab_2_icon}" name="tab_2_icon" maxlength="250" /></td>
						</tr>
						<tr>
							<td class="text-right">{LANG.image}</td>
							<td>
								<input class="w300 form-control pull-left" type="text" name="tab_2_image" id="tab_2_image" value="{DATA.tab_2_image}" style="margin-right: 5px"/>

								<button class="btn btn-info" type="button" onclick="nv_open_browse( '{NV_BASE_ADMINURL}index.php?{NV_NAME_VARIABLE}=upload&popup=1&area=tab_2_image&path={UPLOADS_DIR_USER}&type=file', 'NVImg', 850, 500, 'resizable=no,scrollbars=no,toolbar=no,location=no,status=no' ); return false; ">{LANG.browse}</button>
						</tr>
						<tr>
							<td colspan="2" class="strong" > {LANG.bodytext}
							<div>
								{DATA.tab_2_bodytext}
							</div></td>
						</tr>
					
					</tbody>
				</table>
			</div>
			<div class="table-responsive">
				<table class="table table-striped table-bordered table-hover">
					<caption>Section 3:</caption>
					<colgroup>
						<col class="w200" />
						<col />
					</colgroup>
					<tbody>
						
						<tr>
							<td class="text-right"> {LANG.titletab}<sup class="required">(*)</sup> </td>
							<td>
								<input class="w300 form-control pull-left" type="text" value="{DATA.tab_3_titletab}" name="tab_3_titletab" id="" maxlength="250" placeholder="{LANG.titletab}" style="margin-right:5px;width: 200px;" onchange="get_alias(this, '{ID}');"/>
								<input class="w300 form-control pull-left" type="text" value="{DATA.tab_3_alias}" name="tab_3_alias" id="" maxlength="250" placeholder="{LANG.alias}" />
							</td>
						</tr>
						<tr>
							<td class="text-right"> {LANG.icon}</td>
							<td><input class="w300 form-control pull-left" type="text" value="{DATA.tab_3_icon}" name="tab_3_icon" maxlength="250" /></td>
						</tr>
						<tr>
							<td colspan="2" class="strong" > {LANG.bodytext}
							<div>
								{DATA.tab_3_bodytext}
							</div></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="table-responsive">
				<table class="table table-striped table-bordered table-hover">
					<caption>Section 4:</caption>
					<colgroup>
						<col class="w200" />
						<col />
					</colgroup>
					<tbody>
						<tr>
							<td class="text-right"> {LANG.titletab}<sup class="required">(*)</sup> </td>
							<td>
								<input class="w300 form-control pull-left" type="text" value="{DATA.tab_4_titletab}" name="tab_4_titletab" id="" maxlength="250" placeholder="{LANG.titletab}" style="margin-right:5px;width: 200px;" onchange="get_alias(this, '{ID}');"/>
								<input class="w300 form-control pull-left" type="text" value="{DATA.tab_4_alias}" name="tab_4_alias" id="" maxlength="250" placeholder="{LANG.alias}" />
							</td>
						</tr>
						<tr>
							<td class="text-right"> {LANG.icon}</td>
							<td><input class="w300 form-control pull-left" type="text" value="{DATA.tab_4_icon}" name="tab_4_icon" maxlength="250" /></td>
						</tr>
						<tr>
							<td class="text-right">{LANG.image}</td>
							<td>
								<input class="w300 form-control pull-left" type="text" name="tab_4_image" id="tab_4_image" value="{DATA.tab_4_image}" style="margin-right: 5px"/>

								<button class="btn btn-info" type="button" onclick="nv_open_browse( '{NV_BASE_ADMINURL}index.php?{NV_NAME_VARIABLE}=upload&popup=1&area=tab_4_image&path={UPLOADS_DIR_USER}&type=file', 'NVImg', 850, 500, 'resizable=no,scrollbars=no,toolbar=no,location=no,status=no' ); return false; ">{LANG.browse}</button>
						</tr>
						<tr>
							<td class="text-right">{LANG.free_content}</td>
							<td>
								<select class="form-control w300" name="tab_4_bid">
									<option value="">Không chọn</option>
									<!-- BEGIN: tab_4_freecontent -->
									<option value="{FREECONTENT.bid}" {FREECONTENT.tab_4_checked}>{FREECONTENT.title}</option>
									<!-- END: tab_4_freecontent -->
								</select>
							</td>
						</tr>
					</tbody>
				</table>
			</div>


			<div class="table-responsive">
				<table class="table table-striped table-bordered table-hover">
					<caption>SEO</caption>
					<colgroup>
						<col class="w200" />
						<col />
					</colgroup>
					<tbody>
						<tr>
							<td class="text-right">{LANG.titlesite}</td>
							<td><input class="form-control" type="text" value="{DATA.titlesite}" name="titlesite" id="titlesite" maxlength="250" />&nbsp;<span class="text-middle"> {GLANG.length_characters}: <span id="titlesitelength" class="red">0</span>. {GLANG.titlesite_suggest_max} </span></td>
						</tr>
						<tr>
							<td class="text-right">{LANG.hometext}</td>
							<td><textarea class="form-control" id="hometext" name="hometext" cols="100" rows="3">{DATA.hometext}</textarea> {GLANG.length_characters}: <span id="hometextlength" class="red">0</span>. {GLANG.hometext_suggest_max}</td>
						</tr>
						<tr>
							<td class="text-right">{LANG.keywords}</td>
							<td>
								<div class="" style="overflow: auto">
									<div class="clearfix uiTokenizer uiInlineTokenizer">
										<div id="keywords" class="tokenarea">
											<!-- BEGIN: keywords -->
											<span class="uiToken removable" title="{KEYWORDS}" ondblclick="$(this).remove();"> {KEYWORDS} <input type="hidden" autocomplete="off" name="keywords[]" value="{KEYWORDS}" /> <a onclick="$(this).parent().remove();" class="remove uiCloseButton uiCloseButtonSmall" href="javascript:void(0);"></a> </span>
											<!-- END: keywords -->
										</div>
										<div class="uiTypeahead">
											<div class="wrap">
												<input type="hidden" class="hiddenInput" autocomplete="off" value="" />
												<div class="innerWrap">
													<input id="keywords-search" type="text" placeholder="{LANG.input_keyword}" class="form-control textInput" style="width: 100%;" />
												</div>
											</div>
										</div>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td class="text-right">{LANG.tags}</td>
							<td>
								<select multiple="multiple" style="width:100%" class="form-control" id="tags" name="tags[]">
									<!-- BEGIN: tag -->
									<option {selected_tag} value="{tag.id}">{tag.alias}</option>
									<!-- END: tag -->
								</select>
							</td>
						</tr>
						<tr class="hidden">
							<td class="text-right">{LANG.ratename}</td>
							<td><input class="w300 form-control pull-left" type="text" value="{DATA.ratename}"placeholder="Web24" name="ratename" maxlength="250" /></td>
						</tr>
						<tr class="hidden">
							<td class="text-right">{LANG.ratenumber}</td>
							<td><input class="w300 form-control pull-left" type="text"  placeholder="ví dụ: 9"value="{DATA.ratenumber}" name="ratenumber" maxlength="250" /></td>
						</tr>
						
					
						
					</tbody>
				</table>
			</div>
		</div>
		<div class="col-sm-24 col-md-6">
			<table class="table table-striped table-bordered table-hover">
				<tbody>
					<tr class="hidden">
						<td>{LANG.group_post}</td>
					</tr>
					<tr class="hidden">
						<td><label><input type="checkbox" value="1" name="hot_post"{HOST_POST}/> {LANG.hot_post}</label></td>
					</tr>
					
					<tr class="hidden">
						<td>{LANG.socialbutton}</td>
					</tr>
					<tr class="hidden">
						<td><label><input type="checkbox" value="1" name="socialbutton"{SOCIALBUTTON}/> {LANG.socialbuttonnote}</label></td>
					</tr>
					<tr>
						<td>{LANG.layout_func}</td>
					</tr>
					<tr>
						<td>
						<select name="layout_func" class="form-control">
							<option value="">{LANG.layout_default}</option>
							<!-- BEGIN: layout_func -->
							<option value="{LAYOUT_FUNC.key}"{LAYOUT_FUNC.selected}>{LAYOUT_FUNC.key}</option>
							<!-- END: layout_func -->
						</select></td>
					</tr>
					<!-- BEGIN: googleplus -->
					<tr>
						<td>{LANG.googleplus}</td>
					</tr>
					<tr>
						<td>
						<select name="gid" class="form-control w200">
							<!-- BEGIN: gid -->
							<option value="{GOOGLEPLUS.gid}"{GOOGLEPLUS.selected}>{GOOGLEPLUS.title}</option>
							<!-- END: gid -->
						</select></td>
					</tr>
					<!-- END: googleplus -->
					<tr class="hidden">
						<td>{LANG.activecomm}</td>
					</tr>
					<tr class="hidden">
						<td><!-- BEGIN: activecomm -->
						<div class="row">
							<label><input name="activecomm[]" type="checkbox" value="{ACTIVECOMM.value}" {ACTIVECOMM.checked} />{ACTIVECOMM.title}</label>
						</div><!-- END: activecomm --></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="row text-center"><input type="submit" value="{LANG.save}" class="btn btn-primary"/>
	</div>
</form>

<script type="text/javascript">
	
	$(document).ready(function() {
	  $('#tags').select2();
	});
	
	var uploads_dir_user = '{UPLOADS_DIR_USER}';
	$("#titlelength").html($("#idtitle").val().length);
	$("#idtitle").bind('keyup paste', function() {
		$("#titlelength").html($(this).val().length);
	});

	$("#descriptionlength").html($("#description").val().length);
	$("#description").bind('keyup paste', function() {
		$("#descriptionlength").html($(this).val().length);
	});
	
	$("#titlesitelength").html($("#titlesite").val().length);
	$("#titlesite").bind('keyup paste', function() {
		$("#titlesitelength").html($(this).val().length);
	});
	
	$("#hometextlength").html($("#hometext").val().length);
	$("#hometext").bind('keyup paste', function() {
		$("#hometextlength").html($(this).val().length);
	});
	
</script>
<!-- BEGIN: get_alias -->
<script type="text/javascript">
	$(document).ready(function() {
		$('#idtitle').change(function() {
			get_alias(elem, '{ID}');
		});
	});
</script>
<!-- END: get_alias -->
<!-- END: main -->