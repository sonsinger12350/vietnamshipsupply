<!-- BEGIN: main -->
<!-- BEGIN: listcat -->
<div class="news_column">
	<div class="nd_chinh clearfix">
		
				<h1><span>{CAT.title}</span></h1>
	</div>
		<div class="panel-body1">
			<div class="row">
				<div class="{WCT}">
					<!-- BEGIN: image -->
					<a title="{CONTENT.title}" href="{CONTENT.link}"><img src="{HOMEIMG}" alt="{HOMEIMGALT}" width="{IMGWIDTH}" class="img-thumbnail pull-left imghome" /></a>
					<!-- END: image -->
					<h3>
						<a title="{CONTENT.title}" href="{CONTENT.link}">{CONTENT.title}</a>
						<!-- BEGIN: newday -->
						<span class="icon_new"></span>
						<!-- END: newday -->
					</h3>
					<div class="text-muted">
						<ul class="list-unstyled list-inline">
							<li><em class="fa fa-clock-o">&nbsp;</em> {CONTENT.publtime}</li>
							<li><em class="fa fa-eye">&nbsp;</em> {CONTENT.hitstotal}</li>
							<li><em class="fa fa-comment-o">&nbsp;</em> {CONTENT.hitscm}</li>
						</ul>
					</div>
					<p>{CONTENT.hometext}</p>
				</div>

				<!-- BEGIN: related -->
				<div class="col-md-8">
					<ul class="related">
						<!-- BEGIN: loop -->
						<li class="{CLASS}">
							<i class="fa fa-angle-right"></i>
							<a class="show h4" href="{OTHER.link}" title="{OTHER.title}">{OTHER.title}</a>
						</li>
						<!-- END: loop -->
					</ul>
				</div>
				<!-- END: related -->
			</div>
		</div>
	
</div>
<!-- END: listcat -->
<!-- END: main -->