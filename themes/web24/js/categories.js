$('document').ready(function() {
    $('.categories .item-action').on('click', function(e) {
        let parent = $(this).parent();
        let name = $(this).text();
        let category = $(this).attr('data-cat');

        if (parent.find('.list').length) {
            $(this).toggleClass('active');
            parent.find('.list').first().toggleClass('active');
        }

        if (category) {
            e.preventDefault();
            $.ajax({
                type: "POST",
                url: '',
                data: { action: "load_product", category },
                success: function(result) {
                    $('.category-title').html(name);
                    if (result.success) $('.products .list').html(result.data);
                    $(".category-title").animate({ scrollTop: 0 }, "slow");
                }
            });
        }
    });

    if ($('.products .list').html().length == 0) {
        $('.categories .item-action[data-cat]').first().click();
    }
});