<!-- BEGIN: main -->
<div class="block_list_video">
    <div class="">
        <div class="list_video-first">
            <!-- BEGIN: first -->
            <div class="list_video-first-item">
                <div id="ytblvideoctn_bl{BID}_v{DATA.id}">
                    <iframe class="iframe_youtube" id="ytblvideo_bl{BID}_v{DATA.id}" allowfullscreen="allowfullscreen" frameborder="0"  src="//www.youtube.com/embed/{CODE}?rel=0&amp;controls=1&amp;autohide=0" ></iframe>
                </div>
                <div class="list_video-first-title">
                    <a href="{ROW.link}" title="{ROW.title}">{ROW.title}</a>
                </div>
            </div>
            <!-- END: first -->
        </div>
        <div class="list_video-other">
            <!-- BEGIN: loop -->
            <div class="list_video-other-item">
                <div class="list_video-other-icon">
                    <i class="icofont-youtube-play"></i>
                </div>
                <div class="list_video-other-title">
                    <a href="{ROW.link}" title="{ROW.title}">{ROW.title}</a>
                </div>
            </div>
            <!-- END: loop -->
        </div>
    </div>
</div>
<!-- END: main -->