    	<!-- BEGIN: lt_ie9 --><p class="chromeframe">{LANG.chromeframe}</p><!-- END: lt_ie9 -->
        <div id="timeoutsess" class="chromeframe">
            {LANG.timeoutsess_nouser}, <a onclick="timeoutsesscancel();" href="#">{LANG.timeoutsess_click}</a>. {LANG.timeoutsess_timeout}: <span id="secField"> 60 </span> {LANG.sec}
        </div>
        <div id="openidResult" class="nv-alert" style="display:none"></div>
        <div id="openidBt" data-result="" data-redirect=""></div>
        <script src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/bootstrap.min.js"></script>




		
		
	<a href="javascript:void(0);" class="scrollup" ><i class="fa fa-arrow-up" aria-hidden="true"></i></a>	
		<script type='text/javascript'> 
    $(document).ready(function () {

    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.scrollup').fadeIn();
            $('.right-controls').fadeIn();
        } else {
            $('.scrollup').fadeOut();
             $('.right-controls').fadeOut();
        }
    });

    $('.scrollup').click(function () {
        $("html, body").animate({
            scrollTop: 0
        }, 600);
        return false;
    });

});
</script>




		
	</body>
</html>