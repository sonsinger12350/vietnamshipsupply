<!-- BEGIN: main -->
<form class="form-horizontal" action="" method="post">
	<div class="panel panel-default">
		<div class="panel-body">
			<div class="form-group">
				<label class="col-sm-3 control-label"><strong>{LANG.msystem_default_setting}</strong></label>
				<div class="col-sm-21">
					<select class="form-control" name="msystem_default">
						<option value="0">----------</option>
						<!-- BEGIN: msystem_default -->
						<option value="{MSYSTEM.id}"{MSYSTEM.selected}>{MSYSTEM.mcountry} - {MSYSTEM.symbol_inter}</option>
						<!-- END: msystem_default -->
					</select> <i class="help-block">{LANG.msystem_default_setting_note}</i>
				</div>
			</div>
		</div>
	</div>
	<div class="text-center">
		<input class="btn btn-primary" type="submit" value="{LANG.save}" name="Submit1" /><input type="hidden" value="1" name="savesetting">
	</div>
</form>
<!-- BEGIN: main -->