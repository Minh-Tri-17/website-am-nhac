<%@ Page Title="" Language="C#" MasterPageFile="~/WebMusic.Master" AutoEventWireup="true" CodeBehind="NhacMoi.aspx.cs" Inherits="GOODMUSIC.Use.NhacMoi" %>
<%@ Register src="../UseControl/NhacMoi.ascx" tagname="NhacMoi" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:NhacMoi ID="NhacMoi1" runat="server" />
</asp:Content>
