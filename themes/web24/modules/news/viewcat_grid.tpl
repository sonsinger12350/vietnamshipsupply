<!-- BEGIN: main -->
<!-- BEGIN: viewdescription -->
<div class="news_column">
	<div class="alert alert-info clearfix">
		<h3>{CONTENT.title}</h3>
		<!-- BEGIN: image -->
		<img alt="{CONTENT.title}" src="{HOMEIMG1}" width="{IMGWIDTH1}" class="img-thumbnail pull-left imghome" />
		<!-- END: image -->
		<p class="text-justify">{CONTENT.description}</p>
	</div>
</div>
<!-- END: viewdescription -->

<div class="template_primary">
	<div class="template_primary-heading">
		Our projects
	</div>
</div>

<div class="news_column row mg15">
	<!-- BEGIN: featuredloop -->
	<div class="col-xs-12 col-sm-12">
		<div class="grid_news">
			<div class="grid_news-img ratio_4-3 hover_scale_img">
				<!-- BEGIN: image -->
				<a href="{CONTENT.link}" title="{CONTENT.title}" {CONTENT.target_blank}><img  alt="{HOMEIMGALT1}" src="{HOMEIMG1}" class="lazy-img" /></a>
				<!-- END: image -->
			</div>
			<h3 class="grid_news-title">
				<a href="{CONTENT.link}" title="{CONTENT.title}" {CONTENT.target_blank}>{CONTENT.title}</a>
			</h3>
			<div class="grid_news-des hidden">
				{CONTENT.hometext}
			</div>
			<!-- BEGIN: adminlink -->
			<p class="text-right">
				{ADMINLINK}
			</p>
			<!-- END: adminlink -->
		</div>
	</div>
	<!-- END: featuredloop -->
	<!-- BEGIN: viewcatloop -->
	<div class="col-xs-12 col-sm-12">
		<div class="grid_news">
			<div class="grid_news-img ratio_4-3 hover_scale_img">
				<!-- BEGIN: image -->
				<a href="{CONTENT.link}" title="{CONTENT.title}" {CONTENT.target_blank}><img  alt="{HOMEIMGALT1}" src="{HOMEIMG1}" class="lazy-img" /></a>
				<!-- END: image -->
			</div>
			<h3 class="grid_news-title">
				<a href="{CONTENT.link}" title="{CONTENT.title}" {CONTENT.target_blank}>{CONTENT.title}</a>
			</h3>
			<div class="grid_news-des">
				{CONTENT.hometext}
			</div>
			<!-- BEGIN: adminlink -->
			<p class="text-right">
				{ADMINLINK}
			</p>
			<!-- END: adminlink -->
		</div>
	</div>
	<!-- END: viewcatloop -->
</div>
<div class="clear">&nbsp;</div>

<!-- BEGIN: generate_page -->
<div class="text-center">
	{GENERATE_PAGE}
</div>
<!-- END: generate_page -->
<script type="text/javascript">
$(window).on('load', function() {	
	$.each( $('.thumbnail'), function(k,v){
		var height1 = $($('.thumbnail')[k]).height();
		var height2 = $($('.thumbnail')[k+1]).height();
		var height = ( height1 > height2 ? height1 : height2 );
		$($('.thumbnail')[k]).height( height );
		$($('.thumbnail')[k+1]).height( height );
	});
});
</script>
<!-- END: main -->