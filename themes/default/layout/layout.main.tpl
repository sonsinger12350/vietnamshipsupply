<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}
<div class="full-breadcum">
    [BANNER_IMG]
    <nav class="third-nav">
        <div class="bg wraper">
            <div class="row">
                <div class="col-xs-24 col-sm-18 col-md-18">
                    <!-- BEGIN: breadcrumbs -->
                    <div class="title_breadcums">{TITLE}</div>
                    <div class="breadcrumbs-wrap">
                        <div class="display">
                            <a class="show-subs-breadcrumbs hidden" href="#" onclick="showSubBreadcrumbs(this, event);"><em class="fa fa-lg fa-angle-right"></em></a>
                            <ul class="breadcrumbs list-none"></ul>
                        </div>
                        <ul class="subs-breadcrumbs"></ul>
                        <ul class="temp-breadcrumbs hidden">
                            <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="{THEME_SITE_HREF}" itemprop="url" title="{LANG.Home}"><span itemprop="title">{LANG.Home}</span></a></li>
                            <!-- BEGIN: loop --><li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="{BREADCRUMBS.link}" itemprop="url" title="{BREADCRUMBS.title}"><span class="txt" itemprop="title">{BREADCRUMBS.title}</span></a></li><!-- END: loop -->
                        </ul>
                    </div>
                    <!-- END: breadcrumbs -->
                    <!-- BEGIN: currenttime --><span class="current-time">{NV_CURRENTTIME}</span><!-- END: currenttime -->
                </div>
            </div>
        </div>
    </nav>
</div>
<div class="wraper">
	<section>
		<div class="">

            [SLIDER]	
            <div class="row"style="">
            	<div class="col-md-24">
            		[TOP]
            		{MODULE_CONTENT}
            		[BOTTOM]
            	</div>
            </div>
            <div class="row">
            	[FOOTER]
            </div>
        </div>
    </section>
</div>
		
{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->