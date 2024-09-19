jQuery(function($) {
		var open = false;
		$('#footerSlideButton').click(function () {
			if(open === false) {
				$(this).animate({ right: '575px' });
				$('#footerSlideContent').animate({ right: '317px' });
				$(this).animate({ right: '575px' });
				$(this).css('background', '#f40909 url(http://vattuhanghai.com/modules/support/images/support-hide.png) no-repeat 5px');
				open = true;
			} else {
				$('#footerSlideContent').animate({ right: '-93px' });
				$(this).animate({ right: '315px' });
				$(this).css('background', '#f40909 url(http://vattuhanghai.com/modules/support/images/support-hide.png) no-repeat 5px');
				open = false;
			}
		});		
	});