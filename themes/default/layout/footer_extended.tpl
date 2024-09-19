            </div>
        <!-- </div>
    </div>
</section>   -->
        
<footer id="footer">
    <div class="containerr">
        <div class="wraper ">
            <div class=" row">   
                <div class="col-xs-24 col-sm-24 col-md-12">
                    [INFO]
                </div>
                <div class="col-xs-24 col-sm-24 col-md-12">
                    [MENU_CHUYENMUC]
                </div>
                <div class="col-xs-24 col-sm-24 col-md-24">
                    [MENU_DICHVU]
                </div>
                <div class="col-xs-24 col-sm-24 col-md-24">
                    [COMPANY_INFO]
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</footer>
<div id="footer2">
    <div class="containerr">
        <div class="wraper">
            <div class="footer_bottom ">
                <div class="row">
                    <div class="col-xs-24 col-md-16">
                        [FOOTER_SITE]
                    </div>
                    <div class="col-xs-24 col-md-8">
                        [SOCIAL_ICON]
                    </div>
                </div>
                <!-- BEGIN: theme_type -->
                <div class="theme-change">
                <!-- BEGIN: loop -->
                    <!-- BEGIN: other -->
                    <a href="{STHEME_TYPE}" rel="nofollow" title="{STHEME_INFO}"><em class="fa fa-{STHEME_ICON} fa-lg"></em></a>
                    <!-- END: other -->
                    <!-- BEGIN: current -->
                    <span title="{LANG.theme_type_select}: {STHEME_TITLE}"><em class="fa fa-{STHEME_ICON} fa-lg"></em></span>
                    <!-- END: current -->
                <!-- END: loop -->
                </div>
                <!-- END: theme_type -->
            </div>
        </div>
    </div>
</div>

{ADMINTOOLBAR}
</div></div>
<!-- SiteModal Required!!! -->
<div id="sitemodal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <em class="fa fa-spinner fa-spin">&nbsp;</em>
            </div>
            <button type="button" class="close" data-dismiss="modal"><span class="fa fa-times"></span></button>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(window).ready(function(){
        $('.lazy-img').lazyload({
			effect : "fadeIn"
		});
        $(".group_news-des").max(function(){return $(this).outerHeight();});


        
        $(window).scroll(function(){
            
        });
    });
</script>