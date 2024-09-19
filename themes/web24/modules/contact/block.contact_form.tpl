<!-- BEGIN: main -->
<!-- BEGIN: hidden -->
<link rel="StyleSheet" href="{CSS}">
<!-- END: hidden -->
<script src="{JS}"></script>
<div id="contactButtonn">
	<div class="text-right">
		<a class="btn_contact btn_cus -bg_primary -white -brd_primary" href="/{MODULE}.html" title="" >{GLANG.contactUs}</a> 
		<!-- BEGIN: hidden -->
    	<button type="button" class="ctb btn_contact btn_cus -bg_primary -white -brd_primary" data-module="{MODULE}" onclick="$('#form_modal').modal('show')">{GLANG.contactUs}</button>
		<!-- END: hidden -->
	</div>

    <div class="modal fade modal_default" id="form_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-body" data-cs="{NV_CHECK_SESSION}">
	            	
	            </div>
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="modal-close"></span></button>
	        </div>
	    </div>
	</div>
</div>


<!-- END: main -->