<!-- BEGIN: main -->
<div class="nv-fullbg">
    <form method="post" class="form_contact row" action="{ACTION_FILE}" onsubmit="return nv_validForm(this);" novalidate>
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
        <div class="template_default">
			<div class="template_title font-montserrat form_contact-title_block">{LANG.title_block}</div>
			<div class="template_subtitle">{LANG.subtitle_block}</div>
		</div>
				
		<div class="form-group col-xs-24 col-md-24">
			<div class="row align-items-xs-center">
				<div class="col-xs-9 col-sm-10">
					<div class="form_contact-title">{LANG.title}*</div>
				</div>
				<div class="col-xs-15 col-sm-14">
					<input type="text" maxlength="255" class="form-control form_input required  form_contact-input" value="" name="ftitle" placeholder="{LANG.title}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_title}" />
				</div>
			</div>
		</div>
		<!-- BEGIN: iguest -->
		<div class="form-group col-xs-24 col-md-24">
			<div class="row align-items-xs-center">
				<div class="col-xs-9 col-sm-10">
					<div class="form_contact-title">{LANG.fullname}*</div>
				</div>
				<div class="col-xs-15 col-sm-14">
					<input type="text" maxlength="100" value="" name="fname" class="form-control form_input required  form_contact-input" placeholder="{LANG.fullname}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_fullname}" />
				</div>
            </div>
		</div>
		<div class="form-group col-xs-24 col-md-24">
			<div class="row align-items-xs-center">
				<div class="col-xs-9 col-sm-10">
					<div class="form_contact-title">{LANG.email}*</div>
				</div>
				<div class="col-xs-15 col-sm-14">
					<input type="email" maxlength="60" value="" name="femail" class="form-control form_input required  form_contact-input" placeholder="{LANG.email}" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_email}" />
				</div>
			</div>
		</div>
		<!-- END: iguest -->
		<!-- BEGIN: iuser -->
		<div class="form-group col-xs-24 col-md-24">
			<div class="row align-items-xs-center">
				<div class="col-xs-9 col-sm-10">
					<div class="form_contact-title">{LANG.fullname}*</div>
				</div>
				<div class="col-xs-15 col-sm-14">
					<input type="text" maxlength="100" value="{CONTENT.fname}" name="fname" class="form-control form_input required disabled  form_contact-input" disabled="disabled" placeholder="{LANG.fullname}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_fullname}" />
				</div>
			</div>
		</div>
		<div class="form-group col-xs-24 col-md-24">
			<div class="row align-items-xs-center">
				<div class="col-xs-9 col-sm-10">
					<div class="form_contact-title">{LANG.email}*</div>
				</div>
				<div class="col-xs-15 col-sm-14">
					<input type="email" maxlength="60" value="{CONTENT.femail}" name="femail" class="form-control form_input required disabled  form_contact-input" disabled="disabled" placeholder="{LANG.email}" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_email}" />
				</div>
			</div>
		</div>
		<!-- END: iuser -->
		<div class="form-group col-xs-24 col-md-24">
			<div class="row align-items-xs-center">
				<div class="col-xs-9 col-sm-10">
					<div class="form_contact-title">{LANG.phone}*</div>
				</div>
				<div class="col-xs-15 col-sm-14">
	                <input type="text" maxlength="60" value="{CONTENT.fphone}" name="fphone" class="form-control form_input required form_contact-input" placeholder="{LANG.phone}" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_content}"/>
	            </div>
            </div>
        </div>
        <div class="form-group hidden">
			<div class="">
                <input type="text" maxlength="60" value="{CONTENT.faddress}" name="faddress" class="form-control form_input" placeholder="{LANG.address}" />
            </div>
        </div>
		<div class="form-group col-xs-24 col-md-24">
			<div class="row align-items-xs-center">
				<div class="col-xs-9 col-sm-10">
					<div class="form_contact-title">{LANG.content}*</div>
				</div>
				<div class="col-xs-15 col-sm-14">
	    			<textarea cols="8" rows="4" name="fcon" class="form-control form_input   form_contact-textarea" maxlength="1000" placeholder="{LANG.content}"></textarea>
	    		</div>
            </div>
		</div>
        <!-- BEGIN: sendcopy -->
        <div class="hidden form-group">
            <label><input type="checkbox" name="sendcopy" value="0" checked="checked" /><span>{LANG.sendcopy}</span></label>
        </div>
        <!-- END: sendcopy -->
		<div class=" col-xs-24 col-md-24">
        	<!-- BEGIN: captcha -->
			<div class="form-group row align-items-xs-center">
				<div class="col-xs-9 col-sm-10">
					<div class="form_contact-title">{LANG.captcha}*</div>
				</div>
				<div class="col-xs-15 col-sm-14 d-xs-flex align-items-xs-center flex-xs-wrap">
	                <img width="{GFX_WIDTH}" height="{GFX_HEIGHT}" title="{LANG.captcha}" alt="{LANG.captcha}" src="{NV_BASE_SITEURL}index.php?scaptcha=captcha&t={NV_CURRENTTIME}" class="captchaImg display-inline-block">
	                <em onclick="change_captcha('.fcode');" title="{GLANG.captcharefresh}" class="fa fa-pointer fa-refresh margin-left margin-right"></em>
	                <input type="text" placeholder="{LANG.captcha}" maxlength="{NV_GFX_NUM}" value="" name="fcode" class="fcode required form-control form_input display-inline-block  form_contact-input" style="flex: 1 0 auto; width: 100px;" data-pattern="/^(.){{NV_GFX_NUM},{NV_GFX_NUM}}$/" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_captcha}"/>
	            </div>
            </div>
	        <!-- END: captcha -->
	        <!-- BEGIN: recaptcha -->
            <div class="middle text-center clearfix form-group">
                <div class="nv-recaptcha-default"><div id="{RECAPTCHA_ELEMENT}"></div></div>
                <script type="text/javascript" data-show="inline">
                nv_recaptcha_elements.push({
                    id: "{RECAPTCHA_ELEMENT}",
                    btn: $('[type="submit"]', $('#{RECAPTCHA_ELEMENT}').parent().parent().parent().parent())
                })
                </script>
            </div>
	        <!-- END: recaptcha -->
			<div class="text-right form-group">
				<input type="hidden" name="checkss" value="{CHECKSS}" />
				<input type="button" value="{LANG.reset}" class="btn btn-default hidden" onclick="nv_validReset(this.form);return!1;" />
				<input type="submit" value="{LANG.sendcontact}" name="btsend" class="btn-send_contact form_contact-btn btn_cus -bg_primary -white -brd_primary" />
			</div>
        </div>
	</form>
    <div class="contact-result alert"></div>
</div>
<!-- END: main -->