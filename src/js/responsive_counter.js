$(window).on('load', function(){

    function inVisible(element) {
        var WindowTop = $(window).scrollTop();
        var WindowBottom = WindowTop + $(window).height();
        var ElementTop = element.offset().top;
        var ElementBottom = ElementTop + element.height();

        if ((ElementBottom <= WindowBottom) && ElementTop >= WindowTop)
            animate(element);
    }    
    
    function animate(element) {
        if (!element.hasClass('ms-animated')) {
            var maxval = element.data('max');
            var html = element.html();
            element.addClass("ms-animated");
            $({countNum: element.html()}).animate(
                {countNum: maxval}, 
                {
                    duration: 5000,
                    easing: 'linear',
                    step: function() {
                        element.html(Math.floor(this.countNum) + html);
                    },
                    complete: function() {
                        element.html(this.countNum + html);
                    }
                }
            );
        }
    }            
        
    function start(){
        $("h2[data-max]").each(function() {
                inVisible($(this));
            }); 
    }
        
    $(window).scroll(function() {
        start();
    });

    start();
})
