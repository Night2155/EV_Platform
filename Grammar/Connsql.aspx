<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Connsql.aspx.cs" Inherits="Grammar.Connsql" %>
<!DOCTYPE html>
<html lang="zh-tw">
    <head>
        <script src="js/jquery.min.js"></script>
        </head>
    <body>
        <button onclick="AskVideo()">Click !! </button>
        <script>
            function AskVideo()
            {
                $.ajax({
                    url: "TestDataBase.aspx",
                    type: "POST",
                    dataType: 'JSON',
                    success: function (data) {
                        alert("連接資料庫成功!!");
                        console.log(data);
                    },
                    error: function (err) {
                        alert("連接資料庫失敗!!");
                    }
                });
            }
        </script>
         
        
    </body>
    </html>