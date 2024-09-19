<!-- BEGIN: main -->

<!-- BEGIN: warning -->
<div class="alert alert-danger">{LANG.warning}</div>
<!-- END: warning -->


<!-- BEGIN: tab_1 -->
<div id="{CONTENT.tab_1_alias}" class="section_tab tab_1">
    <div class="page_about-heading d-xs-flex align-items-xs-center">
        <div class="page_about-icon"><i class="{CONTENT.tab_1_icon}"></i></div>
        <div class="page_about-title font-montserrat">{CONTENT.tab_1_titletab}</div>
    </div>
    <div class="page_about-body">
        {CONTENT.tab_1_description}
    </div>
</div>
<!-- END: tab_1 -->

<!-- BEGIN: tab_2 -->
<div id="{CONTENT.tab_2_alias}" class="tab_2 section_tab row mg15 align-items-xs-center">
    <div class="col-xs-24 col-md-12 order-md-2">
        <div class="">
            <img class="lazy-img" data-original="{CONTENT.tab_2_image}" alt="{CONTENT.tab_2_titletab}" />
			
            <div class="text-right">
				<a class="btn_contact btn_cus -bg_primary -white -brd_primary" href="/contact.html" title="" >{GLANG.contactUs}</a> 
				<!-- BEGIN: hidden -->
                <button type="button" class="ctb btn_contact btn_cus -bg_primary -white -brd_primary" data-module="contact" onclick="$('#form_modal').modal('show')">{GLANG.contactUs}</button>
				<!-- END: hidden -->
            </div>
        </div>
    </div>
    <div class="col-xs-24 col-md-12 order-md-1">
        <div class="page_about-heading d-xs-flex align-items-xs-center">
            <div class="page_about-icon"><i class="{CONTENT.tab_2_icon}"></i></div>
            <div class="page_about-title font-montserrat">{CONTENT.tab_2_titletab}</div>
        </div>
        <div class="page_about-body">
            {CONTENT.tab_2_bodytext}
        </div>
    </div>
</div>
<!-- END: tab_2 -->


<!-- BEGIN: tab_3 -->
<div id="{CONTENT.tab_3_alias}" class="tab_3 section_tab">
    <div class="page_about-heading d-xs-flex align-items-xs-center">
        <div class="page_about-icon"><i class="{CONTENT.tab_3_icon}"></i></div>
        <div class="page_about-title font-montserrat">{CONTENT.tab_3_titletab}</div>
    </div>
    <div class="page_about-body">
        {CONTENT.tab_3_bodytext}
    </div>
</div>
<!-- END: tab_3 -->


<!-- BEGIN: tab_4 -->
<div id="{CONTENT.tab_4_alias}" class="tab_4 section_tab row mg15 align-items-xs-center">

    <div class="col-xs-24 col-md-12 order-md-2">
        <div class="">
            <img class="lazy-img" data-original="{CONTENT.tab_4_image}" alt="{CONTENT.tab_4_titletab}" />
            <div class="text-right">
				<a class="btn_contact btn_cus -bg_primary -white -brd_primary" href="/contact.html" title="" >{GLANG.contactUs}</a> 
				<!-- BEGIN: hidden -->
                <button type="button" class="ctb btn_contact btn_cus -bg_primary -white -brd_primary" data-module="contact" onclick="$('#form_modal').modal('show')">{GLANG.contactUs}</button>
				<!-- END: hidden -->
            </div>
        </div>
    </div>
    <div class="col-xs-24 col-md-12 order-md-1">
        <div class="page_about-heading d-xs-flex align-items-xs-center">
            <div class="page_about-icon"><i class="{CONTENT.tab_4_icon}"></i></div>
            <div class="page_about-title font-montserrat">{CONTENT.tab_4_titletab}</div>
        </div>
        <div class="page_about-body">
            
            <!-- BEGIN: freecontent -->
                <div class="tab_4-free">
                <!-- BEGIN: loop -->
                    <div class="tab_4-free-item d-xs-flex align-items-xs-center">
                        <i class="{FREECONENT_I.icon} tab_4-free-icon"></i>
                        <div class="tab_4-free-content">
                            <div class="tab_4-free-title">{FREECONENT_I.title}</div>
                            <div class="tab_4-free-des">{FREECONENT_I.description}</div>
                        </div>
                    </div>
                <!-- END: loop -->
                </div>
            <!-- END: freecontent -->
        </div>
    </div>
</div>
<!-- END: tab_4 -->

<!-- BEGIN: hidden -->
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
<!-- END: hidden -->


<!-- BEGIN: adminlink -->
<p class="text-center margin-bottom-lg">
    <a class="btn btn-primary" href="{ADMIN_EDIT}"><em class="fa fa-edit fa-lg">&nbsp;</em>{GLANG.edit}</a>
    <a class="btn btn-danger" href="javascript:void(0);" onclick="nv_del_content({CONTENT.id}, '{ADMIN_CHECKSS}','{NV_BASE_ADMINURL}')"><em class="fa fa-trash-o fa-lg">&nbsp;</em>{GLANG.delete}</a>
</p>
<!-- END: adminlink -->
<script type="text/javascript">

</script>
<!-- END: main -->
