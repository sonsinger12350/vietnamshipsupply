<!-- BEGIN: submenu -->
  <ul class="wsmenu-submenu">
    <!-- BEGIN: loop -->
    <li <!-- BEGIN: submenu -->class="dropdown-submenu"<!-- END: submenu -->> <!-- BEGIN: icon --> <img src="{SUBMENU.icon}" />&nbsp; <!-- END: icon --> <a href="{SUBMENU.link}" title="{SUBMENU.note}"{SUBMENU.target}>{SUBMENU.title_trim}</a> <!-- BEGIN: item --> {SUB} <!-- END: item -->
    <!-- END: loop -->
  </ul>
<!-- END: submenu -->



<!-- BEGIN: submenu_car -->

<div class="megamenu clearfix">
  <div class="clearfix"></div>
  <!-- BEGIN: loop -->
  <ul class="col-lg-6 col-md-6 col-sm-6 col-xs-8 col-6 link-list">
    <a href="{SUBMENU.link}" style="color: #424242;">
      <li class="title">{SUBMENU.title_trim}</li>
    </a>
  </ul>
  <!-- END: loop -->       
</div>
<!-- END: submenu_car -->


<!-- BEGIN: main -->
<nav class="block_cat_menu">
  <ul class="cat_menu-list">
  <!-- BEGIN: top_menu -->
    <li role="presentation" class="cat_menu-item">
      <a href="{TOP_MENU.link}"  class="dropeft" title="{TOP_MENU.title_trim}">{TOP_MENU.title_trim}<!-- BEGIN: has_sub --><span class="arrow"></span><!-- END: has_sub --></a>
      <!-- BEGIN: sub -->
      {SUB}
      <!-- END: sub -->

      <!-- BEGIN: car -->
      {SUB_CAR}
      <!-- END: car -->
    </li>
  <!-- END: top_menu -->
  </ul>
</nav>
<!-- END: main -->
