<%@ Page Title="" Language="C#" MasterPageFile="~/WebMusic.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="GOODMUSIC.Use.WebForm1" %>
<%@ Register src="../UseControl/TrangChu.ascx" tagname="TrangChu" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:TrangChu ID="TrangChu1" runat="server" />
</asp:Content>
