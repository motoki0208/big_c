$(window).bind("load", function(){
    if(document.URL.match("stars/" + "[0-9０-９]")) {

      $(function() {
          //スクロールスパイ
          $("#header_show a").click(function(){
            var id = $(this).attr("href");
            var position = $(id).get( 0 ).offsetTop - 70
            $('.contents').animate({scrollTop: position}, 500)
          });
      });
    };
});
