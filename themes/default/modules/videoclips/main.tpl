<!-- BEGIN: main -->
<script type="text/javascript" src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/{MODULE_THEME}_jquery.matchHeight-min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}themes/{TEMPLATE}/images/{MODULE_THEME}/jwplayer/jwplayer.js"></script>
<script type="text/javascript">jwplayer.key="KzcW0VrDegOG/Vl8Wb9X3JLUql+72MdP1coaag==";</script>
<!-- BEGIN: video_flash -->
<div class="detailContent clearfix">
	<div class="videoTitle" id="videoTitle">
		{DETAILCONTENT.title}
	</div>
	<div class="videoplayer">
		<div class="cont">
			<div id="videoCont"></div>
		</div>
	</div>
	<div class="clearfix"></div>
</div>
<script type="text/javascript">
$(function() {
    var ele = "videoCont";
    var a = $("#" + ele).outerWidth(), b;
    640 < a && (a = 640);
    b = a;
    a = Math.ceil(45 * a / 80) + 4;
    $("#" + ele).parent().css({
        width: b,
        height: a,
        margin: "0 auto"
    });
    jwplayer(ele).setup({
        file: "{DETAILCONTENT.filepath}",
        width: b,
        height: a,
        autostart: {MODULECONFIG.playerAutostart} ? true : false
    });
});
</script>
<!-- END: video_flash -->

<!-- BEGIN: video_youtube -->
<div class="detailContent clearfix">
	<div class="videoTitle" id="videoTitle">
		{DETAILCONTENT.title}
	</div>
</div>
<script type="text/javascript">
$(function() {
    var a = $("div.detailContent").width(), b;
    640 < a && (a = 640);
    b = a;
    a = Math.ceil(45 * a / 80) + 4;
    $("div.detailContent").append('<div class="videoplayer"><div class="clearfix" style="height: ' + a + 'px;width:' + b + 'px;margin:0 auto;"><iframe class="detailContent clearfix" allowfullscreen="" frameborder="0" style="height: ' + a + 'px;width:' + b + 'px" src="//www.youtube.com/embed/{CODE}?rel=0&amp;controls=1{autoplay}"></iframe></div></div>');
});
</script>
<!-- END: video_youtube -->

<!-- BEGIN: topicList -->
<div class="otherTopic marginbottom15 clearfix hidden">
    <div class="otherTopicCont">
    <div>
    <strong>{OTHETP}:</strong>
    <!-- BEGIN: row1 -->
    &nbsp;&nbsp;<a href="{OTHERTOPIC.href}"><!-- BEGIN: img1 --><img src="{NV_BASE_SITEURL}{OTHERTOPIC.img}" width="24" height="24" alt="" /><!-- END: img1 -->{OTHERTOPIC.title}</a><!-- BEGIN: iss1 --><span>&darr;</span><!-- END: iss1 -->
    <!-- END: row1 -->
    </div>
    </div>
</div>
<!-- END: topicList -->

<!-- BEGIN: otherClips -->
<div class="list_video mg5 row">
    <!-- BEGIN: otherClipsContent -->
    <div class="col-xs-12 col-sm-6">
        <div class="list_video-item">
            <div class="ratio_4-3" style="background:transparent url({OTHERCLIPSCONTENT.img}) no-repeat center center;background-size: cover;">
                <a class="otcl" href="{OTHERCLIPSCONTENT.href}" title="{OTHERCLIPSCONTENT.title}">
                <img src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/images/pix.gif" alt="{OTHERCLIPSCONTENT.title}"  /></a>
            </div>
            <div class="list_video-title">
                <a class="otcl" href="{OTHERCLIPSCONTENT.href}" title="{OTHERCLIPSCONTENT.title}">{OTHERCLIPSCONTENT.sortTitle}</a>
            </div>
            <div class="viewHits hidden">{LANG.viewHits} 
                <span>{OTHERCLIPSCONTENT.view}</span>
            </div>
            <div class="play hidden">
                <a class="otcl" href="{OTHERCLIPSCONTENT.href}" title="{OTHERCLIPSCONTENT.title}">
                <img src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/images/pix.gif" alt="{OTHERCLIPSCONTENT.title}" width="120" height="32" /></a>
            </div>
        </div>
    </div>
    <!-- BEGIN: cclearfix --><div class="clearfix"></div><!-- END: cclearfix -->
    <!-- END: otherClipsContent -->

    <!-- BEGIN: nv_generate_page -->
    <div class="clearfix"></div>
    <div class="generate_page">
        {NV_GENERATE_PAGE}
    </div>
    <!-- END: nv_generate_page -->
</div>
<!-- END: otherClips -->
<script type="text/javascript">
$('.otherClips .otherClipsContent .ctn1 .ctn2').matchHeight({ property: 'min-height' });
</script>
<!-- END: main -->