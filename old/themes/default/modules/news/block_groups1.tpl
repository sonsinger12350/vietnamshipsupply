<!-- BEGIN: main -->
<div class="bao_news">
	<div class="col-xs-24 col-sm-12 col-md-12 tinchinh">
		<div class="row">
			<div class="col-xs-24 col-sm-14 col-md-13 anh_tinchinh">
				<a href="{ROW1.link}" title="{ROW1.title}"><img src="{ROW1.thumb}" alt="{ROW1.title}" class="img-thumbnail pull-left"/></a>
			</div>
			<div class="col-xs-24 col-sm-10 col-md-11 mota_tinchinh">
				<div class="tiede_tinchinh">
					<a href="{ROW1.link}" title="{ROW1.title}">{ROW1.title}</a>
				</div>
				<div class="posted_tinchinh">
				{ROW1.publtime}
				</div>
				<div class="hometext_tinchinh">
					{ROW1.hometext}
				</div>
			</div>
		</div>
	</div>
	<div class="col-xs-24 col-sm-12 col-md-12 tinphu">
		<!-- BEGIN: loop -->
		<div class="tieude_tinphu">
			<i class="fa fa-angle-right"></i>
			<a href="{ROW.link}" title="{ROW.title}">{ROW.title}</a>
		</div>
		<div class="posted_tinphu">
					{ROW.publtime}
		</div>
		<!-- END: loop -->
	</div>
</div>


<!-- END: main -->