<%@ Page Title="" Language="C#" MasterPageFile="~/WebMusic.Master" AutoEventWireup="true" CodeBehind="ChiTietCD.aspx.cs" Inherits="GOODMUSIC.Use.ChiTietCD" %>
<%@ Register src="../UseControl/ChiTietCD.ascx" tagname="ChiTietCD" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ChiTietCD ID="ChiTietCD1" runat="server" />
</asp:Content>
