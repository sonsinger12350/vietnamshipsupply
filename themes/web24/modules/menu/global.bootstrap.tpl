<!-- BEGIN: submenu -->
  <ul class="wsmenu-submenu">
    <!-- BEGIN: loop -->
    <li <!-- BEGIN: submenu -->class="dropdown-submenu"<!-- END: submenu -->> <!-- BEGIN: icon --> <img src="{SUBMENU.icon}" />&nbsp; <!-- END: icon --> <a href="{SUBMENU.link}" title="{SUBMENU.note}"{SUBMENU.target}>{SUBMENU.title_trim}</a> <!-- BEGIN: item --> {SUB} <!-- END: item -->
    <!-- END: loop -->
  </ul>
<!-- END: submenu -->



<!-- BEGIN: submenu_car -->

<div class="megamenu clearfix">
  <div class="clearfix"></div>
  <!-- BEGIN: loop -->
  <ul class="col-lg-6 col-md-6 col-sm-6 col-xs-8 col-6 link-list">
    <a href="{SUBMENU.link}" style="color: #424242;">
      <li class="title">{SUBMENU.title_trim}</li>
    </a>
  </ul>
  <!-- END: loop -->       
</div>
<!-- END: submenu_car -->


<!-- BEGIN: main -->
<script type="text/javascript" src="{NV_BASE_SITEURL}themes/web24/js/webmenu2.js"></script>

	<div class="overlapblackbg"></div>
	<div class="wsmobileheader clearfix"> <a id="wsnavtoggle" class="animated-arrow"><span></span></a> </div>
  
	<nav class="wsmenu clearfix">
	  <ul class="mobile-sub wsmenu-list">
	  <!-- <li><a title="{LANG.Home}" href="{THEME_SITE_HREF}" class="active dropeft">Trang chủ</a></li> -->
	  <!-- BEGIN: top_menu -->
		<li {TOP_MENU.current} role="presentation">
		  <a href="{TOP_MENU.link}"  class="dropeft" title="{TOP_MENU.title_trim}">{TOP_MENU.title_trim}<!-- BEGIN: has_sub --><span class="arrow"></span><!-- END: has_sub --></a>
		  <!-- BEGIN: sub -->
		  {SUB}
		  <!-- END: sub -->

		  <!-- BEGIN: car -->
		  {SUB_CAR}
		  <!-- END: car -->
		</li>
	  <!-- END: top_menu -->
	  </ul>
	</nav>

<script type="text/javascript">
  // var showMenu = false;
  /*$('#wsnavtoggle').click(function(){
    
      $('.wrapermenu ').toggleClass('wsoffcanvasopener');
  });*/
</script>
<!-- END: main -->
