// by quocdoan419@gmail.com | fb.me/quocdoan419
$.fn.GoogleSEO = function(options, func) {
    var title = 'textarea[name="tag_description"]',
    	alias = 'input[name="alias"',
    	title_custom = 'input[name="tag_title"]',
    	description = 'textarea[name="tag_description"]',
    	description1 = 'textarea[name="description"]',
    	description2 = 'textarea#description',
    	
    	FormGoogle = '#google-result',
    	limit_title = 65,
    	limit_desc = 165;
    var stripTags = function () {
    return this.replaceWith(this.html().replace(/]+>/gi, ''));
};
		var stripHtml = function (html){
		    // Create a new div element
		    var temporalDivElement = document.createElement("div");
		    // Set the HTML content with the providen
		    temporalDivElement.innerHTML = html;
		    // Retrieve the text property of the element (cross-browser support)
		    return temporalDivElement.textContent || temporalDivElement.innerText || "";
		}
    var AppendData = function(options, func) {
	    var divGoogle = '<div id="google-result" class="google-result">'
	    				+'<h3 class="r">tiêu đề</h3>'
	    				+'<div class="s"><div class="url"><a href="#">'+document.location.hostname+'</a></div><span class="st">Nội dung bài viết </span></div>'
	    				+'<span class="f"></span></div>';
	    
	    $(title).parent().append(divGoogle);
	    $(document).on('keyup', ''+title+', '+title_custom+'', function()
		    {
			 var title_get = $(this).val();
			 var title_count = title_get.length;
			 //var res_title ='';
			 	if(title_count > limit_title)
			 		{
				 		var res_title = title_get.slice(0, limit_title) + '...';
			 		}
			 	else {
				 	var res_title = title_get;
			 	}
	        $(FormGoogle).find('h3.r').text(res_title);
	        
	        });
	     $(''+title+', '+title_custom+'').each( function()
		    {
			 var title_get = $(this).val();
			 var title_count = title_get.length;
			 //var res_title ='';
			 	if(title_count > limit_title)
			 		{
				 		var res_title = title_get.slice(0, limit_title) + '...';
			 		}
			 	else {
				 	var res_title = title_get;
			 	}
	        $(FormGoogle).find('h3.r').text(res_title);
	        
	        });
	      // desc
	     $(document).on('keyup', ''+description+', '+description1+', '+description2+'', function()
		    {
			 var desc_get = $(this).val();
			 var desc_count = desc_get.length;
			 //var res_title ='';
			 	if(desc_count > limit_desc)
			 		{
				 		var res_desc = desc_get.slice(0, limit_desc) + '...';
			 		}
			 	else {
				 	var res_desc = desc_get;
			 	}
	        $(FormGoogle).find('div.s span.st').text(stripHtml(res_desc));
	        
	        });
	       $(''+description+', '+description1+', '+description2+'').each(function()
		    {
			 var desc_get = $(this).val();
			 var desc_count = desc_get.length;
			 //var res_title ='';
			 	if(desc_count > limit_desc)
			 		{
				 		var res_desc = desc_get.slice(0, limit_desc) + '...';
			 		}
			 	else {
				 	var res_desc = desc_get;
			 	}
	        $(FormGoogle).find('div.s span.st').text(stripHtml(res_desc));
	        
	        });
        
    }
    return AppendData(options, func);
};
$('body').GoogleSEO();