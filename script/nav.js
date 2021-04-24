$(function() {
    $('#main').click(function(){
      $('.submenu').slideToggle();
	  $('.submenu2').slideUp();
	  $('.submenu3').slideUp();
    });
});
$(function() {
    $('#main2').click(function(){
      $('.submenu2').slideToggle();
	  $('.submenu').slideUp();
	  $('.submenu3').slideUp();
    });
});
