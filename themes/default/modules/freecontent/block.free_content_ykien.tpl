<!-- BEGIN: main -->

<div class="row">
	<div class="col-xs-24 col-sm-12 col-md-14">
		<div class="ykien_list owl-carousel owl-theme">
			<!-- BEGIN: loop -->
			<div class="ykien-item">
				<div class="ykien-des">
					{ROW.description}
				</div>
				<div class="ykien-title">
					{ROW.title}
				</div>
			</div>
			<!-- END: loop -->
		</div>
	</div>
	<div class="col-xs-24 col-sm-12 col-md-10">
	</div>
	<img class="img_thanhnienykien" src="/themes/default/images/thanhnien.png" title="Ý kiến khách hàng">
</div>
<script type="text/javascript">
$(document).ready(function() {

    var yKienowl = $('.ykien_list');
    yKienowl.owlCarousel({
        items: 1,
        nav: false,
        dots: false,
        loop: true,
        lazyLoad: true,
        autoplay: false,
        animateOut: 'fadeOut',
        autoHeight: true,
        responsive: {
            0: {
                items: 1,
                navText: ['<i class="icofont-block-left"></i>', '<i class="icofont-block-right"></i>']
            },
            600: {
                items: 1,
                navText: ['<i class="icofont-block-left"></i>', '<i class="icofont-block-right"></i>']
            },
            1000: {
                items: 1,
                navText: ['<i class="icofont-block-left"></i>', '<i class="icofont-block-right"></i>']
            }
        }
    });
})
</script>
<!-- END: main -->