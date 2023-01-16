(function($) {
    $(document).ready(function() {
        var $chatbox = $('.chatbox'),
            // $chatboxTitle = $('.chatbox__title');
            $chatbubble = $('.chatbubble'),
            $chatbox_close = $('.chatbox__title__close');
        $chatbubble.on('click', function() {
            $chatbox.toggleClass('chatbox--tray');
            $chatbubble.hide();
        });

        $chatbox_close.on('click', function() {
            $chatbox.toggleClass('chatbox--tray');
            $chatbubble.delay('fast').fadeIn();
        })
    });
    
})(jQuery);