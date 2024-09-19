<noscript>
	<div class="alert alert-danger">{LANG.nojs}</div>
</noscript>
<div id="body" class="">
	<div class="fixed_wraperheader">
		<div class="wraperheader">
			<div class="top_header">
				<div class="container">
					<div class="wraper">
						<div class="row align-items-xs-center justify-content-xs-center">
							<div class="">
								<div class="top_header-content -mail">
									<i class="icofont-envelope"></i> [CONTACT_HEAD_MAIL]
								</div>
							</div>
							<div class="">
								<div class="top_header-content">
									<i class="icofont-phone"></i> [CONTACT_HEAD_PHONE]
								</div>
							</div>
							<div class="col-xs-12 col-sm-14 col-md-14 block_social hidden">
								[SOCIAL_ICONS]
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="wraper">
							<div id="header" class="d-xs-flex align-items-xs-center font-urwdin justify-content-xs-center justify-content-md-start">
								<div class="logo">
									<!-- BEGIN: image -->
									<a title="{SITE_NAME}" href="{THEME_SITE_HREF}"><img src="{LOGO_SRC}" width="{LOGO_WIDTH}" height="{LOGO_HEIGHT}" alt="{SITE_NAME}" /></a>
									<!-- END: image -->
								</div>
								<div class="slogan">									
									<!-- BEGIN: site_name_h1 -->
									<h1 class="site_name">{SITE_NAME}</h1>
									<!-- END: site_name_h1 -->
									
									<!-- BEGIN: site_name_span -->
									<span class="site_name">{SITE_NAME}</span>
									<!-- END: site_name_span -->
									
									<!-- BEGIN: site_description_span -->
									<span class="site_description">{SITE_DESCRIPTION}</span>
									<!-- END: site_description_span -->
									
									<!-- BEGIN: site_description_h2 -->
									<h2 class="site_description">{SITE_DESCRIPTION}</h2>
									<!-- END: site_description_h2 -->
								</div>
							</div>
							<!-- BEGIN: hidden -->
							<div class="col-xs-3 col-sm-5 col-md-4 col-lg-3 order-xs-1 order-lg-2 text-right">
								<div class="header_content-login block_login">
									[LOGIN] 
									<div id="tip" data-content="">
										<div class="bg">
										</div>
									</div>
								</div>
							</div>
							<div class="col-xs-3 col-sm-2 col-md-2 col-lg-2 col-xl-1 order-xs-2 order-lg-3 text-right">
								<div class="header_content-cart">
									[CART]
								</div>
							</div>
							<div class="col-xs-24 col-sm-18 col-md-18 hidden">
								<div class="header_content justify-content-xs-between align-items-xs-center">
								</div>
								
								[MENU_BANNER]
							</div>
							<!-- END: hidden -->
				</div>
			</div>
			<div class="full-menu">
				<div class="wraper row no-gutters">
					<div class="wrapermenu">
						[MENU_SITE]
						
						
						<div class="offcanvas">
							<a href="#offcanvas-usage" class="animated-arrow" uk-toggle><span></span></a>

							<div id="offcanvas-usage" uk-offcanvas="mode: reveal; overlay: true;">
								<div class="uk-offcanvas-bar uk-flex uk-flex-column">
									<button class="uk-offcanvas-close uk-close-large" type="button" uk-close></button>
									
									[MENU_OFFCANVAS]
							
									<div class="uk-panel">
										<div class="offcanvas-other -mail d-xs-flex flex-xs-wrap">
											<i class="icofont-envelope"></i>
											<div class="offcanvas-other-content"> 			 
												[CONTACT_HEAD_MAIL]
											</div>
										</div>
										<div class="offcanvas-other -phone d-xs-flex flex-xs-wrap">
											<i class="icofont-phone"></i>
											<div class="offcanvas-other-content">
												[CONTACT_HEAD_PHONE]
											</div>
										</div>
									</div>

								</div>
							</div>
							
						</div>
					</div>
					<div class="mobile_menu">
						
					</div>
					<div class="header_content-search headerSearch col-xs d-xs-flex justify-content-xs-end">
						<input type="text" class="headerSearch-input" maxlength="{NV_MAX_SEARCH_LENGTH}" placeholder="{LANG.search}...">
						<button type="button" class="headerSearch-btn" data-url="{THEME_SEARCH_URL}" data-minlength="{NV_MIN_SEARCH_LENGTH}" data-click="y" onclick="fadeToggleSearch();"><em class="icofont-search"></em></button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="website_content" class="">