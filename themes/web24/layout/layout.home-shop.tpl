<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}

[SLIDER]
<div class="wraper" style="margin-top:20px;">
	<section>
		<div class="container">
        	[THEME_ERROR_INFO]
			<div class="row">
		  		<div class="col-sm-16 col-md-18">
					[TOP]
					{MODULE_CONTENT}
					[BOTTOM]
				</div>
				<div class="col-sm-8 col-md-6">
					[RIGHT]
				</div>
			</div>
			<div class="row">
				[FOOTER]
			</div>
		</div>
</section>
{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->