$(function() {
    $('#wsnavtoggle')['click'](function() {
        $('.wrapermenu')['toggleClass']('wsoffcanvasopener')
    });
    $('.overlapblackbg')['click'](function() {
        $('.wrapermenu')['removeClass']('wsoffcanvasopener')
    });
    $('.wsmenu-list> li')['has']('.wsmenu-submenu')['prepend']('<span class="wsmenu-click"><i class="wsmenu-arrow fa fa-angle-down"></i></span>');
    $('.wsmenu-list li.dropdown-submenu')['has']('.wsmenu-submenu')['prepend']('<span class="wsmenu-click"><i class="wsmenu-arrow fa fa-angle-down"></i></span>');
    $('.wsmenu-list > li')['has']('.megamenu')['prepend']('<span class="wsmenu-click"><i class="wsmenu-arrow fa fa-angle-down"></i></span>');
    $('.wsmenu-click')['click'](function() {
        $(this)['toggleClass']('ws-activearrow')['parent']()['siblings']()['children']()['removeClass']('ws-activearrow');
        // $('.wsmenu-submenu, .megamenu')['not']($(this)['siblings']('.wsmenu-submenu, .megamenu'))['slideUp']('slow');
		$(this)['parent']()['siblings']()['children']('.wsmenu-submenu, .megamenu')['slideUp']('slow');
        $(this)['siblings']('.wsmenu-submenu')['slideToggle']('slow');
        $(this)['siblings']('.megamenu')['slideToggle']('slow')
    });
    $('.wsmenu-list > li > ul > li')['has']('.wsmenu-submenu-sub')['prepend']('<span class="wsmenu-click02"><i class="wsmenu-arrow fa fa-angle-down"></i></span>');
    $('.wsmenu-list > li > ul > li > ul > li')['has']('.wsmenu-submenu-sub-sub')['prepend']('<span class="wsmenu-click02"><i class="wsmenu-arrow fa fa-angle-down"></i></span>');
    $('.wsmenu-click02')['click'](function() {
        $(this)['children']('.wsmenu-arrow')['toggleClass']('wsmenu-rotate');
        $(this)['siblings']('.wsmenu-submenu-sub')['slideToggle']('slow');
        $(this)['siblings']('.wsmenu-submenu-sub-sub')['slideToggle']('slow')
    })
});
$(function() {
    var _0xe868x1, _0xe868x2, _0xe868x3, _0xe868x4;
    $('.dropeft')['click'](function(_0xe868x5) {
        if ($(this)['find']('.water')['length'] === 0) {
            $(this)['prepend']('<em class=\'water\'></em>')
        };
        _0xe868x1 = $(this)['find']('.water');
        _0xe868x1['removeClass']('drop-animate');
        if (!_0xe868x1['height']() && !_0xe868x1['width']()) {
            _0xe868x2 = Math['max']($(this)['outerWidth'](), $(this)['outerHeight']());
            _0xe868x1['css']({
                height: _0xe868x2,
                width: _0xe868x2
            })
        };
        _0xe868x4 = _0xe868x5['pageY'] - $(this)['offset']()['top'] - _0xe868x1['height']() / 2;
        _0xe868x3 = _0xe868x5['pageX'] - $(this)['offset']()['left'] - _0xe868x1['width']() / 2;
        _0xe868x1['css']({
            top: _0xe868x4 + 'px',
            left: _0xe868x3 + 'px'
        })['addClass']('drop-animate')
    })
})