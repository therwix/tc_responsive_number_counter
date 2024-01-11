$.extend($.easing,
    {
        easeOutCirc: function (x, t, b, c, d) {
            return c * Math.sqrt(1 - (t=t/d-1)*t) + b;
        },
    });
    
    const EASE_LINEAR = 'linear';
    const EASE_OUT = 'easeOutCirc';
    const ALL_EASE_FCS = [EASE_LINEAR, EASE_OUT];
    
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
                var duration = parseInt(element.data('duration'));
                var easing = element.data('easing');
    
                if (!ALL_EASE_FCS.includes(easing)) {
                  apex.debug.warn(`[Responsive Number Counting]: Unknown easing function "${easing}". Fallback to linear...`);
                  easing = EASE_LINEAR;
                };
    
                var html = element.html();
                element.addClass("ms-animated");
                $({countNum: element.html()}).animate(
                    {countNum: maxval}, 
                    {
                        duration: duration ?? 5000,
                        easing: easing,
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