<!-- BEGIN: main -->
<div class="news_new-list row mg15">
	<!-- BEGIN: other -->
	<div class="col-xs-24 col-sm-8 news_new-item hover_scale_img">
		<div class="news_new-img ratio_4-3 ">
			<a title="{blocknews.title}" href="{blocknews.link}" {blocknews.target_blank}><img data-original="{blocknews.imgurl}" alt="{blocknews.title}" class="lazy-img"/></a>
		</div>
		<div class="news_new-date">
			{dmy}
		</div>
		<div class="news_new-title">
			<a {TITLE} class="" href="{blocknews.link}" {blocknews.target_blank}>{blocknews.title}</a>
		</div>
		<div class="news_new-des hidden">
			{blocknews.hometext_clean}
		</div>
	</div>
	<!-- END: other -->
</div>
<!-- END: main -->