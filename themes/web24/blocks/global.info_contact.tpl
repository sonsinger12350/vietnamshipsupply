<!-- BEGIN: main -->
	<ul class="info_contact">
		<li class="info_contact-title">{DATA.title}</li>
		<li class="info_contact-subtitle">{DATA.subtitle}</li>

	    <!-- BEGIN: company_name -->
	    <li class="company_name block_simple-heading">
	    	<span >{DATA.company_name}</span><!-- BEGIN: company_sortname --> (<span >{DATA.company_sortname}</span>)<!-- END: company_sortname -->
	    </li>
	    <!-- END: company_name -->

	    <!-- BEGIN: company_regcode -->
	    <li class="info_contact-item">
	    	<em class="fa fa-file-text"></em><span>{LICENSE}</span>
	    </li>
	    <!-- END: company_regcode -->

	    <!-- BEGIN: company_responsibility -->
	    <li class="info_contact-item">
	    	<em class="fa fa-flag"></em><span><span><span>{DATA.company_responsibility}</span></span></span>
	    </li>
	    <!-- END: company_responsibility -->

	    <!-- BEGIN: company_address -->
	    <li class="info_contact-item">
	        <a href="{DATA.company_link_address}" ><em class="icofont-building"></em><span><span ><span class="company-address">{DATA.company_address}</span></span></span></a>
	    </li>
	    <!-- END: company_address -->

	    <!-- BEGIN: company_phone -->
	    <li class="info_contact-item"><em class="icofont-telephone"></em><span>
	            <!-- BEGIN: item -->
	            <!-- BEGIN: comma -->&nbsp;-&nbsp;
	            <!-- END: comma -->
	            <!-- BEGIN: href --><a href="tel:{PHONE.href}">
	                <!-- END: href --><span itemprop="telephone">{PHONE.number}</span><!-- BEGIN: href2 --></a><!-- END: href2 -->
	            <!-- END: item --></span>
	    </li>
	    <!-- END: company_phone -->

	    <!-- BEGIN: company_fax -->
	    <li class="info_contact-item">
	    	<em class="icofont-fax"></em>
	    	<span><span>{DATA.company_fax}</span></span>
	    </li>
	    <!-- END: company_fax -->

	    <!-- BEGIN: company_mobile -->
	    <li class="info_contact-item"><em class="icofont-mobile-phone"></em><span>
	            <!-- BEGIN: item -->
	            <!-- BEGIN: comma -->&nbsp;-&nbsp;
	            <!-- END: comma -->
	            <!-- BEGIN: href --><a href="tel:{MOBILE.href}">
	                <!-- END: href --><span itemprop="telephone">{MOBILE.number}</span><!-- BEGIN: href2 --></a><!-- END: href2 -->
	            <!-- END: item --></span>
	    </li>
	    <!-- END: company_mobile -->

	    <!-- BEGIN: company_email -->
	    <li class="info_contact-item">
	    	<em class="icofont-ui-email"></em>
	    	<span>
	            <!-- BEGIN: item -->
	            <!-- BEGIN: comma -->&nbsp;-&nbsp;
	            <!-- END: comma --><a href="mailto:{EMAIL}"><span itemprop="email">{EMAIL}</span></a><!-- END: item --></span>
	    </li>
	    <!-- END: company_email -->

	    <!-- BEGIN: company_website -->
	    <li class="info_contact-item">
	    	<em class="icofont-earth"></em>
	    	<span>
	            <!-- BEGIN: item -->
	            <!-- BEGIN: comma -->&nbsp;
	            <!-- END: comma --><a href="{WEBSITE}" target="_blank"><span itemprop="url">{WEBSITE}</span></a><!-- END: item --></span>
	    </li>
	    <!-- END: company_website -->

	</ul>
<!-- END: main -->