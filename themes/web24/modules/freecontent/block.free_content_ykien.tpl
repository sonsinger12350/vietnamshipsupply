<!-- BEGIN: main -->
<div class="accrediation owl-carousel owl-theme">
	<!-- BEGIN: loop -->
	<div class="accrediation-item">
        <img class="owl-lazy" data-src="{ROW.image}" alt="{ROW.title}">
	</div>
	<!-- END: loop -->
</div>

<script type="text/javascript">
$(document).ready(function() {

    var yKienowl = $('.accrediation');
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
                navText: ['<i class="icofont-dotted-left"></i>', '<i class="icofont-dotted-right"></i>']
            },
            600: {
                items: 1,
                navText: ['<i class="icofont-dotted-left"></i>', '<i class="icofont-dotted-right"></i>']
            },
            1000: {
                items: 1,
                navText: ['<i class="icofont-dotted-left"></i>', '<i class="icofont-dotted-right"></i>']
            }
        }
    });
})
</script>
<!-- END: main -->