$(document).on("turbolinks:load", function(){
    if(document.URL.match("addictions/" + "[0-9０-９]")) {
      $(function() {
          //スクロールスパイ
          $("#header_show li a").click(function(){
            var speed = 500;
            var href = $(this).attr("href");
            var target = $(href == "#" || href == "" ? 'html' : href);
            var position = target.offset().top - 120;
            $('html,body').animate({scrollTop: position}, speed, "swing");
            return false;
          });
          // もっとみるボタン文字変更
          $('.seemore').on("click", function(){
            $trriger   = $('#trriger-text');
            if ($trriger.hasClass('seemore-text')){
                $trriger.removeClass('seemore-text').addClass('close-text');
                $trriger.text('とじる');
            } else if ($trriger.hasClass('close-text')){
                $trriger.removeClass('close-text').addClass('seemore-text');
                $trriger.text('もっとみる');
            }
          });
      });
    };
});
