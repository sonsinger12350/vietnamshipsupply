<!-- BEGIN: main -->
<div class="cat_menu">
	<div class="cat_menu-btn">
		<span></span>
		<span></span>
		<span></span>
	</div>
	<div class="cat_menu-layout">
	</div>
	<div class="cat_menu-list -header">
		<!-- BEGIN: cat -->
		<div class="cat_menu-item d-xs-block d-lg-flex justify-content-xs-between align-items-xs-center">
			<a href="{CAT.link}" title="{CAT.title}">{CAT.title}</a>	
			<!-- BEGIN: has_subcat -->
			<i class="icon_sub icofont-thin-right"></i>
			<!-- END: has_subcat -->		
			<!-- BEGIN: subcat -->
			{SUBCAT}
			<!-- END: subcat -->
		</div>
		<!-- END: cat -->
	</div>
</div>
<script type="text/javascript" defer>
	$(document).ready(function(){
		var catMenu = $('.cat_menu');
		var catMenuLayout = $('.cat_menu-layout');
		var catMenuBtn = $('.cat_menu-btn');
		var catMenuList = $('.cat_menu-list');
		var catIconSub = $('.icon_sub');
		
		var addClsMenuRow = 'row';
		var addClsMenuCol = 'col-xs-24 col-lg-6';
		$('.cat_menu-item > .cat_menu-sub').addClass(addClsMenuRow);
		$('.cat_menu-item > .cat_menu-sub > .cat_menu-sub-item').addClass(addClsMenuCol);
		
		catMenuBtn.click(function(){
			catMenu.toggleClass('active');
		});
		catMenuLayout.click(function(){
			catMenu.removeClass('active');
		});
		catIconSub.click(function(){
			$(this).toggleClass('arrow_down').next().slideToggle().parent().siblings().children('.icon_sub').removeClass('arrow_down').next().slideUp();
		});
	});
</script>
<!-- END: main -->
<!-- BEGIN: cat_submenu -->
<div class="cat_menu-sub">
	<!-- BEGIN: loop -->
	<div class="cat_menu-sub-item">
		<a href="{CAT_SUBCAT.link}" title="{CAT_SUBCAT.title}">{CAT_SUBCAT.title}</a>
		<!-- BEGIN: has_subcat -->
		<i class="icon_sub icofont-thin-right"></i>
		<!-- END: has_subcat -->
		<!-- BEGIN: sub_cat -->
		{SUBCAT}
		<!-- END: sub_cat -->
	</div>
	<!-- END: loop -->
</div>
<!-- END: cat_submenu -->