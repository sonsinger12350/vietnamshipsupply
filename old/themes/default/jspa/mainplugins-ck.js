main = {}

main.showLoading = function(){
	$('body').append('<div class="loading"><span class="loading-img"></span><span class="loading-text">Vui lòng chờ trong giây lát... </span></div>');
	$('body .loading').show();
}

main.hideLoading = function(){
	$('body .loading').remove();
}
