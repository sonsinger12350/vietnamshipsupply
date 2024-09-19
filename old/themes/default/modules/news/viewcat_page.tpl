<!-- BEGIN: main -->
<!-- BEGIN: viewdescription -->
<div class="bao_ndchinh">
	<div class="nd_chinh">
		<h1><span>{CONTENT.title}</span></h1>
	</div>
	<p>{CONTENT.descriptionhtml}</p>
</div>
<!-- END: viewdescription -->
<!-- BEGIN: viewcatloop -->
<div class="news_column news_column1">
	<!-- BEGIN: featured -->
<div class="col-xs-24 col-sm-8 col-md-8">
	<div class="panel ">
		<div class="panel-body featured">
			<!-- BEGIN: image -->
			<div class="image_chitiet">
			<a href="{CONTENT.link}" title="{CONTENT.title}"><img  alt="{HOMEIMGALT1}" src="{HOMEIMG1}" width="{IMGWIDTH1}" class="img-thumbnail pull-left imghome" /></a>
			</div>
			<!-- END: image -->
			<div class="tieude_chitiet">
			<h3>
				<a href="{CONTENT.link}" title="{CONTENT.title}">{CONTENT.title}</a>
				<!-- BEGIN: newday --><span class="icon_new">&nbsp;</span><!-- END: newday -->
			</h3>
			</div>
			
			
			<div class="detail_news"><span><a href="{CONTENT.link}" title="{CONTENT.title}">Read more</a></span></div>
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
<div class="col-xs-24 col-sm-8 col-md-8">
	<div class="panel ">
		<div class="panel-body">
			<!-- BEGIN: image -->
			<div class="image_chitiet">
			<a href="{CONTENT.link}" title="{CONTENT.title}"><img  alt="{HOMEIMGALT1}" src="{HOMEIMG1}" width="{IMGWIDTH1}" class="img-thumbnail pull-left imghome" /></a>
			</div>
			<!-- END: image -->
			<div class="tieude_chitiet">
			<h3>
				<a href="{CONTENT.link}" title="{CONTENT.title}">{CONTENT.title}</a>
				<!-- BEGIN: newday -->
				<span class="icon_new">&nbsp;</span>
				<!-- END: newday -->
			</h3>
			</div>
			
			<div class="detail_news"><span><a href="{CONTENT.link}" title="{CONTENT.title}">Read more</a></span></div>
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
		<em class="fa fa-angle-right">&nbsp;</em><a href="{RELATED.link}" title="{RELATED.title}">{RELATED.title} <em>({RELATED.publtime}) </em></a>
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


<!-- BEGIN: socialbutton -->
<div class="news_column panel ">
	<div class="panel-body">
        <div class="socialicon clearfix margin-bottom-lg">
        	<div class="fb-like" data-href="{SELFURL}" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true">&nbsp;</div>
	        <div class="g-plusone" data-size="medium"></div>
	        <a href="http://twitter.com/share" class="twitter-share-button">Tweet</a>
	    </div>
     </div>
</div>
<!-- END: socialbutton -->










<!-- END: main -->