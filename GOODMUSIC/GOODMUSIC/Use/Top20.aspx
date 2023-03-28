<%@ Page Title="" Language="C#" MasterPageFile="~/WebMusic.Master" AutoEventWireup="true" CodeBehind="Top20.aspx.cs" Inherits="GOODMUSIC.Use.Top20" %>
<%@ Register src="../UseControl/Top20.ascx" tagname="Top20" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Top20 ID="Top201" runat="server" />
</asp:Content>
