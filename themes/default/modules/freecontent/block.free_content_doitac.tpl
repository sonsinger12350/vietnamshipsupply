<!-- BEGIN: main -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/js/swiper.min.js"></script>

<div class="">
	<div id="" class="doitac_list swiper-container">	
		<div class="swiper-wrapper">
			<!-- BEGIN: loop -->
			<div class="doitac-item swiper-slide">
				<div class="quytrinh-img"><img class="lazy-img" src="{ROW.image}" alt="{ROW.title}">
				</div>
			</div>
			<!-- END: loop -->
		</div>

		<div class="doitac-prev">
			<i class="icofont-block-left"></i>
		</div>
	    <div class="doitac-next">
	    	<i class="icofont-block-right"></i>
	    </div>
	</div>
</div>
<script type="text/javascript">
	var swiper = new Swiper('.swiper-container', {
		slidesPerView: 3,
		slidesPerColumn: 3,
		spaceBetween: 30,
		navigation: {
	    	nextEl: '.swiper-button-next',
	    	prevEl: '.swiper-button-prev',
	    },
	});
</script>
<!-- END: main -->