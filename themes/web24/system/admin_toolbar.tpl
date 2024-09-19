<!-- BEGIN: main -->
<style>
/* admintoolbar */
#admintoolbar{
    position: fixed;
    left: 0;
    bottom: 60px;
    background: #205FA0;
    background-image:linear-gradient(to right,rgba(255,255,255,0) 0%,rgba(255,255,255,0.1) 100%);
    border-left: 1px solid #205FA0;
    border-bottom: 1px solid #205FA0;
    border-top: 1px solid #205FA0;
    box-shadow:0 0 4px rgba(0,0,0,0.15);
    -webkit-box-shadow:0 0 4px rgba(0,0,0,0.15);
    z-index: 10000;
    opacity: 0.5;
}
#admintoolbar:hover{
    opacity: 1;
}
#admintoolbar ul{
    list-style:none;
    margin:0;
    padding:0
}
#admintoolbar,#admintoolbar ul,#admintoolbar li:first-child, #admintoolbar li:first-child a{
    border-top-right-radius: 10px;
}
#admintoolbar,#admintoolbar ul,#admintoolbar li:last-child, #admintoolbar li:last-child a{
    border-bottom-right-radius: 10px;
}
#admintoolbar li {
    display:block;
    border-bottom:1px solid rgba(0,0,0,0.1);
}
#admintoolbar span{
    margin-left:5px;
    margin-right:10px;
    display: none
}
#admintoolbar:hover span{
    display:inline-block
}
#admintoolbar a{
    display: block;
    padding: 0 7px;
    color:#fff;
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size:14px;
    line-height: 40px;
    text-decoration: none
}
#admintoolbar ul a:hover{
    background:#205FA0;
}
#admintoolbar .icon_adbar{
    font-size: 24px;
    vertical-align:middle;
    width:26px
}

#admintoolbar .fa.fa-object-group{
    font-size: 18px;
}
</style>
<div id="admintoolbar">
    <ul>
        <li><a href="{NV_ADMINDIR}"><em class="icon_adbar icofont-gears"></em><span>{GLANG.admin_page}</span></a></li>
        <!-- BEGIN: is_modadmin --><li><a href="{URL_MODULE}"><em class="icon_adbar icofont-wrench"></em><span>{GLANG.admin_module_sector} {MODULENAME}</span></a></li><!-- END: is_modadmin -->
        <!-- BEGIN: is_spadmin --><li><a href="{URL_DBLOCK}"><em class="icon_adbar icofont-layout"></em><span>{LANG_DBLOCK}</span></a></li><!-- END: is_spadmin -->
        <li><a href="{URL_AUTHOR}"><em class="icon_adbar icofont-user-suited"></em><span>{GLANG.admin_view}</span></a></li>
        <li><a href="javascript:void(0);" onclick="nv_admin_logout();"><em class="icon_adbar icofont-ui-power"></em><span>{GLANG.logout}</span></a></li>
    </ul>
</div>
<!-- END: main -->