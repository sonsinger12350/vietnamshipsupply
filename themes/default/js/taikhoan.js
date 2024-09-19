/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2016 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Mon, 04 Apr 2011 06:38:53 GMT
 */

function nv_check_pay_send(nb)
{
	return true;
}
function loadmoney(val){
	nv_ajax('post', nv_siteroot + 'index.php', nv_lang_variable + '=' + nv_sitelang + '&' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=loadinfomoney&moneytunit=' + val, 'loadmoney1', '');
}
function checkrate(){
	var money1 = document.getElementById('money1').value;
	var money2 = document.getElementById('money2').value;
	
	nv_ajax('post', nv_siteroot + 'index.php', nv_lang_variable + '=' + nv_sitelang + '&' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=loadinfomoney&type=checkrate&money1=' + money1+'&money2=' + money2, 'result_check', '');
}

function tinhtoan(){
	var money1 = document.getElementById('money1').value;
	var money2 = document.getElementById('money2').value;
	var totalmoneyexchange = document.getElementById('totalmoneyexchange').value;
	if(isNaN(totalmoneyexchange)){
		alert(isnumber);
		return;
	}
	nv_ajax('post', nv_siteroot + 'index.php', nv_lang_variable + '=' + nv_sitelang + '&' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=loadinfomoney&type=tinhtoan&money1=' + money1+'&money2=' + money2+ '&totalmoneyexchange=' + totalmoneyexchange, 'loadresultmoney', '');
}

function giaodich(){
	if(confirm(isexchange)){
		var money1 = document.getElementById('money1').value;
		var money2 = document.getElementById('money2').value;
		var totalmoneyexchange = document.getElementById('totalmoneyexchange').value;
		if(isNaN(totalmoneyexchange)){
			alert(isnumber);
			return;
		}else if (money1 == money2){
		  alert(notchange);
		  return;
		}
		nv_ajax('post', nv_siteroot + 'index.php', nv_lang_variable + '=' + nv_sitelang + '&' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=loadinfomoney&type=exchange&money1=' + money1+'&money2=' + money2+ '&totalmoneyexchange=' + totalmoneyexchange, '', 'giaodich_res');

	}
}
function giaodich_res(res){
	if(res == "NOTENOUGH"){
		alert(notexchange);
	}else if(res == "NOTEX" ){
		alert(notexchange1);
	}else{
		alert(okexchange);
		window.location.href = nv_siteroot + 'index.php?' + nv_lang_variable + '=' + nv_sitelang + '&' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=money';
	}
}



//nap tien
 function checknap(){
    var nv_timer = nv_settimeout_disable( 'card_submit', 5000 );
    var card_type = document.getElementById( 'card_type' );
    var card_code = document.getElementById( 'card_code' );
    nv_ajax( "post", script_name, nv_name_variable+'='+nv_module_name+'&'+nv_fc_variable + '=epay&type=nap&cardtype=' + card_type.value + '&cardcode=' + card_code.value, '', 'res');
   return;
 }
 function res( res ){
    if( res == "OK"){
        alert('Bạn đã nạp tiền thành công. Hệ thống sẽ chuyển qua trang chi tiết tài khoản ngay bây giờ.');
        window.location.href = nv_siteroot + 'index.php?' + nv_lang_variable + '=' + nv_sitelang + '&' + nv_name_variable + '=taikhoan&' + nv_fc_variable + '=historyexchange';
    }else{
        alert('Nạp tiền không thành công, Vui lòng kiểm tra lại mã số thẻ của bạn !');
    }
 }
 
 function nv_check_form(OForm) {
	if (document.getElementById('f_value').value != '') {
		OForm.submit();
	}
	return false;
}
