function loadProducts(element, name = '', page = 1) {
	if (!element) return false;
	let category = element.attr('data-cat');
	let grandCat = element.attr('data-grandcat');
	let grandGrandCat = element.attr('data-grandgrandcat');

	$.ajax({
		type: "POST",
		url: '',
		data: { action: "load_product", category, grandCat, grandGrandCat, page },
		success: function(result) {
			if (name) $('.category-title').html(name);
			$('.products .list').html(result.data.products);
			$('.products .pagination').html(result.data.pagination);
			$('html, body').animate({
				scrollTop: $(".category-title").offset().top - 200
			}, 500);
		}
	});
}
$('document').ready(function() {
	var catElement;

	$('body').on('click', '.categories .item-action', function(e) {
		let parent = $(this).parent();
		let name = $(this).text();
		let category = $(this).attr('data-cat');
		catElement = $(this);

		if (parent.find('.list').length) {
			$(this).toggleClass('active');
			parent.find('.list').first().toggleClass('active');
		}

		if (category) {
			e.preventDefault();
			loadProducts(catElement, name);
		}
	});

	$('body').on('click', '.pagination .list-page .item', function(e) {
		let page = $(this).attr('data-page');

		if (!$(this).hasClass('active') && page && catElement) {
			loadProducts(catElement, '', page);
		}
	});
	

	if ($('.products .list').html().length == 0) {
		$('.categories .item-action[data-cat]').first().click();
	}
});