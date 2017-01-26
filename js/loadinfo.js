$(function(){
  $("#header").load("header.html");
  $("#footer").load("footer.html");
  $("#menu").load("menu.html");
  $("#info").load("info.html");

  // load information path
  var num = ["161203","161204","161231","170110","170122","170125"];
  jQuery.each(num,function() {
    var path = 'info/'+ this + '.html';
    $("#" + this).load(path);
  });
})
