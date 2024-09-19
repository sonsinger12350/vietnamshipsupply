            </div>
        <!-- </div>
    </div>
</section>   -->
        
<footer id="footer">
    <div class="container">
        <div class="wraper">
            <div class="row mg5">
                <div class="col-xs-24 col-sm-12 col-lg-8">
                    [INFO]
                    [MENU_DICHVU]
                </div>
                <div class="col-xs-24 col-sm-12 col-lg-4">
                    [MENU_CHUYENMUC]
                </div>
                <div class="col-xs-24 col-sm-12 col-lg-12">
                    [COMPANY_INFO]
                </div>
            </div>
        </div>
    </div>
</footer>
<div id="footer2">
    <div class="container">
        <div class="wraper">
            [COPYRIGHT]
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
<div class="fixed_hotline">
		[HOTLINE] 
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

<script type="text/javascript" defer>
	$(window).on("resize",function(){var e=$(".wraperheader");$(".fixed_wraperheader").height(e.outerHeight())}),$(window).ready(function(){$(".lazy-img").lazyload({effect:"fadeIn"});var e=$(".wraperheader"),r=$(".top_header");$(".fixed_wraperheader").height(e.outerHeight()),$(window).scroll(function(){$(window).scrollTop()>0?e.addClass("fixed"):e.removeClass("fixed")})});
</script>