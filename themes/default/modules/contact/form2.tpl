<!-- BEGIN: main -->
<div class="nv-fullbg row">
    <form method="post" class="form_contact" action="{ACTION_FILE}" onsubmit="return nv_validForm(this);" novalidate>
		<!-- BEGIN: ccats -->
		<div class="form-group">
			<div class="">
				<select class="form-control form_input" name="fcat">
					<!-- BEGIN: select_option_loop -->
					<option value="{SELECTVALUE}">
						{SELECTNAME}
					</option>
					<!-- END: select_option_loop -->
				</select>
			</div>
		</div>
		<!-- END: ccats -->
		<div class="col-md-24 contact-title">Gửi thông tin</div>
		<div class="col-md-24 contact-note"><span class="red">*</span> là thông tin bắt buộc</div>
		<div class="form-group hidden">
			<div class="">
				<input type="text" maxlength="255" class="form-control form_input required" value="Đăng ký nhận quà" name="ftitle" placeholder="{LANG.title}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_title}" />
			</div>
		</div>
		<!-- BEGIN: iguest -->
		<div class="form-group col-xs-24">
			<div class="">
				<input type="text" maxlength="100" value="" name="fname" class="form-control form_input required" placeholder="{LANG.fullname}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_fullname}" />
            </div>
		</div>
		<div class="form-group col-xs-24">
			<div class="">
				<input type="email" maxlength="60" value="" name="femail" class="form-control form_input required" placeholder="{LANG.email}" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_email}" />
			</div>
		</div>
		<!-- END: iguest -->
		<!-- BEGIN: iuser -->
		<div class="form-group col-xs-24">
			<div class="">
				<input type="text" maxlength="100" value="{CONTENT.fname}" name="fname" class="form-control form_input required disabled" disabled="disabled" placeholder="{LANG.fullname}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_fullname}" />
			</div>
		</div>
		<div class="form-group col-xs-24">
			<div class="">
				<input type="email" maxlength="60" value="{CONTENT.femail}" name="femail" class="form-control form_input required disabled" disabled="disabled" placeholder="{LANG.email}" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_email}" />
			</div>
		</div>
		<!-- END: iuser -->
		<div class="form-group col-xs-24">
			<div class="">
                <input type="text" maxlength="60" value="{CONTENT.fphone}" name="fphone" class="form-control form_input required" placeholder="{LANG.phone}" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_content}"/>
            </div>
        </div>
        <div class="form-group hidden">
			<div class="">
                <input type="text" maxlength="60" value="{CONTENT.faddress}" name="faddress" class="form-control form_input" placeholder="{LANG.address}" />
            </div>
        </div>
		<div class="form-group col-xs-24">
            <div>
    			<textarea cols="8" rows="6" name="fcon" class="form-control form_input hidden" maxlength="1000" placeholder="{LANG.content}"></textarea>
            </div>
		</div>
        <!-- BEGIN: sendcopy -->
        <div class="hidden form-group">
            <label><input type="checkbox" name="sendcopy" value="0" checked="checked" /><span>{LANG.sendcopy}</span></label>
        </div>
        <!-- END: sendcopy -->
        <!-- BEGIN: ccaptcha -->
		<div class="form-group">
            <div class="middle text-right clearfix">
                <img width="{GFX_WIDTH}" height="{GFX_HEIGHT}" title="{LANG.captcha}" alt="{LANG.captcha}" src="{NV_BASE_SITEURL}index.php?scaptcha=captcha&t={NV_CURRENTTIME}" class="captchaImg display-inline-block">
                <em onclick="change_captcha('.fcode');" title="{GLANG.captcharefresh}" class="fa fa-pointer fa-refresh margin-left margin-right"></em>
                <input type="text" placeholder="{LANG.captcha}" maxlength="{NV_GFX_NUM}" value="" name="fcode" class="fcode required form-control form_input display-inline-block" style="width:100px;" data-pattern="/^(.){{NV_GFX_NUM},{NV_GFX_NUM}}$/" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_captcha}"/>
            </div>
		</div>
        <!-- END: ccaptcha -->
        <!-- BEGIN: rrecaptcha -->
        <div class="form-group">
            <div class="middle text-center clearfix">
                <div class="nv-recaptcha-default"><div id="{RECAPTCHA_ELEMENT}"></div></div>
                <script type="text/javascript">
                nv_recaptcha_elements.push({
                    id: "{RECAPTCHA_ELEMENT}",
                    btn: $('[type="submit"]', $('#{RECAPTCHA_ELEMENT}').parent().parent().parent().parent())
                })
                </script>
            </div>
        </div>
        <!-- END: rrecaptcha -->
		<div class="text-center form-group col-xs-24">
			<input type="hidden" name="checkss" value="{CHECKSS}" />
			<input type="button" value="{LANG.reset}" class="btn btn-default hidden" onclick="nv_validReset(this.form);return!1;" />
			<input type="submit" value="{LANG.sendcontact}" name="btsend" class="btn-send_contact btn_default" />
		</div>
	</form>
    <div class="contact-result alert"></div>
</div>
<!-- END: main -->