<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Connsql_For_EV_AllVideo.aspx.cs" Inherits="Grammar.Connsql" %>
<script>
//function AskVideo()
//{
    $.ajax({
        url: "TestDataBase.aspx",
        type: "POST",
        dataType: 'JSON',
        success: function (data) {
            // alert("連接資料庫成功!!");
            console.log(data)
            console.log(data[0]["VideoID"])
            console.log(data[0]["Video_Title"])
            console.log(data[0]["keywords"])
        },
        error: function (err) {
            alert("連接資料庫失敗!!");
        }
    });
//}
</script>