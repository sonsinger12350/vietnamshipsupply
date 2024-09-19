<!-- BEGIN: main -->
<input type="hidden" id="hidden_key" value="{HIDDEN_KEY}" />
<ul class="nav nav-tabs m-bottom">
	<li class="active">
		<a>{LANG.search_on} &quot;{MODULE_CUSTOM_TITLE}&quot; &nbsp;&nbsp;<span class="label label-info">{SEARCH_RESULT_NUM}</span></a>
	</li>
	<!-- BEGIN: more -->
	<li class="pull-right">
		<a href="{MORE}"><em class="fa fa-thumb-tack">&nbsp;</em> {LANG.view_all_title}</a>
	</li>
	<!-- END: more -->
</ul>
<!-- BEGIN: result -->
<div class="search_result margin-bottom-lg">
	<div class="row">
		<div class="col-xs-24 col-sm-6">
			<div class="search_result-img ratio_4-3">
				<img class="lazy-img" data-original="{RESULT.image}" loading="lazy"/>
			</div>
		</div>
		<div class="col-xs-24 col-sm-18">
			<div class="search_result-content">
				<h3 class="margin-bottom-sm"><a href="{RESULT.link}">{RESULT.title}</a></h3>
				<div class="margin-bottom-lg">{RESULT.content}</div>
			</div>
		</div>
	</div>
</div>
<!-- END: result -->
<!-- BEGIN: generate_page -->
<div class="text-center">
	{GENERATE_PAGE}
</div>
<!-- END: generate_page -->
<!-- END: main -->