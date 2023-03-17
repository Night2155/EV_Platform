<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Grammar.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <div id="background_div" style="display: none;">
        <div id="Block_div">
            <button id="cancel_script" onclick="close_script()" style="opacity: 1;">Cancel</button>
        </div>
    </div>
    
    <button id="Grammar01" onclick="openscript()">Click</button>
</body>
    <script>
        function openscript() {
            //alert("Button");
            var block = document.getElementById("Block_div");
            block.style.backgroundColor = "black";
            block.style.position = "absolute";
            block.style.opacity = "0.6";
            block.style.top = "0px";
            block.style.bottom = "0px";
            block.style.left = "0px";
            block.style.right = "0px";
            var bd = document.getElementById("background_div");
            bd.style.display = "block";
        }
        function close_script() {
            var bd = document.getElementById("background_div");
            bd.style.display = "none";
        }
    </script>
</html>
