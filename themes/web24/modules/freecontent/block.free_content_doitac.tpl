<!-- BEGIN: main -->
<!--link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css"-->
<!--script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/js/swiper.min.js"></script-->

<div id="" class="doitac-list owl-carousel owl-theme">	
	<!-- BEGIN: loop -->
	<div class="doitac-item ">
		<div class="quytrinh-img"><img class="owl-lazy" data-src="{ROW.image}" alt="{ROW.title}">
		</div>
	</div>
	<!-- END: loop -->
</div>
<!--script type="text/javascript">
	var swiper = new Swiper('.swiper-container', {
		slidesPerView: 3,
		slidesPerColumn: 3,
		spaceBetween: 30,
		navigation: {
	    	nextEl: '.swiper-button-next',
	    	prevEl: '.swiper-button-prev',
	    },
	});
</script-->
<script type="text/javascript">
$(document).ready(function() {
    var owl = $('.doitac-list');
    owl.owlCarousel({
        items: 6,
        nav: true,
        dots: false,
        loop: true,
		margin: 30,
        lazyLoad: true,
        autoplay: true,
        animateOut: 'fadeOut',
        autoHeight: true,
        navText: ['<i class="icofont-thin-left"></i>', '<i class="icofont-thin-right"></i>'],
        responsive: {
            0: {
                items: 2
            },
            600: {
                items: 5
            },
            1000: {
                items: 6
            }
        }
    });
})
</script>
<!-- END: main -->