<!-- BEGIN: main -->
<!-- BEGIN: error -->
<div class="alert alert-danger">{ERROR}</div>
<!-- END: error -->

<form class="form-inline" action="{FORM_ACTION}" method="post">
    <input type="hidden" name="id" value="{DATA.id}" />
    <table class="table table-striped table-bordered table-hover">
        <tbody>
            <tr>
                <td>
                    {LANG.topic_name} <span class="red">(*)</span>
                </td>
                <td>
                    <input class="form-control" value="{DATA.title}" name="title" id="title" style="width:300px" maxlength="100" />
                </td>
            </tr>
            <tr>
				<td> {LANG.alias} <span class="red">(*)</span></td>
				<td>
				<input class="form-control" type="text" name="alias" value="{DATA.alias}" title="{LANG.alias}" style="width:300px" maxlength="255" id="id_alias" required="required" oninvalid="setCustomValidity(nv_required)" oninput="setCustomValidity('')"/>
				&nbsp;<i class="fa fa-refresh fa-lg icon-pointer" onclick="nv_get_alias('id_alias');">&nbsp;</i>
				</td>
			</tr>


            <tr class="hidden">
                <td>Nằm trong module</td>
                <td>
                    <select id="module_data" class="form-control" name="in_news_module" style="width:200px">
                        <option value="0" > Không chọn </option>
                        <!-- BEGIN: list_news_module -->
                        <option value="{MOD_DATA}" {MOD_SELECTED}> {MOD_NAME} </option>
                        <!-- END: list_news_module -->
                    </select>
                </td>
            </tr>
            <script type="text/javascript">                        
                $('#module_data').change(function(){
                    var cat_data = $(this).val();
                    if(cat_data != '' && cat_data != 0){
                        loadCart(cat_data);  
                    }
                    else{
                        $('#module_news_cat').html('<option value="0" > Không chọn </option>')
                    }
                });
                function loadCart(cat_data){
                    var urlAjax = '{URL_AJAX}';
                    $.ajax({
                        url: urlAjax,
                        type: 'POST',
                        data: {'cat_data': cat_data},
                        dataType: 'html',
                        success: function(result) {
                            $('#module_news_cat').html(result);
                        },
                        error: function(jqxhr, status, exception) {
                            alert('Exception:', exception);
                        }
                    });
                }
            </script>
            <tr>
                <td>Thuộc mục</td>
                <td>
                    <select id="module_news_cat" name="in_news_cat" class="form-control" style="width:200px">
                        <option value="0" > Không chọn </option>
                        <!-- BEGIN: list_news_cat -->
                        <option value="{CAT_DATA}" {CAT_SELECTED}> {CAT_NAME} </option>
                        <!-- END: list_news_cat -->
                    </select>
                </td>
            </tr>


            <tr>
                <td>
                    {LANG.description}
                </td>
                <td>
                    <input class="form-control" type="text" value="{DATA.description}" name="description" style="width:300px" maxlength="255" />
                </td>
            </tr>
            <tr>
                <td>
                    {LANG.keywords}
                </td>
                <td>
                    <input class="form-control" type="text" value="{DATA.keywords}" name="keywords" style="width:300px" maxlength="255" />
                </td>
            </tr>
            <tr>
                <td>
                    {LANG.topic_parent}
                </td>
                <td>
                    <select class="form-control" name="parentid">
                        <!-- BEGIN: parentid -->
                        <option value="{LISTCATS.id}"{LISTCATS.selected}>{LISTCATS.name}</option>
                        <!-- END: parentid -->
                    </select>
                </td>
            </tr>
			<tr>
				<td>
					{LANG.homeImg} (24 x 24px)
				</td>
				<td>
										
					<input class="form-control" style="width:300px" type="text" name="img" id="img" value="{DATA.img}" title="{LANG.homeImg}"/> 
					<input type="button" value="Browse server" name="selectimg" class="btn btn-info" /> 
				</td>
			</tr>
            <tr>
                <td colspan="2" class="text-center">
                    <input class="btn btn-primary" type="submit" name="submit" value="{LANG.save}" />
                </td>
            </tr>
        </tbody>
    </table>
</form>
<script type="text/javascript">

    $('#module_data,#module_news_cat').select2();


//<![CDATA[
var content_checkcatmsg = "{LANG.content_checkcatmsg}";
$("input[name=selectimg]").click(function() {
	var area = "img";
	var alt = "homeimgalt";
	var path = "{UPLOAD_CURRENT}/icons";
	var currentpath = "{UPLOAD_CURRENT}/icons";
	var type = "image";
	nv_open_browse(script_name + "?" + nv_name_variable + "=upload&popup=1&area=" + area + "&alt=" + alt + "&path=" + path + "&type=" + type + "&currentpath=" + currentpath, "NVImg", 850, 420, "resizable=no,scrollbars=no,toolbar=no,location=no,status=no");
	return false;
});

function nv_get_alias(id) {
	var title = strip_tags($("[name='title']").val());
	if (title != '') {
		$.post(script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=topic&nocache=' + new Date().getTime(), 'get_alias_title=' + encodeURIComponent(title), function(res) {
			$("#" + id).val(strip_tags(res));
		});
	}
	return false;
}
function nv_get_alias(id) {
    var title = strip_tags($("[name='title']").val());
    if (title != '') {
        $.post(script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=topic&nocache=' + new Date().getTime(), 'get_alias_title=' + encodeURIComponent(title), function(res) {
            $("#"+id).val(strip_tags(res));
        });
    }
    return false;
}
//]]>
</script>

<!-- BEGIN: auto_get_alias -->
<script type="text/javascript">
//<![CDATA[
    $("[name='title']").change(function() {
        nv_get_alias('id_alias');
    });
//]]>
</script>
<!-- END: auto_get_alias -->
<!-- END: main -->