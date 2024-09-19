                </div>
            </section>
        </div>
        <footer id="footer">
            <div class="wraper">
                <div class="container">
					<div class="row">
					
					 [MENU_FOOTER]
					</div>
                    <div class="row">
                         <div class="col-xs-24 col-sm-18 col-md-18">
                            [COMPANY_INFO]
							</div>
						
                        <div class="col-xs-24 col-sm-16 col-md-6">
                           [STATIS]
                        </div>
                       
                    </div>
                   
                </div>
            </div>
        </footer>
        <nav class="footerNav2">
            <div class="wraper">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-24 col-sm-12 col-md-16">
                            <div class="panel-body11">
                            	[FOOTER_SITE]
                            </div>
                        </div>
						 <div class="col-xs-24 col-sm-12 col-md-8">
                            <div>
                                [SOCIAL_ICONS]
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </nav>
        {ADMINTOOLBAR}
    </div>
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
	<div class="fix_banner_left">
		[FIX_BANNER_LEFT]
	</div>
	<div class="fix_banner_right">
		[FIX_BANNER_RIGHT]
	</div>
					<div class="bttop">
                        <a class="pointer"><em class="fa fa-chevron-up"></em></a>
                    </div>
	<script type="text/javascript">
$(function(){
/*$('body').append('<div id="top"></div>');*/
$(window).scroll(function(){
var $toa_do=$(window).scrollTop();
if($toa_do<500){
$('.bttop').fadeOut();
}else {
$('.bttop').fadeIn();
} ;
});
});
</script>