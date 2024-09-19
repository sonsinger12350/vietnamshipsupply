<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}
<div class="full-breadcum">
    [BANNER_IMG]
    <nav class="container">
        <div class="wraper">
			<!-- BEGIN: breadcrumbs -->
			<div class="title_breadcums">{TITLE}</div>
			<ul class="breadcrumbs list-none" vocab="https://schema.org/" typeof="BreadcrumbList">
				<li property="itemListElement" typeof="ListItem">
					<a href="{THEME_SITE_HREF}" property="item" typeof="WebPage">
						<span property="name">{LANG.Home}</span>
					</a>
					<base property="position" content="1"/>
				</li>
				<!-- BEGIN: loop --><li property="itemListElement" typeof="ListItem">
					<a <!-- BEGIN: href -->href="{BREADCRUMBS.link}"<!-- END: href -->  property="item" typeof="WebPage" title="{BREADCRUMBS.title}"> 
						<span class="txt" property="name">{BREADCRUMBS.title}</span>
					</a>
					<base property="position" content="{BREADCRUMBS_POS}"/>
				</li>
				<!-- END: loop -->
			</ul>
			<!-- BEGIN: hide -->
			<div class="breadcrumbs-wrap">
				<div class="display">
					<a class="show-subs-breadcrumbs hidden" href="#" onclick="showSubBreadcrumbs(this, event);"><em class="fa fa-lg fa-angle-right"></em></a>
					<ul class="breadcrumbs list-none"></ul>
				</div>
				<ul class="subs-breadcrumbs"></ul>
				<ul class="temp-breadcrumbs hidden">
					<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="{THEME_SITE_HREF}" itemprop="url" title="{LANG.Home}"><span itemprop="title">{LANG.Home}</span></a></li>
					<!-- BEGIN: lloop --><li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="{BREADCRUMBS.link}" itemprop="url" title="{BREADCRUMBS.title}"><span class="txt" itemprop="title">{BREADCRUMBS.title}</span></a></li><!-- END: lloop -->
				</ul>
			</div>
				<!-- END: hide -->
			<!-- END: breadcrumbs -->
			<!-- BEGIN: currenttime --><span class="current-time">{NV_CURRENTTIME}</span><!-- END: currenttime -->
        </div>
    </nav>
</div>
<div class="container">
	<div class="wraper">
		[THEME_ERROR_INFO]
		<div class="row">
			[HEADER]
		</div>
		<div class="row">
			<div class="col-xs-24 col-sm-24 col-md-24 col-lg-19 order-lg-last">
				<div class="main_content">
					[TOP]
					{MODULE_CONTENT}
					[BOTTOM]
				</div>
			</div>
			<div class="col-xs-24 col-sm-24 col-md-24 col-lg-5 order-lg-first">
				<div class="left-catshop">
					[LEFT_CAT]
				</div>
				[LEFT]
			</div>
		</div>
		<div class="row">
			[FOOTER]
		</div>
	</div>
</div>
{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->