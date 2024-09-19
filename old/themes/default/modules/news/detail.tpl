<!-- BEGIN: main -->
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/star-rating/jquery.rating.pack.js"></script>
<script src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/star-rating/jquery.MetaData.js" type="text/javascript"></script>
<link href="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/star-rating/jquery.rating.css" type="text/css" rel="stylesheet"/>
<link href="{NV_BASE_SITEURL}{NV_EDITORSDIR}/ckeditor/plugins/codesnippet/lib/highlight/styles/github.css" rel="stylesheet">

<div class="news_column panel">
	<div class="panel-body1">
		<div class="bao_ndchinh">
			<div class="nd_chinh">
				<h1><span>{DETAIL.title}</span></h1>
				<p></p>
			</div>
		</div>
        <div class="row" style="text-align:right">
            <span>
                <ul class="list-inline text-right" style="margin-top: 10px;">
        			<!-- BEGIN: allowed_send -->
        			<li><a class="dimgray" rel="nofollow" title="{LANG.sendmail}" href="javascript:void(0);" onclick="nv_open_browse('{URL_SENDMAIL}','{TITLE}',650,500,'resizable=no,scrollbars=yes,toolbar=no,location=no,status=no');return false"><em class="fa fa-envelope fa-lg">&nbsp;</em></a></li>
        			<!-- END: allowed_send -->
        			<!-- BEGIN: allowed_print -->
        			<li><a class="dimgray" title="{LANG.print}" href="javascript: void(0)" onclick="nv_open_browse('{URL_PRINT}','{TITLE}',840,500,'resizable=yes,scrollbars=yes,toolbar=no,location=no,status=no');return false"><em class="fa fa-print fa-lg">&nbsp;</em></a></li>
        			<!-- END: allowed_print -->
        			<!-- BEGIN: allowed_save -->
        			<li><a class="dimgray" title="{LANG.savefile}" href="{URL_SAVEFILE}"><em class="fa fa-save fa-lg">&nbsp;</em></a></li>
        			<!-- END: allowed_save -->
        		</ul>
            </span>
        </div>
		<!-- BEGIN: no_public -->
		<div class="alert alert-warning">
			{LANG.no_public}
		</div>
		<!-- END: no_public -->
		<!-- BEGIN: showhometext -->
		<div class="clearfix">
			<!-- BEGIN: imgthumb -->
            <!-- BEGIN: note -->
			<figure class="article left pointer" onclick="modalShowByObj('#imgpreview');">
                <div id="imgpreview" style="width:{DETAIL.image.width}px;">
                    <p class="text-center"><img alt="{DETAIL.image.alt}" src="{DETAIL.homeimgfile}" alt="{DETAIL.image.note}" class="img-thumbnail"/></p>
                    <figcaption>{DETAIL.image.note}</figcaption>
                </div>
            </figure>
            <!-- END: note -->
            <!-- BEGIN: empty -->
            <figure class="article left noncaption pointer" style="width:{DETAIL.image.width}px;" onclick="modalShowByObj(this);">
                    <p class="text-center"><img alt="{DETAIL.image.alt}" src="{DETAIL.homeimgfile}" alt="{DETAIL.image.note}" class="img-thumbnail"/></p>
            </figure>
            <!-- END: empty -->
			<!-- END: imgthumb -->
    		<!-- BEGIN: imgfull -->
    		<figure class="article center">
    			<img alt="{DETAIL.image.alt}" src="{DETAIL.image.src}" width="{DETAIL.image.width}" class="img-thumbnail" />
    			<!-- BEGIN: note --><figcaption>{DETAIL.image.note}</figcaption><!-- END: note -->
    		</figure>
    		<!-- END: imgfull -->
            <div class="hometext">{DETAIL.hometext}</div>
		</div>
		<!-- END: showhometext -->
		<div id="news-bodyhtml" class="bodytext margin-bottom-lg">
			{DETAIL.bodytext}
		</div>
		<!-- BEGIN: author -->
        <div class="margin-bottom-lg">
    		<!-- BEGIN: name -->
    		<p class="h5 text-right">
    			<strong>{LANG.author}: </strong>{DETAIL.author}
    		</p>
    		<!-- END: name -->
    		<!-- BEGIN: source -->
    		<p class="h5 text-right">
    			<strong>{LANG.source}: </strong>{DETAIL.source}
    		</p>
    		<!-- END: source -->
        </div>
		<!-- END: author -->
		<!-- BEGIN: copyright -->
		<div class="alert alert-info margin-bottom-lg">
			{COPYRIGHT}
		</div>
		<!-- END: copyright -->
    </div>
