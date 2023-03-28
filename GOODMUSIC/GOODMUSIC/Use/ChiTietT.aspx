<%@ Page Title="" Language="C#" MasterPageFile="~/WebMusic.Master" AutoEventWireup="true" CodeBehind="ChiTietT.aspx.cs" Inherits="GOODMUSIC.Use.ChiTietT" %>
<%@ Register src="../UseControl/ChiTietT.ascx" tagname="ChiTietT" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ChiTietT ID="ChiTietT1" runat="server" />
</asp:Content>
