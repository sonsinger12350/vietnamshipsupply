<!-- BEGIN: main -->
<link rel="stylesheet" type="text/css" href="{NV_BASE_SITEURL}themes/default/js/san-pham.css"> 		
<script type="text/javascript" src="{NV_BASE_SITEURL}themes/default/js/responsiveCarousel.min.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($){
		$('.product_center').carousel({ autoRotate: 41111000, speed: 800, overflow: false, visible: '4', itemMinWidth: 150, itemEqualHeight: true, itemMargin: 10 });
		$('.product_center').on("initCarousel", function(event, defaults, obj){
			$('#'+defaults.navigation).find('.previous, .next').css({ opacity: 0 });
			$('#product_center').hover( function(){
				$(this).find('.previous').css({ left: 0 }).stop(true, true).animate({ left: '20px', opacity: 1 });
				$(this).find('.next').css({ right: 0 }).stop(true, true).animate({ right: '20px', opacity: 1 });
			}, function(){
				$(this).find('.previous').animate({ left: 0, opacity: 0 });
				$(this).find('.next').animate({ right: 0, opacity: 0 });
			});
		});
	});
</script>

<div id="product_center">
	<div id="nav-07" class="crsl-nav">
		<div class="trang">
		<a href="#" class="previous"><i class="fa fa-angle-left"></i></a>
		<a href="#" class="next"><i class="fa fa-angle-right"></i></a>
		</div>
	</div>
	<div class="gallery product_center crsl-items" data-navigation="nav-07">
		<div class="crsl-wrap">
			<!-- BEGIN: loop -->
			<figure class="crsl-item" align="center">
				<div class="title_dv">
					{ROW.title}
				</div>
				<div class="image_dv"><a href="{ROW.link}" title="{ROW.title}"><img src="{ROW.thumb}" width="{WIDTH}" alt="{ROW.title}" class="thumbnail" /></a>
				</div>
				<div class="hometext_dv">
					{ROW.hometext}
				</div>
				<span class="redmore_dv">
						<a href="{ROW.link}" title="{ROW.title}">Read more</a>
				</span>
			</figure>
			<!-- END: loop -->
		</div>
	</div>
</div>
<!-- END: main -->