<!-- BEGIN: main -->
<div class="page_list">
	<!-- BEGIN: loop -->
	<div class="page_list-item">
		<div class="row"> 
			<div class="col-xs-10 col-sm-6">
				<div class="page_list-img">
					<!-- BEGIN: image -->
					<a href="{DATA.link}" title="{DATA.title}"><img class="lazy-img" data-orginal="{DATA.image}" alt="{DATA.imagealt}" width="100" /></a>
					<!-- END: image -->
				</div>
			</div>
			<div class="col-xs-14 col-sm-18">
				<div class="page_list-title">
					<h3><a href="{DATA.link}" title="{DATA.title}">{DATA.title}</a></h3>
				</div>
				<div class="page_list-des">
					<p>{DATA.description}</p>
				</div>
			</div>
		    <!-- BEGIN: adminlink -->
			<p class="text-right adminlink">
				<em class="fa fa-edit fa-lg">&nbsp;</em><a href="{ADMIN_EDIT}">{GLANG.edit}</a>
				<em class="fa fa-trash-o fa-lg">&nbsp;</em> <a href="javascript:void(0);" onclick="nv_del_content({DATA.id}, '{ADMIN_CHECKSS}','{NV_BASE_ADMINURL}')">{GLANG.delete}</a>
			</p>
			<!-- END: adminlink -->
		</div>
	</div>
	<!-- END: loop -->
	<div class="text-center">{GENERATE_PAGE}</div>
</div>
<!-- END: main -->