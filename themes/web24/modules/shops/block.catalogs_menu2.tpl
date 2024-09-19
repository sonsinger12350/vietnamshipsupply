<!-- BEGIN: main -->
<div class="cat_menu2-wraper">
	<div class="cat_menu2-list">
		<!-- BEGIN: cat -->
		<div class="cat_menu2-item">
			<a href="{CAT.link}" title="{CAT.title}">{CAT.title}<!-- BEGIN: has_subcat -->
			<i class="icofont-thin-right"></i><!-- END: has_subcat --></a>
			<!-- BEGIN: subcat -->
			{SUBCAT}
			<!-- END: subcat -->
		</div>
		<!-- END: cat -->
	</div>
</div>
<!-- END: main -->
<!-- BEGIN: cat_submenu -->
<div class="cat_menu2-sub">
	<div class="row">
		<!-- BEGIN: loop -->
		<div class="col-xs-12 col-lg-6">
			<div class="cat_menu2-sub-item">
				<div class="cat_menu2-sub-item-parent">
					<a href="{CAT_SUBCAT.link}" title="{CAT_SUBCAT.title}">{CAT_SUBCAT.title}</a>
				</div>
				<!-- BEGIN: subcat -->
				{CAT_SUBSUBCAT}
				<!-- END: subcat -->
			</div>
		</div>
		<!-- END: loop -->
	</div>
</div>
<!-- END: cat_submenu -->
<!-- BEGIN: cat_subsubmenu -->
	<!-- BEGIN: loop -->
	<div class="cat_menu2-sub-item-child">
		<a href="{CAT_SUBCAT.link}" title="{CAT_SUBCAT.title}">{CAT_SUBCAT.title}</a>
	</div>
	<!-- END: loop -->
<!-- END: cat_subsubmenu -->