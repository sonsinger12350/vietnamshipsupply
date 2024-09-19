/* jQuery Script Goes Here */

$(document).ready(function() { //if the DOM is ready

	/* Main Navigation */

	var selected_animation = 'animation-hingeTop'; //default animation value;

	var speed = 120;

	$('div.warning').siblings().hide(); //show warning that browser is not supported

	/* Home Nav */

	$('.home-menu').on('mouseover', 'li', function() { //this is the home-menu (Phones, Tablets etc.)

		var _this = $(this); //just defined a _this variable, so that no more objects are created
		var data_attribute = _this.attr('data-menu'); // get the 'data-menu' attribute of each li on .home-menu

	 	_this.addClass('is-active').siblings('li').removeAttr('class'); //add class 'is-active' onmouseover
	 	_this.parents('.home-menu').siblings('.side-menu-wide').removeClass('is-active'); //remove is-active class on all side-menu-wide
	 	_this.parents('.home-menu').siblings(".side-menu-wide" + "." + data_attribute).addClass('is-active animation-fadeIn'); //add is-active from data-menu attributes

	});


	/* Tab */

	$('.tab-menu').on('click', '.tab-marker li label', function() {

		var _this = $(this);
		var label_for_text = $.trim(_this.attr('for').toLowerCase()); //get the label text
		var tab_content = _this.parents('.tab-menu').siblings('tr').find("td." + label_for_text); //find td that matches the label_text
		
		tab_content.siblings('td').hide(); 
		tab_content.show();
		

	});

	$('#select-animation').on('change', function() {

		var _this = $(this);
		selected_animation = _this.val();

	});

	$('.main-nav > li').on('mouseover', function() { //change sub-menu-1 animation here

		var _this = $(this);
		var _animation = selected_animation;

		var animation_1 = ['animation-fadeIn','animation-hingeTop', 'animation-hingeLeft', 'animation-slideDown', 'animation-slideUp'];
		var animation_2 = ['animation-slideLeft', 'animation-slideRight', 'animation-zoomIn','animation-pivotTopLeft', 'animation-recoil'];

		var array_merge = $.merge(animation_1, animation_2);

		for (var x in array_merge) { //remove all occurence of classes stated in the array

			_this.children('div').removeClass(array_merge[x]);

		}

		_this.children('div').addClass(_animation);

	});

	/* on window resize */


	$(window).on('resize', function() {

		var window_width = $(window).width();

		if (window_width >= 965) {

			if ($('#home').css('display') === 'none') {

				$('.main-nav > li:gt(0)').show();
				$('.main-nav .sub-menu-1, .main-nav sub-menu-2').hide();

			}

		}

	});

	/* theme - changer, this is the script for theme changer, delete or comment this code to remove functionality */

	$('#theme-changer').on('click', 'li', function() {

		var _this = $(this);
		var css_path = "css/";
		var theme_id = _this.attr('id') + '.css'; //theme-01.css, them-02 + '.css'
		
		_this.css('border','2px solid black').siblings('li').css('border','none');

		$('link#themes').attr('href', css_path + theme_id);
		
	});

});



