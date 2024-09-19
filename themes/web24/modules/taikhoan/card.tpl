<!-- BEGIN: main -->
<div class="div_pay">

	<div class="well">{LANG.payment_by_card}</div>
	<!-- BEGIN: error -->
	<div class="alert alert-danger">{ERROR}</div>
	<!-- END: error -->
	<div class="div_pay_form">
		<form id="fcontact" method="post" action="{ACTION}" onsubmit="return nv_check_pay_card();">
			<table class="table text-center">
				<tr>
					<td colspan="3">
						<table>
							<tr>
								<td style="padding-left: 0px; padding-top: 5px" align="right"><label for="92"><img src="{URL_IMAGE}/mobifone.jpg" /></label></td>
								<td style="padding-left: 10px; padding-top: 5px"><label for="93"><img src="{URL_IMAGE}/vinaphone.jpg" /></label></td>
								<td style="padding-top: 5px; padding-left: 5px" align="left"><label for="107"><img src="{URL_IMAGE}/viettel.jpg" width="110" height="35" /></label></td>
<!--
								<td style="padding-top: 5px; padding-left: 5px" align="left"><label for="121"><img width="100" height="35" src="{URL_IMAGE}/vtc.jpg"></label></td>
								<td style="padding-top: 5px; padding-left: 5px" align="left"><label for="120"><img width="100" height="35" src="{URL_IMAGE}/gate.jpg"></label></td>
-->
							</tr>
							<tr>
								<td style="padding-bottom: 0px;"><input type="radio" name="select_method" checked="true" value="VMS" id="92" /></td>
								<td style="padding-bottom: 0px; padding-left: 5px"><input type="radio" name="select_method" value="VNP" id="93" /></td>
								<td style="padding-bottom: 0px; padding-right: 0px"><input type="radio" name="select_method" value="VIETTEL" id="107" /></td>
<!--
								<td style="padding-right: 10px"><input type="radio" id="121" value="VCOIN" name="select_method" /></td>
								<td style="padding-bottom: 0px; padding-right: 0px"><input type="radio" id="120" value="GATE" name="select_method" /></td>
-->

							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align="right" style="padding-bottom: 10px">{LANG.number_seri}:</td>
					<td colspan="2"><input type="text" id="soseri" name="soseri" class="form-control" /></td>
				</tr>
				<tr>
					<td align="right">{LANG.number_card}:</td>
					<td colspan="2"><input type="text" id="sopin" name="sopin" class="form-control" /></td>
				</tr>
				<tr>
					<td><img title="{LANG.input_capchar}" alt="{LANG.input_capchar}" src="{SRC_CAPTCHA}" class="captchaImg display-inline-block" width="150" height="40" /> <em onclick="change_captcha('.fcode');" title="{LANG.change_captcha}" class="fa fa-pointer fa-refresh margin-left margin-right"></em></td>
					<td><input placeholder="{LANG.input_capchar}" maxlength="6" value="" name="captcha" class="fcode required form-control display-inline-block" style="width: 150px;" type="text" /> <input type="hidden" name="checkss" value="1" /> <input class="btn btn-primary" name="submit" type="submit" value="{LANG.customer_submit}" /></td>
				</tr>
			</table>
		</form>
	</div>
</div>
<script type="text/javascript">
    function nv_check_pay_card(){
        if( $('input[name=soseri]').val() == ''){
            $('input[name=soseri]').focus();
            $('input[name="soseri"]').attr('title', '{LANG.error_number_seri}');
            $('input[name="soseri"]').tooltip('show');
            $('input[name="soseri"]').parent().addClass('has-error has-feedback');
             return false;    
        }
        else if( $('input[name=sopin]').val() == ''){
            $('input[name=sopin]').focus();
            $('input[name="sopin"]').attr('title', '{LANG.error_number_card}');
            $('input[name="sopin"]').tooltip('show');
            $('input[name="sopin"]').parent().addClass('has-error has-feedback');
             return false;    
        }
        else if( $('input[name=captcha]').val() == ''){
            $('input[name=captcha]').focus();
            $('input[name="captcha"]').attr('title', '{LANG.alert_captcha}');
            $('input[name="captcha"]').tooltip('show');
            $('input[name="captcha"]').parent().addClass('has-error has-feedback');
             return false;    
        }
        else{
    		return true;
    	}
    }
</script>
<!-- END: main -->