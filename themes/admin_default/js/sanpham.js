/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 1 - 31 - 2010 5 : 12
 */

function nv_chang_weight(vid) {
	var nv_timer = nv_settimeout_disable('change_weight_' + vid, 5000);
	var new_weight = $('#change_weight_' + vid).val();
	$.post(script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=change_weight&nocache=' + new Date().getTime(), 'id=' + vid + '&new_weight=' + new_weight, function(res) {
		nv_chang_weight_res(res);
	});
	return;
}

function nv_chang_status(vid) {
	var nv_timer = nv_settimeout_disable('change_status_' + vid, 5000);
	var new_status = $('#change_status_' + vid).val();
	$.post(script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=change_status&nocache=' + new Date().getTime(), 'id=' + vid + '&new_status=' + new_status, function(res) {
		nv_chang_weight_res(res);
	});
	return;
}

function nv_chang_weight_res(res) {
	var r_split = res.split("_");
	if (r_split[0] != 'OK') {
		alert(nv_is_change_act_confirm[2]);
		clearTimeout(nv_timer);
	} else {
		window.location.href = window.location.href;
	}
	return;
}

function nv_module_del(did, checkss) {
	if (confirm(nv_is_del_confirm[0])) {
		$.post(script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=del&nocache=' + new Date().getTime(), 'id=' + did + '&checkss=' + checkss, function(res) {
			var r_split = res.split("_");
			if (r_split[0] == 'OK') {
				window.location.href = window.location.href;
			} else {
				alert(nv_is_del_confirm[2]);
			}
		});
	}
	return false;
}

function get_aliasgoc(id) {
	var title = strip_tags(document.getElementById('idtitle').value);
	if (title != '') {
		$.post(script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=alias&nocache=' + new Date().getTime(), 'title=' + encodeURIComponent(title) + '&id=' + id, function(res) {
			if (res != "") {
				document.getElementById('idalias').value = res;
			} else {
				document.getElementById('idalias').value = '';
			}
		});
	}
	return false;
}

function get_alias(elem, id) {
	// var title = strip_tags(document.getElementById('idtitle').value);
	var title = strip_tags($(elem).val());
	if (title != '') {
		$.post(script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=alias&nocache=' + new Date().getTime(), 'title=' + encodeURIComponent(title) + '&istab=1&id=' + id, function(res) {
			if (res != "") {
				$(elem).next().val(res);
			} else {
				$(elem).next().val('');
			}
		});
	}
	return false;
}

$(document).ready(function(){
	$("input[name=selectimg]").click(function() {
		var area = "tab_3_image";
		var alt = "imagealt";
		var path = uploads_dir_user;
		var type = "image";
		nv_open_browse(script_name + "?" + nv_name_variable + "=upload&popup=1&area=" + area + "&alt=" + alt + "&path=" + path + "&type=" + type, "NVImg", 850, 420, "resizable=no,scrollbars=no,toolbar=no,location=no,status=no");
		return false;
	});
	$("input[name=selectfile]").click(function() {
		var area = "tab_3_file";
		var alt = "imagealt";
		// var path = uploads_dir_user;
		var path = '';
		var type = "";
		nv_open_browse(script_name + "?" + nv_name_variable + "=upload&popup=1&area=" + area + "&alt=" + alt + "&path=" + path + "&type=" + type, "NVImg", 850, 420, "resizable=no,scrollbars=no,toolbar=no,location=no,status=no");
		return false;
	});
});

function selectImg(area){
	var alt = "imagealt";
	var path = uploads_dir_user;
	var type = "image";
	nv_open_browse(script_name + "?" + nv_name_variable + "=upload&popup=1&area=" + area + "&alt=" + alt + "&path=" + path + "&type=" + type, "NVImg", 850, 420, "resizable=no,scrollbars=no,toolbar=no,location=no,status=no");
	return false;
}


// Keywords autocomplete
function nv_add_element( idElment, key, value ){
   var html = "<span title=\"" + value + "\" class=\"uiToken removable\" ondblclick=\"$(this).remove();\">" + value + "<input type=\"hidden\" value=\"" + key + "\" name=\"" + idElment + "[]\" autocomplete=\"off\"><a onclick=\"$(this).parent().remove();\" href=\"javascript:void(0);\" class=\"remove uiCloseButton uiCloseButtonSmall\"></a></span>";
    $("#" + idElment).append( html );
    return false;
}
$("#keywords-search").bind("keydown", function(event) {
	if (event.keyCode === $.ui.keyCode.TAB && $(this).data("ui-autocomplete").menu.active) {
		event.preventDefault();
	}

	if(event.keyCode==13){
		var keywords_add= $("#keywords-search").val();
		keywords_add = trim( keywords_add );
		if( keywords_add != '' ){
			nv_add_element( 'keywords', keywords_add, keywords_add );
			$(this).val('');
		}
		return false;
	}

});

$("#keywords-search").blur(function() {
	// add placeholder to get the comma-and-space at the end
	var keywords_add= $("#keywords-search").val();
	keywords_add = trim( keywords_add );
	if( keywords_add != '' ){
		nv_add_element( 'keywords', keywords_add, keywords_add );
		$(this).val('');
	}
	return false;
});
$("#keywords-search").bind("keyup", function(event) {
	var keywords_add= $("#keywords-search").val();
	if(keywords_add.search(',') > 0 )
	{
		keywords_add = keywords_add.split(",");
		for (i = 0; i < keywords_add.length; i++) {
			var str_keyword = trim( keywords_add[i] );
			if( str_keyword != '' ){
				nv_add_element( 'keywords', str_keyword, str_keyword );
			}
		}
		$(this).val('');
	}
	return false;
});
// Keywords autocomplete end