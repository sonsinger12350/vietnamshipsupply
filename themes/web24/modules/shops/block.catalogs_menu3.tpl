<!-- BEGIN: main -->
<div class="cat_menu2-list">
	<!-- BEGIN: cat -->
	<div class="cat_menu2-item">
		<a href="{CAT.link}" title="{CAT.title}">{CAT.title}</a>
		<!-- BEGIN: subcat -->
		<i class="icofont-thin-right"></i>
		{SUBCAT}
		<!-- END: subcat -->
	</div>
	<!-- END: cat -->
</div>
<!-- END: main -->
<!-- BEGIN: cat_submenu -->
<div class="cat_menu2-sub">
	<!-- BEGIN: loop -->
	<div class="cat_menu2-sub-item">
		<a href="{CAT_SUBCAT.link}" title="{CAT_SUBCAT.title}">{CAT_SUBCAT.title}</a>
		<!-- BEGIN: subcat -->
		<i class="icofont-thin-right"></i>
		{SUBCAT}
		<!-- END: subcat -->
	</div>
	<!-- END: loop -->
</div>
<!-- END: cat_submenu -->