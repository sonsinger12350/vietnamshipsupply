<!-- BEGIN: main -->
<!-- BEGIN: viewdescription -->
<div class="grid_business-heading">
	<div class="detail_cat-title font-montserrat"><h1>{CONTENT.title}</h1></div>
	<!-- BEGIN: iimage -->
	<img alt="{CONTENT.title}" src="{HOMEIMG1}" width="{IMGWIDTH1}" class="img-thumbnail pull-left imghome" />
	<!-- END: iimage -->
	<p class="text-justify">{CONTENT.descriptionhtml}</p>
    <div class="text-right">
		<a class="btn_contact btn_cus -bg_primary -white -brd_primary" href="/contact.html" title="" >{GLANG.contactUs}</a> 
		<!-- BEGIN: hidden -->
		<button type="button" class="ctb btn_contact btn_cus -bg_primary -white -brd_primary" data-module="contact" onclick="$('#form_modal').modal('show')">{GLANG.contactUs}</button>
		<!-- END: hidden -->
    </div>
</div>
<!-- END: viewdescription -->

<div class="grid_business row mg15">
	<!-- BEGIN: featuredloop -->
	<div class="col-xs-12 col-sm-12 col-md-8">
		<div class="grid_business-item">
			<div class="grid_business-img ratio_4-3 hover_scale_img">
				<!-- BEGIN: image -->
				<a href="{CONTENT.link}" title="{CONTENT.title}" {CONTENT.target_blank}><img  alt="{HOMEIMGALT1}" src="{HOMEIMG1}" class="lazy-img" /></a>
				<!-- END: image -->
				<div class="grid_business-viewmore">
					<a class="btn_cus -bg_primary -white -brd_primary" href="{CONTENT.link}" title="{CONTENT.title}" {CONTENT.target_blank}>{GLANG.readmore}</a>
				</div>
			</div>
			<h3 class="grid_business-title">
				<a href="{CONTENT.link}" title="{CONTENT.title}" {CONTENT.target_blank}>{CONTENT.title}</a>
			</h3>
			<div class="grid_business-des hidden">
				{CONTENT.hometext}
			</div>
			<!-- BEGIN: adminlink -->
			<p class="text-right">
				{ADMINLINK}
			</p>
			<!-- END: adminlink -->
		</div>
	</div>
	<!-- END: featuredloop -->
	<!-- BEGIN: viewcatloop -->
	<div class="col-xs-12 col-sm-12 col-md-8">
		<div class="grid_business-item">
			<div class="grid_business-img ratio_4-3 hover_scale_img">
				<!-- BEGIN: image -->
				<a href="{CONTENT.link}" title="{CONTENT.title}" {CONTENT.target_blank}><img  alt="{HOMEIMGALT1}" src="{HOMEIMG1}" class="lazy-img" /></a>
				<!-- END: image -->
				<div class="grid_business-viewmore">
					<a class="btn_cus -bg_primary -white -brd_primary" href="{CONTENT.link}" title="{CONTENT.title}" {CONTENT.target_blank}>{GLANG.readmore}</a>
				</div>
			</div>
			<h3 class="grid_business-title">
				<a href="{CONTENT.link}" title="{CONTENT.title}" {CONTENT.target_blank}>{CONTENT.title}</a>
			</h3>
			<div class="grid_business-des">
				{CONTENT.hometext}
			</div>
			<!-- BEGIN: adminlink -->
			<p class="text-right">
				{ADMINLINK}
			</p>
			<!-- END: adminlink -->
		</div>
	</div>
	<!-- END: viewcatloop -->
</div>

<div class="modal fade modal_default" id="form_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                [BLOCK_CONTACT]
            </div>
            <button type="button" class="close" data-dismiss="modal"><span class="fa fa-times"></span></button>
        </div>
    </div>
</div>

<!-- BEGIN: generate_page -->
<div class="text-center">
	{GENERATE_PAGE}
</div>
<!-- END: generate_page -->
<script type="text/javascript">
$(window).on('load', function() {	
	$.each( $('.thumbnail'), function(k,v){
		var height1 = $($('.thumbnail')[k]).height();
		var height2 = $($('.thumbnail')[k+1]).height();
		var height = ( height1 > height2 ? height1 : height2 );
		$($('.thumbnail')[k]).height( height );
		$($('.thumbnail')[k+1]).height( height );
	});
});
</script>
<!-- END: main -->