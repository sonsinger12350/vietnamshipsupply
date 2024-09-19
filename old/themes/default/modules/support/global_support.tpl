 <!-- BEGIN: main -->
 <style type="text/css">
 /* CSS Document */

#footerSlideContainer {
	z-index: 1000;
	position: fixed;
	bottom:0;
	left: 85%;
	width: 200px;
}
#footerSlideButton {
	background: url({NV_BASE_SITEURL}modules/support/images/support.png) top left no-repeat transparent;
	position: absolute;
	top: -46px;
	right: 0px;
	width:198px;
	height:51px;
	border: none;
	cursor: pointer;
}
#footerSlideContent {
	width: 100%;
	height: 0px;
	background: #fff;
	color: #CCCCCC;
	font-size: 0.8em;
	border: 5px solid #ED2026;
	border-top: none;
	font-family: DejaVuSansBook, Sans-Serif;
	position: relative;
	bottom: -5px;
}
#footerSlideContent h3 {
	font-size: 36px;
	color: #9AC941;
	margin: 10px 0 10px 0;
}
#footerSlideContent ul {
	color: #EE8D40;
	list-style-type: none;
	line-height: 2em;
}
#footerSlideText {
	padding: 10px 5px 5px 5px;
	text-shadow: 1px 1px #FFFFFF;
	font-size: 11px;
	color: #065f92;
}
#footerSlideText .note{
	position: relative;
	left: 20px;
	color: red;
}
#footerSlideText .line{
	width: 95%;
	margin: auto;
	margin-top: 12px;
	margin-bottom: 12px;
	background: url(../images/line.gif) repeat-x top center;
	height: 2px;
}
#footerSlideText .titles{
	font-size: 14px;
	text-transform: uppercase;
	color: #006795;
	font-weight: bold;
}
#footerSlideText ul{
	margin: 0px;
	margin-left: 20px;
	margin-top: 10px;
	padding: 0px;
	width: 244px;
	list-style: none;
}
#footerSlideText ul li{
	font-size: 12px;
	color: #006795;
	font-weight: bold;
	list-style: none;
	background: none;
	margin-top: 8px;
	padding: 0px;
}
#footerSlideText ul li .left{
	width: 165px;
	display: inline-block;
}
#footerSlideText ul li .right{
	width: auto;
	display: inline-block;
}
.hotline{
	font-size: 13px;
	color: #df2a2b;
}
 </style>
 <script>
 jQuery(function($) {
		var open = false;
		$('#footerSlideButton').click(function () {
			if(open === false) {
				$('#footerSlideContent').animate({ height: '300px' });
				$(this).css('backgroundPosition', 'top left');
				open = true;
			} else {
				$('#footerSlideContent').animate({ height: '0px' });
				$(this).css('backgroundPosition', 'top left');
				open = false;
			}
		});		
	});
 </script>
 <script type="text/javascript" src="{NV_BASE_SITEURL}modules/support/js/footer_slide.js"></script>
<link rel="stylesheet" href="{NV_BASE_SITEURL}modules/support/js/support1.css" />
	<div id="footerSlideContainer">
    	<div id="footerSlideButton"></div>
        <div id="footerSlideContent">
        	<div id="footerSlideText">
            	<!-- BEGIN: loop -->
                <!-- BEGIN: icon -->
				<span class="titles">{TITLE} - {PHONE}</span>
                <center>
                    <!-- BEGIN: iconyahoo -->
                    <a href="ymsgr:sendim?{YHITEM}"><img alt="" src="http://opi.yahoo.com/online?u={YHITEM}&amp;m=g&amp;t={YHTYPE}" /> </a>
                    <!-- END: iconyahoo -->
                    <!-- BEGIN: iconskype -->
                    <a href="skype:{SKITEM}?chat"> <img alt="" src="http://mystatus.skype.com/{SKTYPE}/{SKITEM}"/> </a>
                    <!-- END: iconskype -->
                </center>
				<div class="line"></div>
                <!-- END: icon -->
                <!-- END: loop -->
            </div>
        </div>
    </div>
<!-- END: main -->