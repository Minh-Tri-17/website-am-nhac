<%@ Page Title="" Language="C#" MasterPageFile="~/WebMusic.Master" AutoEventWireup="true" CodeBehind="ShowMv.aspx.cs" Inherits="GOODMUSIC.Use.ShowMv" %>
<%@ Register src="../UseControl/ShowMv.ascx" tagname="ShowMv" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ShowMv ID="ShowMv1" runat="server" />
</asp:Content>
