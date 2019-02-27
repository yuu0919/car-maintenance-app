$(document).on("turbolinks:load", function(){
  $(function(){
    var nav = $(".content__nav--list");
    var list = $(".pulldown");
    $(nav).mouseover(function(){
      $(this).children('ul').show();
    })
    $(nav).mouseout(function(){
      $(list).hide();
    })
  });
});
