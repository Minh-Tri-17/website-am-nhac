<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Admin.ascx.cs" Inherits="GOODMUSIC.UseControl.Admin" %>
<%--Nhạc --%>
<p class="Admin_TD"> --> Cập nhập thông tin nhạc mới <--</p>
<div style="margin-left:50px">
    <p class="Admin">ID Ca si mới:</p>
    <asp:TextBox ID="TxtIDCS1" runat="server" Width="300px" Style="margin-top:10px; margin-left:50px"></asp:TextBox>
</div>
<div style="margin-left:50px">
    <p class="Admin">Tên nhạc mới:</p>
    <asp:TextBox ID="TxtTN1" runat="server" Width="300px" Style="margin-top:10px; margin-left:47px"></asp:TextBox>
</div>
<div style="margin-left:50px">
    <p class="Admin">Tên ca sĩ mới:</p>
    <asp:TextBox ID="TxtTCS1" runat="server" Width="300px" Style="margin-top:10px; margin-left:48px"></asp:TextBox>
</div>
<div style="margin-left:50px">
    <p class="Admin">Link nhạc mới:</p>
    <asp:FileUpload ID="FULNhac1" runat="server" Width="300px" Style="margin-top:10px; margin-left:43px" /><br />
</div>
<div style="margin-left:50px">
    <p class="Admin">Link ảnh nhạc mới:</p>
    <asp:FileUpload ID="FULAN1" runat="server" Width="300px" Style="margin-top:10px; margin-left:19px" /><br />
</div>
<br />
<%--MV--%>
<p class="Admin_TD"> --> Cập nhập thông tin mv mới <--</p>
<div style="margin-left:50px">
    <p class="Admin">ID Ca si mới:</p>
    <asp:TextBox ID="TxtIDCSM2" runat="server" Width="300px" Style="margin-top:10px; margin-left:50px"></asp:TextBox>
</div>
<div style="margin-left:50px">
    <p class="Admin">Tên MV mới:</p>
    <asp:TextBox ID="TxtTMV2" runat="server" Width="300px" Style="margin-top:10px; margin-left:50px"></asp:TextBox>
</div>
<div style="margin-left:50px">
    <p class="Admin">Ten Ca si mới:</p>
    <asp:TextBox ID="TxtTCSM2" runat="server" Width="300px" Style="margin-top:10px; margin-left:43px"></asp:TextBox>
</div>
<div style="margin-left:50px">
    <p class="Admin">Ngày cập nhật:</p>
    <asp:TextBox ID="TxtNCN2" runat="server" Width="300px" Style="margin-top:10px; margin-left:40px"></asp:TextBox>
</div>
<div style="margin-left:50px">
    <p class="Admin">Link Mv mới:</p>
    <asp:FileUpload ID="FULMv2" runat="server" Width="300px" Style="margin-top:10px;; margin-left:50px" /><br />
</div>
<div style="margin-left:50px">
    <p class="Admin">Link ảnh Mv mới:</p>
    <asp:FileUpload ID="FULAM2" runat="server" Width="300px" Style="margin-top:10px;; margin-left:26px" /><br />
</div>
<br />
<%--Chủ đề--%>
<p class="Admin_TD"> --> Cập nhập thông tin chủ đề mới <--</p>
<div style="margin-left:50px">
    <p class="Admin">Ảnh chủ đề mới:</p>
    <asp:FileUpload ID="FULChuDe3" runat="server" Width="300px" Style="color: #CC00FF; margin-top:10px;; margin-left:10px" /><br />
</div>
<div style="margin-left:50px">
    <p class="Admin">Tên chủ đề mới:</p>
    <asp:TextBox ID="TxtTCD3" runat="server" Width="300px" Style="margin-top:10px; margin-left:17px"></asp:TextBox>
</div>
<br />
<%--Top--%>
<p class="Admin_TD"> --> Cập nhập thông tin top 20 mới <--</p>
<div style="margin-left:50px">
    <p class="Admin">Ảnh top mới:</p>
    <asp:FileUpload ID="FULTop4" runat="server" Width="300px" Style="color: #CC00FF; margin-top:10px;; margin-left:30px" /><br />
</div>
<div style="margin-left:50px">
    <p class="Admin">Tên top mới:</p>
    <asp:TextBox ID="TxtTT4" runat="server" Width="300px" Style="margin-top:10px; margin-left:33px"></asp:TextBox>
</div>
<br />
<asp:Button ID="btnG" runat="server" Text="Xác nhận" style="margin-left:157px" OnClick="btnG_Click" Height="32px" Width="107px"/>

