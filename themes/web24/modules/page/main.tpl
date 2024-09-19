<!-- BEGIN: main -->

<!-- BEGIN: warning -->
<div class="alert alert-danger">{LANG.warning}</div>
<!-- END: warning -->
<!-- BEGIN: rate -->
<script type="application/ld+json">
{
  "@context": "http://schema.org/",
  "@type": "Review",
  "itemReviewed": {
    "@type": "Thing",
    "name": "{CONTENT.ratename}"
  },
  "author": {
    "@type": "Person",
    "name": "{CONTENT.ratename}"
  },
  "reviewRating": {
    "@type": "Rating",
    "ratingValue": "{CONTENT.ratenumber}",
    "bestRating": "10"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Washington Times"
  }
}
</script>
<!-- END: rate -->

<div class="page ">
    <div class="">
        <h1 class="title margin-bottom-lg">{CONTENT.title}</h1>
    	<!-- BEGIN: socialbutton -->
    	<div class="well well-sm">
    		<ul class="nv-social-share">
    			<li class="facebook">
    				<div class="fb-like" data-href="{SELFURL}" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true">&nbsp;</div>
    			</li>
    			<li>
    				<a href="http://twitter.com/share" class="twitter-share-button">Tweet</a>
    			</li>
    		</ul>
    	</div>
    	<!-- END: socialbutton -->

        <!-- BEGIN: imageleft -->
        <figure class="article left noncaption pointer" style="width:100px" onclick="modalShow('', '<p class=\'text-center\'><img class=\'img-thumbnail\' src={CONTENT.image} /></p>');">
                <img alt="{CONTENT.title}" src="{CONTENT.image}" width="{CONTENT.imageWidth}" class="img-thumbnail" />
                <!-- BEGIN: alt --><figcaption>{CONTENT.imagealt}</figcaption><!-- END: alt -->
        </figure>
        <!-- END: imageleft -->

        <!-- BEGIN: description -->
        <div class="hometext margin-bottom-lg">{CONTENT.description}</div>
        <!-- END: description -->

    	<!-- BEGIN: imagecenter -->
        <figure class="article center pointer" onclick="modalShowByObj(this);">
    			<p class="text-center"><img alt="{CONTENT.title}" src="{CONTENT.image}" width="{CONTENT.imageWidth}" class="img-thumbnail" /></p>
    			<!-- BEGIN: alt --><figcaption>{CONTENT.imagealt}</figcaption><!-- END: alt -->
   		</figure>
    	<!-- END: imagecenter -->

    	<div class="clear"></div>

    	<div id="page-bodyhtml" class="bodytext margin-bottom-lg">
    		{CONTENT.bodytext}
    	</div>
    </div>
</div>
<!-- BEGIN: adminlink -->
<p class="text-center margin-bottom-lg">
    <a class="btn btn-primary" href="{ADMIN_EDIT}"><em class="fa fa-edit fa-lg">&nbsp;</em>{GLANG.edit}</a>
    <a class="btn btn-danger" href="javascript:void(0);" onclick="nv_del_content({CONTENT.id}, '{ADMIN_CHECKSS}','{NV_BASE_ADMINURL}')"><em class="fa fa-trash-o fa-lg">&nbsp;</em>{GLANG.delete}</a>
</p>
<!-- END: adminlink -->

<!-- BEGIN: tags -->
	    <div class="">
		    <div class="">
				<div class="tags">
					<em class="fa fa-tags">&nbsp;</em><strong>{LANG.tags}: </strong>
					<!-- BEGIN: loop -->
						<a title="{TAG}" href="{LINK_TAGS}"><em>{TAG}</em></a>{SLASH}
					<!-- END: loop -->
				</div>
			</div>
		</div>
<!-- END: tags -->
		
<!-- BEGIN: comment -->
<div class="page ">
    <div class="">
    {CONTENT_COMMENT}
    </div>
</div>
<!-- END: comment -->
<!-- BEGIN: other -->
<div class="page ">
    <div class="">
        <ul class="nv-list-item">
    		<!-- BEGIN: loop -->
    		<li><em class="fa fa-angle-double-right">&nbsp;</em><h3><a title="{OTHER.title}" href="{OTHER.link}">{OTHER.title}</a></h3></li>
    		<!-- END: loop -->
	   </ul>
    </div>
</div>
<!-- END: other -->
<!-- END: main -->