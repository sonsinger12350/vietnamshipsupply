/**
 * @Project NUKEVIET 4.x
 * @Author MyNukeViet (contact@mynukeviet.com)
 * @Copyright (C) 2016 MyNukeViet. All rights reserved
 * @Createdate Mon, 04 Apr 2011 06:38:53 GMT
 */

function ChangeActive(idobject, url_active) {
	var id = $(idobject).attr('id');
	$.ajax({
		type : 'POST',
		url : url_active,
		data : 'id=' + id,
		success : function(data) {
			alert(data);
		}
	});
}

function nv_check_form_add() {
	var money = $('input[name=money]');
	var notice = $('textarea[name=notice]').val();
	var userid = $('select[name=userid]');
	var typeadd = $("select[name=typeadd]").val();
	var typeuser = $("select[name=typeuser]").val();
	var typedv = $("select[name=typedv]").val();

	if (userid.val() == undefined || userid.val() == '') {
		alert(LANG.error_required_userid);
		userid.focus();
		return false;
	} else if (money.val() == '') {
		alert(LANG.error_required_money);
		money.focus();
		return false;
	} else {
		$.post(script_name + '?' + nv_name_variable + '=' + nv_module_name
				+ '&' + nv_fc_variable + '=addacount&nocache='
				+ new Date().getTime(), 'submit=1&money=' + money.val() + '&typeadd='
				+ typeadd + '&typeuser='
				+ typeuser + '&typedv='
				+ typedv + '&notice=' + notice + '&userid=' + userid.val(),
				function(res) {
					if (res == "OK")
						window.location.href = 'index.php?' + nv_name_variable
								+ '=' + nv_module_name + '&op=main';
					else
						alert(res);
					return;
				});
	}
	return false;
}

function nv_check_form(OForm) {
	if (document.getElementById('f_value').value != '') {
		OForm.submit();
	}
	return false;
}

function nv_view_transaction(id) {
	nv_open_browse(script_name + '?' + nv_name_variable + '='
			+ nv_module_name + '&' + nv_fc_variable + '=viewtransaction&id='
			+ id, "view_bill_" + id, "850", "420",
			"scrollbars=yes,toolbar=no,location=no,status=no");
}

function nv_view_transaction_all(id) {
	window.location.href = 'index.php?' + nv_name_variable + '='
			+ nv_module_name + '&op=users&userid=' + id;
}

function nv_chang_status(vid) {
	var nv_timer = nv_settimeout_disable('change_status_' + vid, 5000);
	$.post(script_name + '?' + nv_name_variable + '=' + nv_module_name + '&'
			+ nv_fc_variable + '=main&nocache=' + new Date().getTime(),
			'changestatus=1&userid=' + vid, function(res) {
				if (res != 'OK') {
					alert(nv_is_change_act_confirm[2]);
					window.location.href = window.location.href;
				}
			});
	return;
}