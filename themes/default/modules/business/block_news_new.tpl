<!-- BEGIN: main -->
<div class="block_news_new">
	<div class="row">
		<div class="col-xs-24 col-sm-12 col-md-12">
			<!-- BEGIN: first -->
			<div class="news_item first">
				<div class="news_item-img">
					<!-- BEGIN: imgblock -->
					<a title="{blocknews.title}" href="{blocknews.link}" {blocknews.target_blank}><img data-original="{blocknews.imgurl}" alt="{blocknews.title}" class="lazy-img"/></a>
					<!-- END: imgblock -->
					<div class="news_item-date">
						<div class="news_item-date_day">{day}</div>
						<div class="news_item-date_month">Tháng {month}</div>
						<div class="news_item-date_year">{year}</div>						
					</div>
				</div>
				<div class="news_item-title">					
					<a {TITLE} class="" href="{blocknews.link}" {blocknews.target_blank}>{blocknews.title}</a>
				</div>
				<div class="news_item-des">
					{blocknews.hometext_clean}
				</div>
			</div>
			<!-- END: first -->
		</div>

		<div class="col-xs-24 col-sm-12 col-md-12">
			<!-- BEGIN: other -->
			<div class="news_item row">
				<div class=" col-md-8">
					<div class="news_item-img">
						<!-- BEGIN: imgblock -->
						<a title="{blocknews.title}" href="{blocknews.link}" {blocknews.target_blank}><img data-original="{blocknews.imgurl}" alt="{blocknews.title}" class="lazy-img"/></a>
						<!-- END: imgblock -->
					</div>
				</div>

				<div class="col-md-16">					
					<div class="news_item-title">
						<a {TITLE} class="" href="{blocknews.link}" {blocknews.target_blank}>{blocknews.title}</a>
					</div>
					<div class="news_item-date">
						<div class="news_item-date_dmy">{dmy}</div>					
					</div>
					<div class="news_item-des">
						{blocknews.hometext_clean}
					</div>
				</div>
			</div>
			<!-- END: other -->
		</div>
	</div>

</div>
<!-- BEGIN: tooltip -->
<script type="text/javascript">
$(document).ready(function() {$("[data-rel='block_news_tooltip'][data-content!='']").tooltip({
	placement: "{TOOLTIP_POSITION}",
	html: true,
	title: function(){return ( $(this).data('img') == '' ? '' : '<img class="img-thumbnail pull-left margin_image" src="' + $(this).data('img') + '" width="90" />' ) + '<p class="text-justify">' + $(this).data('content') + '</p><div class="clearfix"></div>';}
});});
</script>
<!-- END: tooltip -->
<!-- END: main -->