<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}
<div class="full-breadcum">
    [BANNER_IMG]
    <nav class="breadcrumb_content font-urwdin">
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
		<div class="row mg15">
			<div class="col-xs-24 col-md-14 port-img">[PORT_IMG]</div>
			<div class="col-xs-24 col-md-10">
				[PORT_CONTENT]
				<div class="text-right">
					<a class="btn_contact btn_cus -bg_primary -white -brd_primary" href="/contact.html" title="" >{LANG.contactUs}</a> 
					<!-- BEGIN: hidden -->
	                <button type="button" class="ctb btn_contact btn_cus -bg_primary -white -brd_primary" data-module="contact" onclick="$('#form_modal').modal('show')">{LANG.contactUs}</button>
					<!-- END: hidden -->

	            </div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade modal_default" id="form_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="modal-close"></span></button>
            <div class="modal-body">
                [BLOCK_CONTACT]
            </div>
        </div>
    </div>
</div>

{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->