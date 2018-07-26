$(window).bind("load", function(){
    if(document.URL.match("addictions/" + "[0-9０-９]")) {
      $(function() {
          //スクロールスパイ
          $("#header_show li a").click(function(){
            var speed = 500;
            var href = $(this).attr("href");
            console.log(href);
            var target = $(href == "#" || href == "" ? 'html' : href);
            var position = target.offset().top - 115;
            console.log(position);
            $('html,body').animate({scrollTop: position}, speed, "swing");
            return false;
          });
      });
    };
});
