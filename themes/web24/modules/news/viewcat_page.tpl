<!-- BEGIN: main -->
<!-- BEGIN: viewdescription -->
<div class="news_column">
	<div class="alert alert-info clearfix">
		<h1>{CONTENT.title}</h1>
		<!-- BEGIN: image -->
		<img alt="{CONTENT.title}" src="{HOMEIMG1}" width="{IMGWIDTH1}" class="img-thumbnail pull-left imghome" />
		<!-- END: image -->
		<p>{CONTENT.description}</p>
	</div>
</div>
<!-- END: viewdescription -->
<!-- BEGIN: viewcatloop -->
<div class="news_column">
	<!-- BEGIN: featured -->
	<div class="news_list-item">
		<div class="row"> 
			<div class="col-xs-24 col-sm-6">
				<div class="news_list-img ratio_4-3 hover_scale_img">
					<a href="{CONTENT.link}" title="{CONTENT.title}" {CONTENT.target_blank}><img  alt="{HOMEIMGALT1}" data-original="{HOMEIMG1}" class="lazy-img" /></a>
				</div>	
			</div>
			<div class="col-xs-24 col-sm-18">
				<div class="news_list-title">
					<h3>
						<a href="{CONTENT.link}" title="{CONTENT.title}" {CONTENT.target_blank}>{CONTENT.title}</a>
						<!-- BEGIN: nnewday --><span class="icon_new">&nbsp;</span><!-- END: nnewday -->
					</h3>
				</div>
				<div class="news_list-des">
					{CONTENT.hometext}
				</div>
				<!-- BEGIN: adminlink -->
				<p class="text-right">
					{ADMINLINK}
				</p>
				<!-- END: adminlink -->
			</div>
		</div>
	</div>
	<!-- END: featured -->
	<!-- BEGIN: news -->
	<div class="news_list-item">
		<div class="row">
			<div class="col-xs-24 col-sm-6">
				<div class="news_list-img ratio_4-3 hover_scale_img">
					<a href="{CONTENT.link}" title="{CONTENT.title}" {CONTENT.target_blank}><img  alt="{HOMEIMGALT1}" data-original="{HOMEIMG1}" class="lazy-img" /></a>
				</div>	
			</div>
			<div class="col-xs-24 col-sm-18">
				<div class="news_list-title">
					<h3>
						<a href="{CONTENT.link}" title="{CONTENT.title}" {CONTENT.target_blank}>{CONTENT.title}</a>
						<!-- BEGIN: nnewday --><span class="icon_new">&nbsp;</span><!-- END: nnewday -->
					</h3>
				</div>
				<div class="news_list-des">
					{CONTENT.hometext}
				</div>
				<!-- BEGIN: adminlink -->
				<p class="text-right">
					{ADMINLINK}
				</p>
				<!-- END: adminlink -->
			</div>
		</div>
	</div>
	<!-- END: news -->
</div>
<!-- END: viewcatloop -->
<!-- BEGIN: related -->
<hr/>
<h4>{ORTHERNEWS}</h4>
<ul class="related">
	<!-- BEGIN: loop -->
	<li>
		<em class="fa fa-angle-right">&nbsp;</em><a href="{RELATED.link}" title="{RELATED.title}" {EXTLINK}>{RELATED.title} <em>({RELATED.publtime}) </em></a>
		<!-- BEGIN: newday -->
		<span class="icon_new">&nbsp;</span>
		<!-- END: newday -->
	</li>
	<!-- END: loop -->
</ul>
<!-- END: related -->
<!-- BEGIN: generate_page -->
<div class="clearfix"></div>
<div class="text-center">
	{GENERATE_PAGE}
</div>
<!-- END: generate_page -->
<!-- END: main -->