<%@ Page Title="" Language="C#" MasterPageFile="~/WebMusic.Master" AutoEventWireup="true" CodeBehind="ChuDe.aspx.cs" Inherits="GOODMUSIC.Use.ChuDe" %>
<%@ Register src="../UseControl/ChuDe.ascx" tagname="ChuDe" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ChuDe ID="ChuDe1" runat="server" />
</asp:Content>
