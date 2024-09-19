<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended1.tpl"}
<nav class="dieu_huong">
    				<div class="row">
                        <div class="bg">
                        <div class="clearfix">
                            
                               
								
								 <!-- BEGIN: breadcrumbs -->
                                <div class="breadcrumbs">
                                    <span itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="{THEME_SITE_HREF}" itemprop="url" title="{LANG.Home}"><span itemprop="title">{LANG.Home}</span></a></span>
                                    <!-- BEGIN: loop -->
									<span><i class="fa fa-angle-right"></i></span>
									<span itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="{BREADCRUMBS.link}" itemprop="url" title="{BREADCRUMBS.title}"><span class="txt" itemprop="title">{BREADCRUMBS.title}</span></a></span><!-- END: loop -->
                                </div>
                                <!-- END: breadcrumbs -->
                            </div>
                       
                        </div>
                    </div>
                </nav>
<div class="row">
    <div class="col-sm-18 col-md-19 col-sm-push-6 col-md-push-5">
        {MODULE_CONTENT}
    </div>
	<div class="col-sm-6 col-md-5 col-sm-pull-18 col-md-pull-19">
		[LEFT]
	</div>
</div>
<div class="doitac_baolai">
	<div class="wraper">
		 [BOTTOM]
	</div>
</div>
<div class="row">
	[FOOTER]
</div>
{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->