</div>

<!-- BEGIN: othersimg -->
<link rel="stylesheet" type="text/css" href="{NV_BASE_SITEURL}themes/default/js/dich_vu_pro.css"> 		
<script type="text/javascript" src="{NV_BASE_SITEURL}themes/default/js/owl.carousel.min.js"></script>
<script type="text/javascript">
	 $(document).ready(function() {

      var owl = $("#owl-demo1");

      owl.owlCarousel({
	  autoPlay : 1500,
      items : 4, //10 items above 1000px browser width
      itemsDesktop : [1000, 3], //5 items between 1000px and 901px
      itemsDesktopSmall : [900,2], // 3 items betweem 900px and 601px
      itemsTablet: [600,1], //2 items between 600 and 0;
      itemsMobile : false // itemsMobile disabled - inherit from itemsTablet option
      
      });

      // Custom Navigation Events
      $(".next1").click(function(){
        owl.trigger('owl.next');
      })
      $(".prev1").click(function(){
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
<div class="bao_slider chitiet_news">
	<div class="bao_dieuhuong">
		<a class="btn2 prev1"><i class="fa fa-angle-left"></i></a>
		<a class="btn2 next1"><i class="fa fa-angle-right"></i></a>
	</div>
 <div id="owl-demo1" class="owl-carousel owl-theme top10">
   <!-- BEGIN: loop -->
   <div class="item">
		<a href="{ROW.link}" title="{TITLE}"><img src="{IMG_SRC_OTHER}" alt="{ROW.title}" width="{ROW.blockwidth}" style="margin-bottom:10px" class="img-thumbnail pull-left"/></a>
   </div>
   <!-- END: loop -->  
 </div>
 </div>

<!-- END: othersimg -->


<!-- BEGIN: keywords -->
<div class="news_column panel ">
	<div class="panel-body">
        <div class="h5">
            <em class="fa fa-tags">&nbsp;</em><strong>{LANG.keywords}: </strong><!-- BEGIN: loop --><a title="{KEYWORD}" href="{LINK_KEYWORDS}"><em>{KEYWORD}</em></a>{SLASH}<!-- END: loop -->
        </div>
    </div>
</div>
<!-- END: keywords -->

<!-- BEGIN: adminlink -->
<p class="text-center margin-bottom-lg">
    {ADMINLINK}
</p>
<!-- END: adminlink -->


<!-- BEGIN: socialbutton -->
<div class="news_column panel ">
	<div class="panel-body">
        <div class="socialicon clearfix margin-bottom-lg">
        	<div class="fb-like" data-href="{SELFURL}" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true">&nbsp;</div>
	        <div class="g-plusone" data-size="medium"></div>
	        <a href="http://twitter.com/share" class="twitter-share-button">Tweet</a>
	    </div>
     </div>
</div>
<!-- END: socialbutton -->

<!-- BEGIN: comment -->
<div class="news_column panel ">
	<div class="panel-body">
	{CONTENT_COMMENT}
    </div>
</div>
<!-- END: comment -->

<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_EDITORSDIR}/ckeditor/plugins/codesnippet/lib/highlight/highlight.pack.js"></script>
<script type="text/javascript">hljs.initHighlightingOnLoad();</script>
<!-- END: main -->
<!-- BEGIN: no_permission -->
<div class="alert alert-info">
	{NO_PERMISSION}
</div>
<!-- END: no_permission -->