<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChiTietCD.ascx.cs" Inherits="GOODMUSIC.UseControl.ChiTietCD" %>
<!--nav-->
<nav>
    <img class="img" src="/images/background4.jpg" alt="background" width="970" height="250" />
</nav>
<!--article-->
<article>
    <h2>Chủ Đề</h2>
    <%for (int i = 0; i < listBH.Count(); i++)
        { %>
    <div style="margin-left: 230px">
        <div>
            <img class="imagesBH" style="width: 8%; margin-right: 60px" 
                src='<%="\\imagesBH_MV\\imagesBH\\" + listBH[i].ANH %>' />
            <p class="info"><%=listBH[i].TENBH + " _ " + listBH[i].CASI %></p>
        </div>
        <audio controls style="width: 600px; height: 40px">
            <source src='<%="\\LinkMP3\\NhacTre\\" + listBH[i].LINK %>' />
            <source src='<%="\\LinkMP3\\NhacEDM\\" + listBH[i].LINK %>' />
            <source src='<%="\\LinkMP3\\NhacNgoai\\" + listBH[i].LINK %>' />
            <source src='<%="\\LinkMP3\\NhacRap\\" + listBH[i].LINK %>' /></audio>
    </div>
    <%} %>
</article>
