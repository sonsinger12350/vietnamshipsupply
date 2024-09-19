<!-- BEGIN: main --><div class="carousel">
	<div  id="owl-news" class="owl-carousel">
		<!-- BEGIN: loop -->
		<div class="clearfix news news-box">
			
			<a href="{ROW.link}" title="{ROW.title}"><img src="{ROW.thumb}" alt="{ROW.title}" /></a>
			
			
			<div class="panel-heading-duan"><a title="{ROW.title}" href="{ROW.link}" >{ROW.title_clean}</a></div>
		</div>
		<!-- END: loop-->
		
	</div>
</div>

<script type="text/javascript">
$(document).ready(function() {

  $("#owl-news").owlCarousel({
  	autoPlay: false,
  	slideSpeed : 800,
  	paginationSpeed : 800,
  	itemsCustom : [
        [0, 1],
        [450, 2],
        [700, 3],
		[900, 4],
		[1200, 5]
      ],
    navigation:false,
    afterInit : function(elem){
      var that = this
      that.owlControls.prependTo(elem)
    }
  });

});
</script>


		
		
<!-- END: main -->