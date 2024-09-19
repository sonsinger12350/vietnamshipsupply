<!-- BEGIN: main -->
<div class="owl-carousel owl-theme partner">
	<!-- BEGIN: loop -->
	<div class="item">
		<img u="image" src="{DATA.image}" alt = "{DATA.title}"/> 
	</div>
	<!-- END: loop --> 
</div>


<script type="text/javascript">
	$(document).ready(function() {
		var owl = $('.partner');
		owl.owlCarousel({
			items: 0,
			nav: false,
			navigation : false,
			margin: 25,
			loop:true,
			autoplay:true,
			autoHeight: true,
			responsive: {
				0: {
					items: 1,
					navText:['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>']
				},
				600: {
					items: 5,
					navText:['<i class="fas fa-chevron-circle-left"></i>','<i class="fas fa-chevron-circle-right"></i>']
				},
				1000: {
					items: 6,
					navText:['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>']  
				}
			}
		});
	})

</script>  
<!-- END: main --> 
