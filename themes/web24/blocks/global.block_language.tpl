<!-- BEGIN: main -->

<!-- BEGIN: language -->
<div class="language font-montserrat">
    <!-- BEGIN: langcuritem -->
	<span class="language-item {CURRENT}">
		<a href="{LANGSITEURL}" title="{LANGSITENAME}"><img src="{LANGSITEIMG}" alt="{LANGSITENAME}"/></a>
		</a>
	</span>
    <!-- END: langcuritem -->
	<!-- BEGIN: langitem -->
	<span class="language-item">
		<a href="{LANGSITEURL}" title="{LANGSITENAME}"><img src="{LANGSITEIMG}" alt="{LANGSITENAME}"/></a>
		</a>
	</span>
	<!-- END: langitem -->
</div>
<!-- END: language -->


<div class="language hidden">
    {SELECT_LANGUAGE}:
    <select name="lang" class="nv_change_site_lang">
        <!-- BEGIN: langitem -->
            <option value="{LANGSITEURL}" title="{SELECTLANGSITE}">{LANGSITENAME}</option>
        <!-- END: langitem -->
        <!-- BEGIN: langcuritem -->
            <option value="{LANGSITEURL}" title="{SELECTLANGSITE}" selected="selected">{LANGSITENAME}</option>
        <!-- END: langcuritem -->
    </select>
</div>
<!-- END: main -->