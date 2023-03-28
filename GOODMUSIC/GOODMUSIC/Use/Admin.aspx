<%@ Page Title="" Language="C#" MasterPageFile="~/WebMusic.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="GOODMUSIC.Use.Admin" %>
<%@ Register src="../UseControl/Admin.ascx" tagname="Admin" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <uc1:Admin ID="Admin1" runat="server" />
    
</asp:Content>
