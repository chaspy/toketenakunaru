// get early 3 file from info file list.
var arr = [];
$.ajax({
  url: 'infolist',
  async:false, //wait to finish ajax connection
  success: function(data){
    arr = data.split(/\r\n|\r|\n/);
    arr.pop(); //delete end value
    var infotag = ""
    $.each(arr,function(i,value){
      infotag += "<section class='sec'><div id=\'" + value + "\'></div></section>";
    });
    var elem = document.getElementById("infomation");
    elem.innerHTML = infotag
  }
});
