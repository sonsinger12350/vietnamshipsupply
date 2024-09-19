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
    <div class="col-sm-12 col-md-12 col-sm-push-12 col-md-push-12">
        {MODULE_CONTENT}
    </div>
	<div class="col-sm-12 col-md-12 col-sm-pull-12 col-md-pull-12">
		[LEFT]
	</div>
</div>
<div class="row">
	[OUR_BUSINESS]
</div>

		</div>
	</section>
</div>
<div class="ban_do">
	[BAN_DO]
</div>

<div class="wraper">
	<section>
		<div class="container" id="body">
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