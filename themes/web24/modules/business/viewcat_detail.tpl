<!-- BEGIN: main -->
<script src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/star-rating/jquery.MetaData.js" type="text/javascript"></script>
<link href="{NV_BASE_SITEURL}{NV_EDITORSDIR}/ckeditor/plugins/codesnippet/lib/highlight/styles/github.css" rel="stylesheet">
<div class="clearfix"></div>
<div class="detail_cat-title font-montserrat"><h1>{DETAIL.title}</h1></div>
<div class="detail_cat-image"></div>

<div class="detail_cat-bodytext bodytext">{DETAIL.descriptionhtml}</div>
<div class="text-right">
	
	<a class="btn_contact btn_cus -bg_primary -white -brd_primary" href="/contact.html" title="" >{GLANG.contactUs}</a> 
	<!-- BEGIN: hidden -->
	<button type="button" class="ctb btn_contact btn_cus -bg_primary -white -brd_primary js-contact_modal" data-module="contact">{GLANG.contactUs}</button>
	<!-- END: hidden -->
</div>
<script>
	$('.js-contact_modal').click(function(){
		$('#form_modal').modal('show')
	});
</script>
<div class="modal fade modal_default" id="form_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                [BLOCK_CONTACT]
            </div>
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="modal-close"></span></button>
        </div>
    </div>
</div>
<div class="news_column  bodytext">
	<div class="">
	
        
		
    </div>
</div>

<!-- BEGIN: keywords -->
<div class="news_column ">
	<div class="">
        <div class="h5">
            <em class="fa fa-tags">&nbsp;</em><strong>{LANG.tags}: </strong><!-- BEGIN: loop --><a title="{KEYWORD}" href="{LINK_KEYWORDS}"><em>{KEYWORD}</em></a>{SLASH}<!-- END: loop -->
        </div>
    </div>
</div>
<!-- END: keywords -->

<div class="margin-bottom-lg"></div>
<!-- BEGIN: ssocialbutton -->
<div class="news_column ">
	<div class="">
        <div class="socialicon clearfix margin-bottom-lg">
        	<div class="fb-like" data-href="{SELFURL}" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true">&nbsp;</div>
	        <a href="http://twitter.com/share" class="twitter-share-button">Tweet</a>
	    </div>
     </div>
</div>
<!-- END: ssocialbutton -->
<!-- BEGIN: comment -->
<div class="news_column ">
	<div class="">
	{CONTENT_COMMENT}
    </div>
</div>
<!-- END: comment -->

<!-- BEGIN: others -->
<div class="news_column ">
	<div class=" other-news">
    	<!-- BEGIN: ttopic -->
        <div class="clearfix">
        	<p class="h3"><strong>{LANG.topic}</strong></p>
            <div class="clearfix">
            	<ul class="related">
            		<!-- BEGIN: loop -->
            		<li>
            			<em class="fa fa-angle-right">&nbsp;</em>
            			<a href="{TOPIC.link}" {TOPIC.target_blank} <!-- BEGIN: tooltip -->data-placement="{TOOLTIP_POSITION}" data-content="{TOPIC.hometext_clean}" data-img="{TOPIC.imghome}" data-rel="tooltip"<!-- END: tooltip --> title="{TOPIC.title}"><h4>{TOPIC.title}</h4></a>
            			<em>({TOPIC.time})</em>
            			<!-- BEGIN: newday -->
            			<span class="icon_new">&nbsp;</span>
            			<!-- END: newday -->
            		</li>
            		<!-- END: loop -->
            	</ul>
            </div>
        	<p class="text-right">
        		<a title="{TOPIC.topictitle}" href="{TOPIC.topiclink}">{LANG.more}</a>
        	</p>
        </div>
    	<!-- END: ttopic -->

    	<!-- BEGIN: related_new -->
        <div class="room_detail-template-head font-montserrat"><span>Những tin khác</span></div>
        <div class="news_list">
            <!-- BEGIN: loop -->
            <div class="news_list-item">
                <div class="row"> 
                    <div class="col-xs-10 col-sm-6">
                        <div class="news_list-img ratio_4-3 hover_scale_img">
                            <a href="{RELATED_NEW.link}" {RELATED_NEW.target_blank} title="{RELATED_NEW.title}"><img alt="{RELATED_NEW.title}" data-original="{RELATED_NEW.imghome}" class="lazy-img" /></a>
                        </div>  
                    </div>
                    <div class="col-xs-14 col-sm-18">
                        <div class="news_list-title">
                            <a href="{RELATED_NEW.link}" {RELATED_NEW.target_blank} title="{RELATED_NEW.title}">{RELATED_NEW.title}</a>
                        </div>
                        <div class="news_list-des">
                            {RELATED_NEW.hometext_clean}
                        </div>
                    </div>
                </div>
            </div>
            <!-- END: loop -->
        </div>
    	<!-- END: related_new -->

    	<!-- BEGIN: rrelated -->
    	<p class="h3"><strong>{LANG.related}</strong></p>
    	<div class="clearfix">
            <ul class="related list-inline">
        		<!-- BEGIN: loop -->
        		<li>
        			<em class="fa fa-angle-right">&nbsp;</em>
        			<a href="{RELATED.link}" {RELATED.target_blank} <!-- BEGIN: tooltip --> data-placement="{TOOLTIP_POSITION}" data-content="{RELATED.hometext_clean}" data-img="{RELATED.imghome}" data-rel="tooltip"<!-- END: tooltip --> title="{RELATED.title}"><h4>{RELATED.title}</h4></a>
        			<em>({RELATED.time})</em>
        			<!-- BEGIN: newday -->
        			<span class="icon_new">&nbsp;</span>
        			<!-- END: newday -->
        		</li>
        		<!-- END: loop -->
        	</ul>
        </div>
    	<!-- END: rrelated -->
    </div>
</div>
<!-- END: others -->

<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_EDITORSDIR}/ckeditor/plugins/codesnippet/lib/highlight/highlight.pack.js"></script>
<script type="text/javascript">hljs.initHighlightingOnLoad();</script>
<!-- END: main -->
<!-- BEGIN: no_permission -->
<div class="alert alert-info">
	{NO_PERMISSION}
</div>
<!-- END: no_permission -->