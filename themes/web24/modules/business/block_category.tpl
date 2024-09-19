<!-- BEGIN: subcat -->
<ul>
	<!-- BEGIN: loop -->
	<li>
		<a href="{SUBCAT.link}" title="{SUBCAT.title}">{SUBCAT.title0}</a>
		<!-- BEGIN: sub -->
		{SUB}
		<!-- END: sub -->
	</li>
	<!-- END: loop -->
</ul>
<!-- END: subcat -->

<!-- BEGIN: main -->


<div class="block_our_business row mg15">
	<!-- BEGIN: cat -->
	<div class="col-xs-24 col-md-8">
		<div class="block_our_business-item d-xs-flex flex-xs-column">
			<div class="block_our_business-img ratio_2-1">
				<img class="lazy-img" data-original="{CAT.image}" alt="{CAT.title}">
			</div>
			<div class="block_our_business-content">
				<a class="block_our_business-title" href="{CAT.link}" title="{CAT.title}">{CAT.title0}</a>
				<p class="block_our_business-des">{CAT.description}</p>
				<div class="block_our_business-viewmore">
					<a class="" href="{CAT.link}" title="{CAT.title}">{GLANG.readmore}</a>
				</div>
			</div>
		</div>
	</div>

		<!-- BEGIN: ssubcat -->
		<span class="fa arrow expand">&nbsp;</span>
		{SUBCAT}
		<!-- END: ssubcat -->
	<!-- END: cat -->
</div>
<!-- END: main -->