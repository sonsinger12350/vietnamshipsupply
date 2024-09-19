<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended1.tpl"}
 <nav class="dieu_huong">
    				<div class="row">
                        <div class="bg">
                        <div class="clearfix">
                            
                               
								
								 <!-- BEGIN: breadcrumbs -->
                                <div class="breadcrumbs ">
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
    <div class="content_1">
        {MODULE_CONTENT}
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