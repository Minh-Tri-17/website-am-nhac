<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChiTietMv.ascx.cs" Inherits="GOODMUSIC.UseControl.ChiTietMv" %>
<nav>
    <img class="img" src="/images/background5.jpg" alt="background" width="970" height="250" />
</nav>
<!--article-->
<article>
    <h2>MV</h2>    
    <video controls width="1000px" height="700px"><source src='<%="\\LinkMV\\" + infoMv.LINK %>'/></video>   
</article>