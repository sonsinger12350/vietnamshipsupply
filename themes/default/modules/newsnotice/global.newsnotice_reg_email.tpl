<!-- BEGIN: main -->
<div class="nhantin">
	<div class="row">
		<div class="col-xs-24 col-sm-12">
			<div class="nhantin-title">
				{BLOCK_DATA.text}
			</div>
		</div>
		<div class="col-xs-24 col-sm-12">			
			<div class="nhantin-content">
				<form class="form-inline" action="{ACTION}" method="post">
					<input class="form-control" type="text" name="email" id="{MODULE_NAME}_email" placeholder="Địa chỉ E-mail" />
					<button class="btn_nhantin" name="do" type="submit">Đăng ký</button> 
				</form>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		$('button[name=do]').click(function() {
			var email = $('input[name=email]').val();

			if (email == '') {
				alert('{LANG.error_email_empty}');
				$('#{MODULE_NAME}_email').focus();
			} else if (!nv_email_check(document.getElementById('{MODULE_NAME}_email'))) {
				alert('{LANG.error_email_type}');
				$('#{MODULE_NAME}_email').focus();
			} else {
				$.ajax({
					type : "get",
					url : '{NV_BASE_SITEURL}' + 'index.php?' + '{NV_NAME_VARIABLE}=newsnotice&{NV_OP_VARIABLE}=checkmail',
					data : "email=" + email,
					success : function(a) {
						if (a > 0) {
							alert('{LANG.error_existed_email}');
							$('#{MODULE_NAME}_email').focus();
						} else {
							window.location.href = '{NV_BASE_SITEURL}' + 'index.php?' + '{NV_NAME_VARIABLE}=newsnotice&status=success&email=' + email;
						}
					}
				});
			}
			return false;
		});
	});
</script>
<!-- END: main -->