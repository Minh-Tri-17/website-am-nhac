<%@ Page Title="" Language="C#" MasterPageFile="~/WebMusic.Master" AutoEventWireup="true" CodeBehind="ChiTietMv.aspx.cs" Inherits="GOODMUSIC.Use.ChiTietMv" %>
<%@ Register src="../UseControl/ChiTietMv.ascx" tagname="ChiTietMv" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ChiTietMv ID="ChiTietMv1" runat="server" />
</asp:Content>
