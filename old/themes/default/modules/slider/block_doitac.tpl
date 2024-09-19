/**
 * @Project NUKEVIET 4.0.10
 * @Author Web360do.vn Software Solutions.Ltd  (tuantmsh@gmail.com)
 * @Copyright (C) 2015 Web360do.vn  Software Solutions.Ltd. All rights reserved
 * @License GNU/GPL version 3 or any later version
 */

	<!-- BEGIN: main -->
<link rel="stylesheet" type="text/css" href="{THEME_TEM}/js/dich_vu_pro.css"> 		
<script type="text/javascript" src="{THEME_TEM}/js/owl.carousel.min.js"></script>
<script type="text/javascript">
	 $(document).ready(function() {

      var owl = $("#owl-demo");

      owl.owlCarousel({
	   autoPlay : 1500,
      items : 7, //10 items above 1000px browser width
      itemsDesktop : [1000, 5], //5 items between 1000px and 901px
      itemsDesktopSmall : [900,4], // 3 items betweem 900px and 601px
      itemsTablet: [600,2], //2 items between 600 and 0;
      itemsMobile : false // itemsMobile disabled - inherit from itemsTablet option
      
      });

      // Custom Navigation Events
      $(".next").click(function(){
        owl.trigger('owl.next');
      })
      $(".prev").click(function(){
        owl.trigger('owl.prev');
      })
      $(".play").click(function(){
        owl.trigger('owl.play',10000);
      })
      $(".stop").click(function(){
        owl.trigger('owl.stop');
      })


    });
</script>
<div style="position:relative">
	<a class="btn2 prev"><i class="fa fa-angle-left"></i></a>
    <a class="btn2 next"><i class="fa fa-angle-right"></i></a>
 <div id="owl-demo" class="owl-carousel owl-theme">
   <!-- BEGIN: loopdoitac -->
   <div class="item">
		<a href="{ROW.link}" title="{ROW.title}"><img src="{ROW.thumb}" alt="{ROW.title}" width="{ROW.blockwidth}" style="margin-bottom:10px" class="img-thumbnail pull-left"/></a>
   </div>
   <!-- END: loopdoitac -->  
 </div>
 </div>
<!-- END: main -->
