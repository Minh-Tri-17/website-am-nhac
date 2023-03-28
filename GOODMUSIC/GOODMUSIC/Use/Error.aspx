<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="GOODMUSIC.Error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Good Music - Music of life</title>
    <style>
        body{
            background-color:#663399;
        }
        .div1 p{
            color:#CC33FF;
            font-size:35px;
            text-align:center;
        }
        .div2 p{
            color:#CC33FF;
            font-size:60px;
            text-align:center;
        }
        a{
            color:#CC33FF;
            font-size:35px;            
        }
        a:hover{
            font-size:40px;
            color:#d431b8;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="div1">
            <p>Trang wed đang gặp lỗi vui lòng liên hệ với quản trị viên</p>
            <p>Bấm<a href="TrangChu.aspx"> vào đây </a>để quay lại trang chủ</p>
        </div>
        <div class="div2">
            <br />
            <p>NOT FOUND FILE</p>
            <p>404</p>
        </div>
    </form>
</body>
</html>
