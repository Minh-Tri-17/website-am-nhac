<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ShowMv.ascx.cs" Inherits="GOODMUSIC.UseControl.ShowMv" %>
<nav>
    <img class="img" src="/images/background5.jpg" alt="background" width="970" height="250" />
</nav>
<!--article-->
<article>
    <h2>MV</h2>      
    <%foreach (var item in listMV){ %>
    <a href='<%="ChiTietMv.aspx?idMv=" +item.IDMV  %>'>
        <img class="imagesMV" src='<%="\\imagesBH_MV\\imagesMV\\" + item.ANH %>' /></a>
    <%} %>        
</article>
