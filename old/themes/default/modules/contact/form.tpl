<!-- BEGIN: main -->
<div class="nv-fullbg contact_n">
    <form method="post" action="{ACTION_FILE}" onsubmit="return nv_validForm(this);" novalidate>
		<!-- BEGIN: iguest -->
		<div class="form-group">
				 <label class="control-label col-md-6">Full Name<span> &#42;</span></label>
				 <div class="col-md-18">
				<input type="text" maxlength="100" value="" name="fname" class="form-control required" placeholder="{LANG.fullname}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_fullname}" />
               
				</div>
		</div>
		<div class="form-group">
				 <label class="control-label col-md-6">
					Email<span> &#42;</span>
				</label>
				<div class="col-md-18">
				<input type="email" maxlength="60" value="" name="femail" class="form-control required" placeholder="{LANG.email}" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_email}" />
				</div>
		</div>
		<!-- END: iguest -->
		<!-- BEGIN: iuser -->
		<div class="form-group">
				<label class="control-label col-md-6">
					Full Name<span> &#42;</span>
				</label>
				<div class="col-md-18">
				<input type="text" maxlength="100" value="{CONTENT.fname}" name="fname" class="form-control required disabled" disabled="disabled" placeholder="{LANG.fullname}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_fullname}" />
				</div>
		</div>
		<div class="form-group">
				<label class="control-label col-md-6">
					Email<span> &#42;</span>
				</label>
				<div class="col-md-18">
				<input type="email" maxlength="60" value="{CONTENT.femail}" name="femail" class="form-control required disabled" disabled="disabled" placeholder="{LANG.email}" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_email}" />
				</div>
		</div>
		<!-- END: iuser -->
		<div class="form-group">
				<label class="control-label col-md-6">
					{LANG.phone}<span> &#42;</span>
				</label>
				<div class="col-md-18">
                <input type="text" maxlength="60" value="{CONTENT.fphone}" name="fphone" class="form-control" placeholder="{LANG.phone}" />
				</div>
        </div>
		
		<div class="form-group">
				 <label class="control-label col-md-6">
					Title Contact<span> &#42;</span>
					</label>
				<div class="col-md-18">
				<input type="text" maxlength="255" class="form-control required" value="{CONTENT.ftitle}" name="ftitle" placeholder="{LANG.title}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_title}" />
				</div>
		</div>
		<div class="form-group">
				<label class="control-label col-md-6">
					{LANG.content}<span> &#42;</span>
				</label>
				<div class="col-md-18">
    			<textarea cols="8" name="fcon" class="form-control required" maxlength="1000" placeholder="{LANG.content}" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_content}"></textarea>
				</div>
		</div>
		<div class="form-group">
			<label class="control-label col-md-6">
					{LANG.captcha}<span> &#42;</span>
				</label>
            <div class="middle text-right clearfix col-md-18">
                <img width="{GFX_WIDTH}" height="{GFX_HEIGHT}" title="{LANG.captcha}" alt="{LANG.captcha}" src="{NV_BASE_SITEURL}index.php?scaptcha=captcha&t={NV_CURRENTTIME}" class="captchaImg display-inline-block">
                <em onclick="change_captcha('.fcode');" title="{GLANG.captcharefresh}" class="fa fa-pointer fa-refresh margin-left margin-right"></em>
                <input type="text" placeholder="{LANG.captcha}" maxlength="{NV_GFX_NUM}" value="" name="fcode" class="fcode required form-control display-inline-block" style="width:150px;" data-pattern="/^(.){{NV_GFX_NUM},{NV_GFX_NUM}}$/" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_captcha}"/>
            </div>
		</div>
		<div class="text-center form-group" style="float:right">
			<input type="hidden" name="checkss" value="{CHECKSS}" />
			<input type="button" style="padding-left: 30px;padding-right: 30px;margin-right:15px;" value="{LANG.reset}" class="btn btn-default" onclick="nv_validReset(this.form);return!1;" />
			<input type="submit" value="{LANG.sendcontact}" style="padding-left: 30px;padding-right: 30px;" name="btsend" class="btn btn-primary" />
		</div>
	</form>
    <div class="contact-result alert"></div>
</div>
<!-- END: main -->