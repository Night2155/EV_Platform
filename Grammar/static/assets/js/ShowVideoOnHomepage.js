$(function () {
    Get_Data("Grammar_Table","Grammar_List")
    Get_Data("Reading_Table","Reading_List")
    Get_Data("Writing_Table","Writing_List")
});
function Get_Data(data,data_List){
    $.ajax({
        url: "Connsql_HomePage",
        cache: false,
        data: {
            "keyword": data
        },
  type: "POST",
  dataType: 'JSON',
  success: function (data) {
    // alert("SUCCESS!!!");
    console.log(data);
    $(document.getElementById(data_List)).html('');
    var top = '<div class="item"> <div class="row">';
    var end = '</div> </div>';
    var content = '<div class="col-lg-12"> <div class="listing-item">'
    var Page1,Page2,Page3
    Page1 = Pages(data,end,content, Page1,0,6)
    Page2 = Pages(data,end,content, Page2,6,13)
    Page3 = Pages(data,end,content, Page3,13,18)
    var result1 = top + Page1 + end
    var result2 = top + Page2 + end
    var result3 = top + Page3 + end
    var result = result1 + result2 + result3
    $(document.getElementById(data_List)).append(result);
  },
  error: function () {
      // alert("ERROR!!!");
      console.log(data_List);
    console.log("傳遞資料錯誤");
  },
});
}
function Pages(Jdata,end,content,Pages,x,y){
  for (var i = x; i < y; i++) {
      var video_image =
          '<a href="https://www.youtube.com/watch?v=' +
          Jdata[i].VideoID +
          '" target = "_blank">' +
          '<img src="https://img.youtube.com/vi/'+
          Jdata[i].VideoID +
          '/mqdefault.jpg" style = "display:block; width:450px; height:250px;" />' +
          '</a>';
      var video_content =
          '<div class="right-content align-self-center">' +
          '<a href="https://www.youtube.com/watch?v='+
          Jdata[i].VideoID + '"target = "_blank">' +
          '<h5>'+
          Jdata[i].Video_Title +
          '</h5></a>'+
          '<span class="details">' +
          'Keywords: ' +
          '<em>' +
          Jdata[i].keywords +
          '</em></span></div>';

      if (i == 0 || i == 6 || i == 13){
        Pages = content + video_image + video_content + end
      }
      else {
        Pages = Pages + content + video_image + video_content + end
      }
    }
  return Pages
}
