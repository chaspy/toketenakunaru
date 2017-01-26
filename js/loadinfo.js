$(function(){
  $("#header").load("header.html");
  $("#footer").load("footer.html");
  $("#menu").load("menu.html");
  $("#info").load("info.html");

  // load information path
  var num = arr;// defined at displayinfo.js
  jQuery.each(num,function() {
    var path = 'info/'+ this + '.html';
    $("#" + this).load(path);
  });
})
